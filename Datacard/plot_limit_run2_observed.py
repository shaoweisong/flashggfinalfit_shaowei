
import ROOT
from ROOT import TFile, TTree, TCanvas, TGraph, TMultiGraph, TGraphErrors, TLegend, kBlack, TLatex, gPad, TH1F, TGraphAsymmErrors
import CMS_lumi, tdrstyle
import subprocess
from array import array
import sys
import glob
import re
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-AC","--atlas_compare", action="store_true", default=False, help="Display limits in way to compare to ATLAS HHWWgg limits", required=False)
parser.add_argument("-CMSC","--CMS_compare", action="store_true", default=False, help="Display limits in way to compare to CMS HH limits", required=False)
parser.add_argument("-a","--All_Points", action="store_true", default=False, help="Display limits for all mass points produced", required=False)
parser.add_argument("-r","--Ratio", action="store_true", default=False, help="Plot Ratio of two limits.", required=False)
parser.add_argument("-SM","--SM_Point",action="store_true", default=False, help="Display SM limits", required=False)
parser.add_argument("-s","--systematics",action="store_true", default=False, help="Display SM limits", required=False)
parser.add_argument("-l","--HHWWggCatLabel",type=str, default="UnLabeled", help="Category Label to find files", required=False)
parser.add_argument("-sl","--SecondHHWWggCatLabel",type=str, default="SecondUnLabeled", help="Category Label to find second set of files.", required=False)
parser.add_argument("-g","--Grid",action="store_true", default=False, help="Plot grid of limits", required=False)
parser.add_argument("-gl", "--GridLabels", type=str, nargs='+',default="", help="Labels to add to grid", required=False)
parser.add_argument("--campaign",type=str, default="", help="Campaign name used to find limit root files", required=False)
parser.add_argument("--resultType",type=str, default="", help="Result type to choose which BR's to apply", required=True)
parser.add_argument("--unit",type=str, default="", help="Result unit: fb or pb", required=True)
parser.add_argument("--ymin",type=float, default=0, help="Y minimum", required=True)
parser.add_argument("--ymax",type=float, default=0, help="Y maximum", required=True)
parser.add_argument("--yboost",type=float, default=0, help="Y boost of legend. Ex: -0.2, 0.090", required=True)
parser.add_argument("--EFT",action="store_true", default=False, help="EFT results", required=False)
parser.add_argument("--NMSSM",action="store_true", default=False, help="NMSSM results", required=False)
parser.add_argument("--lumiRescale",type=str, default="", help="Rescale limit by luminosity", required=False)
parser.add_argument("--year",type=str, default="", help="Year. 2016, 2017, 2016post or Run2", required=True)
parser.add_argument("--campaignOne",type=str, default="UnLabeled", help="Campaign of first limits in ratio", required=False)
parser.add_argument("--campaignTwo",type=str, default="UnLabeled", help="Campaign of second limits in ratio", required=False)

args = parser.parse_args()
ol = '/eos/user/t/ticao/CMSSW_14_1_0_pre4/src/flashggFinalFit/Plots/output_run2_observed'

def getLimits(file_name, log_file):
    try:
        file = ROOT.TFile.Open(file_name)
        if not file or file.IsZombie():
            msg = f"[Error] Cannot open file: {file_name}"
            print(msg)
            log_file.write(msg + "\n")
            return None

        tree = file.Get("limit")
        if not tree or not tree.InheritsFrom("TTree"):
            msg = f"[Error] 'limit' is not a valid TTree in file: {file_name}"
            print(msg)
            log_file.write(msg + "\n")
            return None

        # 单位换算：fb 原样；pb → /1000；SM_Point 也原样
        def scale(val):
            if args.unit == "pb":
                return val / 1000.0
            else:
                return val

        # 容忍浮点误差
        def isclose(a, b, tol=1e-6):
            return abs(a - b) <= tol

        limits = {}
        for entry in tree:
            # 某些 ROOT 版本上名字就是 quantileExpected
            q = getattr(entry, "quantileExpected", None)
            val = scale(entry.limit)

            if q is None:
                # 如果真的拿不到 quantileExpected，就放弃用该条（极少见）
                continue

            if isclose(q, -1.0):
                limits["obs"] = val
            elif isclose(q, 0.025):
                limits["-2sigma"] = val
            elif isclose(q, 0.16):
                limits["-1sigma"] = val
            elif isclose(q, 0.5):
                limits["median"] = val
            elif isclose(q, 0.84):
                limits["+1sigma"] = val
            elif isclose(q, 0.975):
                limits["+2sigma"] = val
            else:
                # 其他分位点（如果有的话）忽略
                pass

        file.Close()

        # 至少要有 5 个期望值（±1σ、±2σ、median）才算有效；observed 可选
        needed = {"median", "-1sigma", "+1sigma", "-2sigma", "+2sigma"}
        if not needed.issubset(limits.keys()):
            msg = f"[Error] Missing expected quantiles in file: {file_name}. Found keys: {sorted(limits.keys())}"
            print(msg)
            log_file.write(msg + "\n")
            return None

        return limits

    except Exception as e:
        msg = f"[Error] Failed to process file: {file_name}, Exception: {str(e)}"
        print(msg)
        log_file.write(msg + "\n")
        return None


def plotUpperLimits(labels, values, resultType):
    with open("limit_plot_errors.txt", "a") as log_file:
        N = len(labels)
        yellow = ROOT.TGraph(2 * N)   # ±2σ band (封闭多边形：先画上边，再反向画下边)
        green  = ROOT.TGraph(2 * N)   # ±1σ band
        median = ROOT.TGraph(N)       # 中位数
        observed = ROOT.TGraph(N)     # 观测值（可选）
        has_any_obs = False

        year = args.year
        valid_points = 0

        for i in range(N):
            file_name = f"/afs/cern.ch/user/c/chuw/chuw/bbgg/CMSSW_14_1_0_pre4/src/flashggFinalFit/Plots/stage3/higgsCombine{labels[i]}.AsymptoticLimits.mH125.38.root"
            msg = f"Processing file: {file_name}"
            print(msg)
            log_file.write(msg + "\n")

            limits = getLimits(file_name, log_file)
            print(limits)

            if limits is None:
                msg = f"[Warning] Skipping invalid or incomplete limits for file: {file_name}"
                print(msg)
                log_file.write(msg + "\n")
                continue

            # 你原来的各种因子，这里保持一致（可以根据 resultType 调整）
            campaignBRdict = {
                "HHWWgg_v2-3": 3.4916,
                "HHWWgg_v2-7": 2.3079,
                "HHWWgg_v3": 1,
            }
            HHWWgg_qqqq_factor = 1
            HHWWgg_WWgg_factor = 1030.7153
            lumiRescaledict = {"default": 1, "2017_2016": 107517.}
            HHWWgg_lumiRescaleFactor = lumiRescaledict['default']
            HHWWgg_factor = HHWWgg_qqqq_factor * HHWWgg_lumiRescaleFactor if resultType == "bbgg" else 1

            x = values[i]

            # 上半边 (+2σ, +1σ, median)
            yellow.SetPoint(valid_points, x, limits["+2sigma"] * HHWWgg_factor)
            green.SetPoint(valid_points,  x, limits["+1sigma"] * HHWWgg_factor)
            median.SetPoint(valid_points, x, limits["median"]  * HHWWgg_factor)

            # 下半边按反向顺序回去 (-1σ, -2σ)
            green.SetPoint(2 * N - 1 - valid_points,  x, limits["-1sigma"] * HHWWgg_factor)
            yellow.SetPoint(2 * N - 1 - valid_points, x, limits["-2sigma"] * HHWWgg_factor)

            # 观测值（可选）
            if "obs" in limits:
                observed.SetPoint(valid_points, x, limits["obs"] * HHWWgg_factor)
                has_any_obs = True

            valid_points += 1

        if valid_points == 0:
            msg = "[Error] No valid limit files found. Cannot plot."
            print(msg)
            log_file.write(msg + "\n")
            return

        if valid_points < N:
            msg = f"[Info] Only {valid_points} valid points found out of {N}. Resizing graphs."
            print(msg)
            log_file.write(msg + "\n")
            yellow.Set(2 * valid_points)
            green.Set(2 * valid_points)
            median.Set(valid_points)
            if has_any_obs:
                observed.Set(valid_points)

        # 画布 & 坐标轴
        W, H = 800, 600
        T, B, L, R = 0.08*H, 0.12*H, 0.12*W, 0.04*W
        c = ROOT.TCanvas("c", "c", 100, 100, W, H)
        c.SetFillColor(0)
        c.SetBorderMode(0)
        c.SetFrameFillStyle(0)
        c.SetFrameBorderMode(0)
        c.SetLeftMargin(L/W)
        c.SetRightMargin(R/W)
        c.SetTopMargin(T/H)
        c.SetBottomMargin(B/H)
        c.SetTickx(0)
        c.SetTicky(0)
        c.SetGrid()
        c.SetLogy()

        frame = c.DrawFrame(1.4, 0.001, 4.1, 10)
        frame.GetYaxis().CenterTitle()
        frame.GetYaxis().SetTitleSize(0.05)
        frame.GetXaxis().SetTitleSize(0.05)
        frame.GetXaxis().SetLabelSize(0.04)
        frame.GetYaxis().SetLabelSize(0.04)
        frame.GetYaxis().SetTitleOffset(0.9)
        frame.GetXaxis().SetNdivisions(508)
        frame.GetYaxis().CenterTitle(True)

        if args.unit == "pb":
            frame.GetYaxis().SetTitle("95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH#rightarrow bb#gamma#gamma) [pb]" if resultType == "bbgg" else "95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH) [pb]")
        elif args.unit == "fb":
            frame.GetYaxis().SetTitle("95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HY#rightarrow bb#gamma#gamma) [fb]" if resultType == "bbgg" else "95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HY) [fb]")

        if resultType == "bbgg":
            frame.GetYaxis().SetTitleSize(0.04)
            frame.GetYaxis().SetTitleOffset(1.3)

        frame.GetXaxis().SetTitle("Mass (GeV)" if not args.SM_Point else "Standard Model")
        frame.SetMinimum(args.ymin)
        frame.SetMaximum(args.ymax)
        frame.GetXaxis().SetLimits(min(values), max(values))

        # Bands & lines
        yellow.SetFillColor(ROOT.kOrange)
        yellow.SetLineColor(ROOT.kOrange)
        yellow.SetFillStyle(1001)
        yellow.Draw('F')

        green.SetFillColor(ROOT.kGreen + 1)
        green.SetLineColor(ROOT.kGreen + 1)
        green.SetFillStyle(1001)
        green.Draw('Fsame')

        median.SetLineColor(1)
        median.SetLineWidth(2)
        median.SetLineStyle(2)
        median.SetMarkerStyle(1)
        median.Draw('PLsame')

        if has_any_obs:
            observed.SetLineColor(ROOT.kBlack)
            observed.SetLineWidth(2)
            observed.SetMarkerStyle(20)
            observed.Draw('PLsame')

        CMS_lumi.CMS_lumi(c, 4, 11)
        ROOT.gPad.SetTicks(1, 1)
        frame.Draw('sameaxis')

        # Legend
        Mx = labels[0].split('_')[0]
        yboost = args.yboost
        x1, x2 = 0.15, 0.39
        y2, y1 = 0.76 + yboost, 0.60 + yboost
        legend = ROOT.TLegend(x1, y1, x2, y2)
        legend.SetFillStyle(0)
        legend.SetBorderSize(0)
        legend.SetTextSize(0.041)
        legend.SetTextFont(42)
        legend.AddEntry(0, f"X = {Mx} GeV", "")
        legend.AddEntry(median, "AsymptoticLimits CL_{s} expected", 'L')
        legend.AddEntry(green, "#pm 1 std. deviation", 'f')
        legend.AddEntry(yellow, "#pm 2 std. deviation", 'f')
        if has_any_obs:
            legend.AddEntry(observed, "Observed", 'PL')
        legend.Draw()

        # 输出文件名保持你原来的规则
        outFile = f"{ol}/"
        if args.CMS_compare:
            outFile += "CMS_Compare_"
        if args.All_Points:
            outFile += "All_Points_"
        if args.atlas_compare:
            outFile += "atlas_Compare_"
        if args.SM_Point:
            outFile += "SM_"
        outFile += f"{args.HHWWggCatLabel}_"

        Mx = labels[0].split('_')[0]

        c.SaveAs(f"{outFile}_{args.lumiRescale}_{resultType}_{Mx}_UpperLimit.pdf")
        c.SaveAs(f"{outFile}_{args.lumiRescale}_{resultType}_{Mx}_UpperLimit.png")
        c.SaveAs(f"{outFile}_{args.lumiRescale}_{resultType}_{Mx}_UpperLimit.C")
        c.Close()

def getMXMY(filename):
    mx_my = re.search("data_(\d+)", filename)
    return int(mx_my.group(1)) if mx_my else None



def main():
    # labels = ['M1000','M1200','M1400','M1600','M1800','M2000','M2200','M2400','M2500','M2600','M2800','M3000']
    # values = [1000,1200,1400,1600,1800,2000,2200,2400,2500,2600,2800,3000]
    # labels = ['M1000','M1500','M2000','M2500','M3000']
    # values = [1000,1500,2000,2500,3000]
    # labels = ['combine_M80','combine_M100','combine_M125','combine_M150','combine_M170','combine_M190','combine_M250','combine_M300','combine_M350','combine_M400','combine_M450','combine_M500','combine_M550','combine_M700']
    # values = [80,100,125,150,170,190,250,300,350,400,450,500,550,700]
    # labels = ['M550']
    # 'M150','M250','M300','M400','M500','
    # values = [550]
    # 150,250,300,400,500,

    # labels = ['1000_100', '1000_125', '1000_150', '1000_170', '1000_190', '1000_250', '1000_300', '1000_350', '1000_400', '1000_450', '1000_500', '1000_550', '1000_60', '1000_650', '1000_70', '1000_700', '1000_80', '1000_800', '1000_90', 
    #     '1200_100', '1200_1000', '1200_125', '1200_150', '1200_170', '1200_190', '1200_250', '1200_300', '1200_350', '1200_450', '1200_500', '1200_550', '1200_60', '1200_600', '1200_650', '1200_70', '1200_700', '1200_800', '1200_90', '1200_900', 
    #     '1400_100', '1400_1000', '1400_1100', '1400_1200', '1400_125', '1400_150', '1400_170', '1400_190', '1400_250', '1400_300', '1400_350', '1400_400', '1400_450', '1400_500', '1400_550', '1400_60', '1400_600', '1400_650', '1400_70', '1400_700', '1400_80', '1400_800', '1400_90', '1400_900', 
    #     '1600_100', '1600_1000', '1600_1100', '1600_1200', '1600_125', '1600_1300', '1600_1400', '1600_150', '1600_170', '1600_190', '1600_250', '1600_300', '1600_350', '1600_400', '1600_450', '1600_500', '1600_550', '1600_60', '1600_600', '1600_650', '1600_70', '1600_700', '1600_80', '1600_800', '1600_90', '1600_900', 
    #     '1800_100', '1800_1000', '1800_1100', '1800_1200', '1800_125', '1800_1300', '1800_1400', '1800_150', '1800_1600', '1800_170', '1800_190', '1800_250', '1800_300', '1800_350', '1800_400', '1800_450', '1800_500', '1800_550', '1800_60', '1800_600', '1800_650', '1800_70', '1800_700', '1800_80', '1800_800', '1800_90', '1800_900', 
    #     '2000_100', '2000_1000', '2000_1100', '2000_1200', '2000_125', '2000_1300', '2000_1400', '2000_150', '2000_1600', '2000_170', '2000_1800', '2000_190', '2000_250', '2000_300', '2000_350', '2000_400', '2000_450', '2000_500', '2000_550', '2000_60', '2000_600', '2000_650', '2000_70', '2000_700', '2000_80', '2000_800', '2000_90', '2000_900', 
    #     '2200_100', '2200_1000', '2200_1100', '2200_1200', '2200_125', '2200_1300', '2200_1400', '2200_150', '2200_1600', '2200_170', '2200_1800', '2200_190', '2200_2000', '2200_250', '2200_300', '2200_350', '2200_400', '2200_450', '2200_500', '2200_550', '2200_60', '2200_600', '2200_650', '2200_70', '2200_700', '2200_800', '2200_90', '2200_900', 
    #     '2400_100', '2400_1000', '2400_1100', '2400_1200', '2400_125', '2400_1300', '2400_1400', '2400_150', '2400_1600', '2400_170', '2400_1800', '2400_190', '2400_2000', '2400_2200', '2400_250', '2400_300', '2400_350', '2400_400', '2400_450', '2400_500', '2400_550', '2400_60', '2400_600', '2400_650', '2400_700', '2400_80', '2400_90', 
    #     '2500_100', '2500_1000', '2500_1100', '2500_1200', '2500_125', '2500_1300', '2500_1400', '2500_150', '2500_1600', '2500_170', '2500_1800', '2500_190', '2500_2200', '2500_250', '2500_300', '2500_350', '2500_400', '2500_450', '2500_500', '2500_550', '2500_600', '2500_650', '2500_70', '2500_700', '2500_80', '2500_800', '2500_90', '2500_900', 
    #     '2600_100', '2600_1000', '2600_1100', '2600_125', '2600_1300', '2600_1400', '2600_150', '2600_170', '2600_1800', '2600_190', '2600_2000', '2600_2200', '2600_2400', '2600_300', '2600_350', '2600_400', '2600_450', '2600_500', '2600_550', '2600_60', '2600_600', '2600_650', '2600_70', '2600_700', '2600_80', '2600_800', '2600_90', '2600_900', 
    #     '2800_100', '2800_1000', '2800_1100', '2800_1200', '2800_125', '2800_1300', '2800_1400', '2800_150', '2800_1600', '2800_170', '2800_1800', '2800_190', '2800_2000', '2800_2200', '2800_2400', '2800_250', '2800_2600', '2800_300', '2800_350', '2800_400', '2800_450', '2800_500', '2800_550', '2800_60', '2800_600', '2800_650', '2800_70', '2800_700', '2800_80', '2800_800', '2800_90', '2800_900', 
    #     '3000_100', '3000_1000', '3000_1100', '3000_1200', '3000_125', '3000_1300', '3000_1400', '3000_150', '3000_1600', '3000_170', '3000_1800', '3000_190', '3000_2000', '3000_2200', '3000_2400', '3000_250', '3000_2500', '3000_2600', '3000_2800', '3000_300', '3000_350', '3000_400', '3000_450', '3000_500', '3000_550', '3000_60', '3000_600', '3000_650', '3000_70', '3000_700', '3000_80', '3000_800', '3000_90', '3000_900', 
    #     '3500_100', '3500_1000', '3500_1100', '3500_1200', '3500_125', '3500_1300', '3500_1400', '3500_150', '3500_1600', '3500_170', '3500_1800', '3500_190', '3500_2000', '3500_2200', '3500_2400', '3500_250', '3500_2500', '3500_2600', '3500_2800', '3500_300', '3500_350', '3500_450', '3500_500', '3500_550', '3500_600', '3500_650', '3500_70', '3500_700', '3500_80', '3500_800', '3500_90', '3500_900', 
    #     '4000_100', '4000_1000', '4000_1100', '4000_1200', '4000_125', '4000_1300', '4000_1400', '4000_150', '4000_1600', '4000_170', '4000_1800', '4000_190', '4000_2000', '4000_2200', '4000_2400', '4000_250', '4000_2500', '4000_2600', '4000_2800', '4000_300', '4000_350', '4000_400', '4000_450', '4000_500', '4000_550', '4000_60', '4000_600', '4000_650', '4000_70', '4000_700', '4000_80', '4000_800', '4000_90', '4000_900'
    # ]
    # values = [1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 
    #     1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 1200, 
    #     1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 1400, 
    #     1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 
    #     1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 
    #     2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 
    #     2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 2200, 
    #     2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 2400, 
    #     2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 
    #     2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 2600, 
    #     2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 2800, 
    #     3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 
    #     3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 3500, 
    #     4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000, 4000
    # ]

    labels = [
            # '1000_100', '1000_125', '1000_150', '1000_170', '1000_190', '1000_250', '1000_300', '1000_350', '1000_400', '1000_450', '1000_500', '1000_550', '1000_60', '1000_650', '1000_70', '1000_700', '1000_80', '1000_800', '1000_90',
            # '1000_60', '1000_80', '1000_100', '1000_150', '1000_250', '1000_300', '1000_350', '1000_400', '1000_450', '1000_500', '1000_650', '1000_700', '1000_800',  
            #   '1200_100', '1200_1000', '1200_125', '1200_150', '1200_170', '1200_190', '1200_250', '1200_300', '1200_350', '1200_450', '1200_500', '1200_550', '1200_60', '1200_600', '1200_650', '1200_70', '1200_700', '1200_800', '1200_90', '1200_900', 
            #   '1400_100', '1400_1000', '1400_1100', '1400_1200', '1400_125', '1400_150', '1400_170', '1400_190', '1400_250', '1400_400', '1400_450', '1400_500', '1400_550', '1400_60', '1400_600', '1400_650', '1400_70', '1400_700', '1400_80', '1400_800', '1400_90', '1400_900', '1400_300', '1400_350', 
              '1600_100', '1600_1000', '1600_1100', '1600_1200', '1600_125', '1600_1300', '1600_1400', '1600_150', '1600_170', '1600_190', '1600_250', '1600_300', '1600_350', '1600_400', '1600_450', '1600_500', '1600_550', '1600_60', '1600_600', '1600_650', '1600_70', '1600_700', '1600_80', '1600_800', '1600_90', '1600_900', 
            #   '1800_100', '1800_1000', '1800_1100', '1800_1200', '1800_1300', '1800_1400', '1800_150', '1800_1600', '1800_170', '1800_190', '1800_250', '1800_350', '1800_400', '1800_450', '1800_500', '1800_550', '1800_60', '1800_600', '1800_650', '1800_70', '1800_700', '1800_80', '1800_800', '1800_90', '1800_900', '1800_125', '1800_300', 
            #   '2000_100', '2000_1000', '2000_1100', '2000_1200',  '2000_1300', '2000_1400', '2000_150', '2000_1600', '2000_170', '2000_1800',  '2000_250', '2000_300', '2000_350', '2000_400', '2000_450', '2000_500', '2000_550', '2000_60', '2000_600', '2000_650', '2000_70', '2000_700', '2000_80', '2000_800', '2000_90', '2000_900', '2000_125', '2000_190',
            #   '2200_100', '2200_1000', '2200_1100', '2200_1200', '2200_1300', '2200_1400', '2200_150', '2200_1600', '2200_170', '2200_1800', '2200_190', '2200_2000', '2200_250', '2200_300', '2200_350', '2200_400', '2200_450', '2200_500', '2200_550', '2200_60', '2200_600', '2200_650', '2200_70', '2200_700', '2200_800', '2200_90', '2200_900', #'2200_125', 
            #   '2400_100', '2400_1000', '2400_1100', '2400_1200', '2400_125', '2400_1300', '2400_1400', '2400_150', '2400_1600', '2400_170', '2400_1800', '2400_190', '2400_2000', '2400_2200', '2400_250', '2400_300', '2400_350', '2400_400', '2400_450', '2400_500', '2400_550', '2400_60', '2400_600', '2400_650', '2400_700', '2400_80', '2400_90', 
            #   '2500_100', '2500_1000', '2500_1100', '2500_1200', '2500_125', '2500_1300', '2500_1400', '2500_1600', '2500_170', '2500_1800', '2500_2200', '2500_250', '2500_300', '2500_350', '2500_400', '2500_450', '2500_500', '2500_550', '2500_600', '2500_650', '2500_700', '2500_80', '2500_800', '2500_90', '2500_900', '2500_150', '2500_70', '2500_190', 
            #   '2600_100', '2600_1000', '2600_1100', '2600_125', '2600_1300', '2600_1400', '2600_150', '2600_170', '2600_1800', '2600_190', '2600_2000', '2600_2200', '2600_2400', '2600_300', '2600_350', '2600_400', '2600_450', '2600_500', '2600_550', '2600_60', '2600_600', '2600_650', '2600_70', '2600_700', '2600_80', '2600_800', '2600_90', '2600_900', 
            #   '2800_100', '2800_1000', '2800_1100', '2800_1200', '2800_125', '2800_1300', '2800_1400', '2800_150', '2800_1600', '2800_170', '2800_1800', '2800_190', '2800_2000', '2800_2200', '2800_2400', '2800_2600', '2800_300', '2800_350', '2800_400', '2800_450', '2800_500', '2800_550', '2800_60', '2800_600', '2800_650', '2800_70', '2800_700', '2800_80', '2800_800', '2800_90', '2800_900', '2800_250', 
            #   '3000_1000', '3000_1100', '3000_1200', '3000_125', '3000_1300', '3000_1400', '3000_150', '3000_1600', '3000_1800', '3000_190', '3000_2000', '3000_2200', '3000_2400', '3000_250', '3000_2500', '3000_2600', '3000_2800', '3000_300', '3000_350', '3000_400', '3000_450', '3000_500', '3000_550', '3000_60', '3000_600', '3000_650', '3000_700', '3000_80', '3000_800',  '3000_900', '3000_100', '3000_90', '3000_70', '3000_170', 
            #   '3500_100', '3500_1000', '3500_1100', '3500_1200', '3500_125', '3500_1300', '3500_1400', '3500_150', '3500_1600', '3500_170', '3500_1800', '3500_190', '3500_2000', '3500_2200', '3500_2400', '3500_250', '3500_2500', '3500_2600', '3500_2800', '3500_300', '3500_350', '3500_450', '3500_500', '3500_550', '3500_600', '3500_650', '3500_70', '3500_700', '3500_80', '3500_800', '3500_90', '3500_900', 
            #   '4000_100', '4000_1000', '4000_1100', '4000_1200', '4000_125', '4000_1300', '4000_1400', '4000_150', '4000_1600', '4000_170', '4000_1800', '4000_190', '4000_2000', '4000_2200', '4000_2400', '4000_250', '4000_2500', '4000_2600', '4000_2800', '4000_300', '4000_350', '4000_400', '4000_450', '4000_500', '4000_550', '4000_60', '4000_600', '4000_650', '4000_70', '4000_700', '4000_80', '4000_800', '4000_90', '4000_900'
              ]
    
    # Sort labels by mx then my
    # labels.sort(key=lambda x: (int(x.split('_')[1]), int(x.split('_')[2])))
    labels.sort(key=lambda x: (int(x.split('_')[0]), int(x.split('_')[1])))
    
    # Values are now my values (for x-axis limits), extracted from labels
    # values = [int(label.split('_')[2]) for label in labels]
    values = [int(label.split('_')[1]) for label in labels]
    # Validate ROOT files and filter valid points
    valid_labels = []
    valid_values = []
    with open("limit_plot_errors.txt", "w") as log_file:
        for label, value in zip(labels, values):
            file_name = f"/afs/cern.ch/user/c/chuw/chuw/bbgg/CMSSW_14_1_0_pre4/src/flashggFinalFit/Plots/stage3/higgsCombine{label}.AsymptoticLimits.mH125.38.root"
            msg = f"Checking file: {file_name}"
            print(msg)
            log_file.write(msg + "\n")
            
            limit = getLimits(file_name, log_file)
            if limit is None or len(limit) < 5:
                msg = f"[Warning] Invalid or incomplete limits for file: {file_name}. Excluding from plot."
                print(msg)
                log_file.write(msg + "\n")
                continue
            
            valid_labels.append(label)
            valid_values.append(value)
            msg = f"[Info] File valid: {file_name}"
            print(msg)
            log_file.write(msg + "\n")

        if not valid_labels:
            msg = "[Error] No valid ROOT files found. Skipping plot."
            print(msg)
            log_file.write(msg + "\n")
            return

        msg = f"[Info] Found {len(valid_labels)} valid points out of {len(labels)}."
        print(msg)
        log_file.write(msg + "\n")

    resultType = args.resultType
    plotUpperLimits(valid_labels, valid_values, resultType)
if __name__ == '__main__':
    main()

#  'M60','M70','M80','M90',70,80,90,'M150','M170','M190','M250''M300','M350','M400',
