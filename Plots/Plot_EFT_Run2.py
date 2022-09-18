#!/usr/bin/env python
# -*- coding: utf-8 -*-

##############################################################################
# Abraham Tishelman-Charny
# 11 March 2020
#
# The purpose of this python module is to plot limits for the HHWWgg analysis
##############################################################################

# Example usage:
#
# python plot_limits.py -AC # compare to ATLAS 2016 semileptonic result
# python plot_limits.py -CMSC # compare to CMS 2016 results
# python plot_limits.py -SM # standard model point only

import ROOT
from ROOT import TFile, TTree, TCanvas, TGraph, TMultiGraph, TGraphErrors, TLegend, kBlack, TLatex, gPad, TH1F, TGraphAsymmErrors
import CMS_lumi
import tdrstyle
import subprocess  # to execute shell command
from array import array

import argparse

# ol = '/afs/cern.ch/work/a/atishelm/private/ecall1algooptimization/PileupMC_v2/Plot/ntuples/'
#ol = '/eos/user/a/atishelm/www/EcalL1Optimization/BX-1/'
ol = '/eos/user/c/chuw/www/'


parser = argparse.ArgumentParser()
parser.add_argument("-AC", "--atlas_compare", action="store_true", default=False,
                    help="Display limits in way to compare to ATLAS HHWWgg limits", required=False)
parser.add_argument("-CMSC", "--CMS_compare", action="store_true", default=False,
                    help="Display limits in way to compare to CMS HH limits", required=False)
parser.add_argument("-a", "--All_Points", action="store_true", default=False,
                    help="Display limits for all mass points produced", required=False)
parser.add_argument("-r", "--Ratio", action="store_true", default=False,
                    help="Plot Ratio of two limits. For example, with systematics / without systematics.", required=False)
parser.add_argument("-SM", "--SM_Point", action="store_true",
                    default=False, help="Display SM limits", required=False)
parser.add_argument("-s", "--systematics", action="store_true",
                    default=True, help="Display SM limits", required=False)
parser.add_argument("-l", "--HHWWggCatLabel", type=str, default="UnLabeled",
                    help="Category Label to find files", required=False)
parser.add_argument("-sl", "--SecondHHWWggCatLabel", type=str, default="SecondUnLabeled",
                    help="Category Label to find second set of files. Used for ratio plots", required=False)
parser.add_argument("-g", "--Grid", action="store_true",
                    default=False, help="Plot grid of limits", required=False)
parser.add_argument("-gl", "--GridLabels", type=str, nargs='+',
                    default="", help="Labels to add to grid", required=False)
parser.add_argument("--campaign", type=str, default="",
                    help="Campaign name used to find limit root files", required=False)
parser.add_argument("--resultType", type=str, default="",
                    help="Result type to choose which BR's to apply", required=True)  # Ex: WWgg, HH
parser.add_argument("--unit", type=str, default="",
                    help="Result unit: fb or pb", required=True)
parser.add_argument("--ymin", type=float, default=0,
                    help="Y minimum", required=True)
parser.add_argument("--ymax", type=float, default=0,
                    help="Y maximum", required=True)
parser.add_argument("--yboost", type=float, default=0,
                    help="Y boost of legend. Ex: -0.2, 0.090", required=True)
parser.add_argument("--EFT", action="store_true",
                    default=False, help="EFT results", required=False)
parser.add_argument("--NMSSM", action="store_true",
                    default=False, help="NMSSM results", required=False)
parser.add_argument("--lumiRescale", type=str, default="",
                    help="Rescale limit by luminosity", required=False)
parser.add_argument("--year", type=str, default="",
                    help="Year. 2016, 2017, 2018 or Run2", required=True)

parser.add_argument("--campaignOne", type=str, default="UnLabeled",
                    help="Campaign of first limits in ratio", required=False)
parser.add_argument("--campaignTwo", type=str, default="UnLabeled",
                    help="Campaign of second limits in ratio", required=False)

args = parser.parse_args()

ROOT.gROOT.SetBatch(ROOT.kTRUE)

# CMS style
CMS_lumi.cmsText = "CMS"
CMS_lumi.extraText = "Preliminary"
CMS_lumi.cmsTextSize = 0.65
CMS_lumi.outOfFrame = True

year = args.year

if(year == "2016"):
    CMS_lumi.lumi_sqrtS = "35.9 fb^{-1}"
elif(year == "2017"):
    CMS_lumi.lumi_sqrtS = "41.5 fb^{-1}"
elif(year == "2018"):
    CMS_lumi.lumi_sqrtS = "59.8 fb^{-1}"
elif(year == "Run2"):
    CMS_lumi.lumi_sqrtS = "138 fb^{-1}"
else:
    CMS_lumi.lumi_sqrtS = "XXXX fb^{-1}"

# cmsLumiIndex = 0
# tdrstyle.setTDRStyle()
# tdrStyle.cd()
def drawHorizonLines(valx,valy,isObs):
    print("X is:",valx,"Y is:",valy)
    hline=ROOT.TLine(valx-0.5,valy,valx+0.5,valy)
    if(isObs):
        hline.SetLineStyle(1)
    else:
        hline.SetLineStyle(2)
        # hline.SetLineColor()
    return hline
# TDR style
thistdrstyle = tdrstyle.setTDRStyle()
# if(args.Ratio) or (args.Grid): thistdrstyle.SetOptLogy(0)



# GET limits from root file
def getLimits(file_name):

    # print'file_name = ',file_name
    file = TFile(file_name)
    tree = file.Get("limit")

    limits = []
    for quantile in tree:
        if(args.unit == "fb"):
            # value is already in fb because multiplied by arb. XS = 1fb
            limits.append(tree.limit)
        elif(args.unit == "pb"):
            limits.append(tree.limit/1000.)  # pb
        elif(args.SM_Point):
            limits.append(tree.limit)

    return limits[:6]


# PLOT upper limits
def plotUpperLimits(labels, values, resultType):
    # see CMS plot guidelines: https://ghm.web.cern.ch/ghm/plots/

    N = len(labels)
    yellow = TGraph(2*N)    # yellow band
    green = TGraph(2*N)     # green band
    median = TGraph(N)      # median line

    year = args.year

    vals = []

    up2s = []
    nonBRvals = []
    for i in range(N):
        direc = args.HHWWggCatLabel
        file_name = "../Combined_EFT_EFT_limits/higgsCombine" + \
            labels[i]+".AsymptoticLimits.mH125.root"
        print"file: ", file_name
        limit = getLimits(file_name)
        up2s.append(limit[4])

        campaignBRdict = {
            # (1 / BR) of qqlnu. Electron and Muon decays only
            "HHWWgg_v2-3": 3.4916,
            # (1 / BR) of qqlnu. Electron, Muon, all Tau decays INCLUDED
            "HHWWgg_v2-7": 2.3079
            # "HHWWgg_v2-7": 2.2779 # (1 / BR) of qqlnu. Electron, Muon, all Tau decays INCLUDED
        }

        HHWWgg_qqlnu_factor = campaignBRdict[args.campaign]
        HHWWgg_WWgg_factor = 1030.7153

        lumiRescaledict = {
            "": 1,
        }

        HHWWgg_lumiRescaleFactor = lumiRescaledict[args.lumiRescale]

        if(resultType == "WWgg"):
            HHWWgg_factor = HHWWgg_qqlnu_factor*HHWWgg_lumiRescaleFactor
        elif(resultType == "HH"):
            HHWWgg_factor = HHWWgg_qqlnu_factor*HHWWgg_WWgg_factor*HHWWgg_lumiRescaleFactor

        yellow.SetPoint(i,    values[i], limit[4]*HHWWgg_factor)  # + 2 sigma
        green.SetPoint(i,    values[i], limit[3]*HHWWgg_factor)  # + 1 sigma
        median.SetPoint(i,    values[i], limit[2]*HHWWgg_factor)  # median
        green.SetPoint(2*N-1-i, values[i], limit[1]*HHWWgg_factor)  # - 1 sigma
        yellow.SetPoint(2*N-1-i, values[i],
                        limit[0]*HHWWgg_factor)  # - 2 sigma
        print"limit without HHWWgg_factor:", limit[2]
        print"HHWWgg_factor:", HHWWgg_factor
        nonBRvals.append(limit[2])
        print"limit[2]*HHWWgg_factor:", limit[2]*HHWWgg_factor
        vals.append(limit[2]*HHWWgg_factor)

    # print(vals)
    massvals = labels[:]
    mvals = []
    for m in massvals:
        massval = m.split('_')[0]
        massval = massval.replace("X", "")
        mvals.append(massval)

    print("masses:", mvals)
    print("nonBR vals:", nonBRvals)

    W = 800
    H = 600
    T = 0.08*H
    B = 0.12*H
    L = 0.12*W
    R = 0.04*W
    c = TCanvas("c", "c", 100, 100, W, H)
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
    # c.SetLogy()
    # gPad.SetLogy()
    c.cd()
    # ROOT.gPad.SetLogy()
    # c.SetLogy()
    frame = c.DrawFrame(1.4, 0.001, 4.1, 10)
    frame.GetYaxis().CenterTitle()
    frame.GetYaxis().SetTitleSize(0.05)
    frame.GetXaxis().SetTitleSize(0.05)
    frame.GetXaxis().SetLabelSize(0.04)
    frame.GetYaxis().SetLabelSize(0.04)
    frame.GetYaxis().SetTitleOffset(0.9)
    frame.GetXaxis().SetNdivisions(508)
    frame.GetYaxis().CenterTitle(True)
    # frame.GetYaxis().SetTitle("95% upper limit on #sigma / #sigma_{SM}")

    if(args.unit == "pb"):
        if(resultType == "WWgg"):
            frame.GetYaxis().SetTitle(
                "95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH#rightarrow WW#gamma#gamma) [pb]")
        elif(resultType == "HH"):
            frame.GetYaxis().SetTitle(
                "95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH) [pb]")

    elif(args.unit == "fb"):
        if(resultType == "WWgg"):
            frame.GetYaxis().SetTitle(
                "95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH#rightarrow WW#gamma#gamma) [fb]")
        elif(resultType == "HH"):
            frame.GetYaxis().SetTitle(
                "95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH) [fb]")

    if(resultType == "WWgg"):
        frame.GetYaxis().SetTitleSize(0.04)
        frame.GetYaxis().SetTitleOffset(1.3)

    # frame.GetXaxis().Set
#    frame.GetYaxis().SetTitle("95% upper limit on #sigma #times BR / (#sigma #times BR)_{SM}")
    # frame.GetXaxis().SetTitle("background systematic uncertainty [%]")
    if(args.SM_Point):
        frame.GetXaxis().SetTitle("Standard Model")
    else:
        frame.GetXaxis().SetTitle("Radion Mass (GeV)")
    # frame.SetMinimum(0)
    # frame.SetMinimum(1) # need Minimum > 0 for log scale
    frame.SetMinimum(args.ymin)  # need Minimum > 0 for log scale
    # frame.SetMaximum(max(up2s)*1.05)
    # frame.SetMaximum(max(up2s)*2)
    # frame.SetMaximum(1000.)

    frame.SetMaximum(args.ymax)
    frame.GetXaxis().SetLimits(min(values), max(values))
    # frame.SetLogy()
    # frame.GetXaxis().SetLimits(min(values)-10,max(values)+10)

    yellow.SetFillColor(ROOT.kOrange)
    yellow.SetLineColor(ROOT.kOrange)
    yellow.SetFillStyle(1001)
    yellow.Draw('F')

    green.SetFillColor(ROOT.kGreen+1)
    green.SetLineColor(ROOT.kGreen+1)
    green.SetFillStyle(1001)
    green.Draw('Fsame')

    median.SetLineColor(1)
    median.SetLineWidth(2)
    median.SetLineStyle(2)
    median.SetMarkerStyle(8)
    median.Draw('PLsame')

    CMS_lumi.CMS_lumi(c, 4, 11)
    ROOT.gPad.SetTicks(1, 1)
    frame.Draw('sameaxis')

    yboost = args.yboost
    x1 = 0.15
    x2 = x1 + 0.24
    y2 = 0.76 + yboost
    y1 = 0.60 + yboost
    legend = TLegend(x1, y1, x2, y2)
    legend.SetFillStyle(0)
    legend.SetBorderSize(0)
    legend.SetTextSize(0.041)
    legend.SetTextFont(42)
    legend.AddEntry(median, "AsymptoticLimits CL_{s} expected", 'L')
    legend.AddEntry(green, "#pm 1 std. deviation", 'f')
#    legend.AddEntry(green, "AsymptoticLimits CL_{s} #pm 1 std. deviation",'f')
    legend.AddEntry(yellow, "#pm 2 std. deviation", 'f')
    # legend.AddEntry("","STAT Only","")
#    legend.AddEntry(green, "AsymptoticLimits CL_{s} #pm 2 std. deviation",'f')
    legend.Draw()

    label = TLatex()
    label.SetNDC()
    label.SetTextAngle(0)
    label.SetTextColor(kBlack)
    label.SetTextFont(42)
    label.SetTextSize(0.03)
    label.SetLineWidth(2)
    # if(args.systematics):
        # label.DrawLatex(0.7, 0.7 + yboost, "SYST + STAT")
    # else:
        # label.DrawLatex(0.7, 0.7 + yboost, "STAT ONLY")

    print " "

    outFile = ''
    outFile += ol + '/'
    if(args.CMS_compare):
        outFile += "CMS_Compare_"
    if(args.All_Points):
        outFile += "All_Points_"
    if(args.atlas_compare):
        outFile += "atlas_Compare_"

    if args.SM_Point:
        outFile += "SM_"

    outFile += args.HHWWggCatLabel + "_"

    # args.lumiRescale
    c.SaveAs("%s_%s_UpperLimit.pdf" % (outFile, args.lumiRescale))
    c.SaveAs("%s_%s_UpperLimit.png" % (outFile, args.lumiRescale))
    c.SaveAs("%s_%s_UpperLimit.C" % (outFile, args.lumiRescale))
    c.Close()


def plotRatio(values, labels1, labels2):

    N = len(labels1)  # should be same
    # yellow = TGraph(2*N)    # yellow band
    # green = TGraph(2*N)     # green band
    median = TGraph(N)      # median line

    Label_1 = args.HHWWggCatLabel
    Label_2 = args.SecondHHWWggCatLabel

    campaignOne = args.campaignOne
    campaignTwo = args.campaignTwo

    factor_1, factor_2 = 1, 1

    campaignBRdict = {
        "HHWWgg_v2-3": 3.4916,
        "HHWWgg_v2-7": 2.3079,
        "HHWWgg_SM": 2.3079
    }

    factor_1 *= campaignBRdict[campaignOne]
    factor_2 *= campaignBRdict[campaignTwo]

    if(args.resultType == "HH"):
        factor_1 *= 2.3079
        factor_2 *= 2.3079

    factor_ratio = factor_1 / factor_2

    year = args.year

    # HHWWgg_v2-3:
    # HHWWgg_qqlnu_factor = 3.4916 # e, mu semileptonic channels only

    # HHWWgg_v2-7:
    # HHWWgg_qqlnu_factor = 2.3079 ## (1 / BR) with Electron, Muon, all Tau decays INCLUDED

    # HH result
    # HHWWgg_WWgg_factor = 1030.7153

    # up2s = [ ]
    for i in range(N):
        file_name_1 = "%s_limits/%s_%s_%s_HHWWgg_qqlnu.root" % (
            Label_1, campaignOne, year, labels1[i])
        file_name_2 = "%s_limits/%s_%s_%s_HHWWgg_qqlnu.root" % (
            Label_2, campaignTwo, year, labels2[i])
        # print"file_name_1:",file_name_1
        # print"file_name_2:",file_name_2
        # file_name_2 = Label_1 + "_limits/HHWWgg_v2-3_2017_" + labels1[i] + "_HHWWgg_qqlnu.root"
        # file_name_1 = Label_1 + "_limits/HHWWgg_v2-3_2017_" + labels1[i] + "_HHWWgg_qqlnu.root"
        # file_name_2 = Label_2 + "_limits/HHWWgg_v2-3_2017_" + labels2[i] + "_HHWWgg_qqlnu.root"
        limit_1 = getLimits(file_name_1)
        limit_2 = getLimits(file_name_2)

        # if(campaignOne=="HHWWgg_v2-3"): limit_1[2] *= 3.4916
        # if(campaignTwo=="HHWWgg_v2-6"): limit_2[2] *= 2.3079
        # yellow.SetPoint(    i,    values[i], limit[4] ) # + 2 sigma
        # green.SetPoint(     i,    values[i], limit[3] ) # + 1 sigma
        median.SetPoint(
            i,    values[i], (limit_1[2]/limit_2[2])*(factor_ratio))  # median
        # green.SetPoint(  2*N-1-i, values[i], limit[1] ) # - 1 sigma
        # yellow.SetPoint( 2*N-1-i, values[i], limit[0] ) # - 2 sigma
        # print'setting point:'
        # print values[i]
        # print limit_1[2]/limit_2[2]

        print"ratio", (limit_1[2]/limit_2[2])*(factor_ratio)

    W = 800
    H = 600
    T = 0.08*H
    B = 0.12*H
    L = 0.12*W
    R = 0.04*W
    c = TCanvas("c", "c", 100, 100, W, H)
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
    # c.SetLogy()
    # gPad.SetLogy()
    c.cd()
    # ROOT.gPad.SetLogy()
    # c.SetLogy()
    # frame.GetYaxis().SetTitle("%s / %s"%(campaignOne,campaignTwo))

    frame = c.DrawFrame(1.4, 0.001, 4.1, 10)
    # frame.SetTitle("test")

    # frame.SetTitle("Median 95%% CL #sigma_{%s} Limits"%(args.resultType))
    frame.GetYaxis().CenterTitle()
    frame.GetYaxis().SetTitleSize(0.05)
    frame.GetXaxis().SetTitleSize(0.05)
    frame.GetXaxis().SetLabelSize(0.04)
    frame.GetYaxis().SetLabelSize(0.04)
    frame.GetYaxis().SetTitleOffset(0.9)
    frame.GetXaxis().SetNdivisions(508)
    frame.GetYaxis().CenterTitle(True)

    label1, label2 = "", ""
    campaignLabelDict = {
        "HHWWgg_v2-3": "noTaus",
        "HHWWgg_v2-7": "fullTauDecays",
        "HHWWgg_SM": "fullTauDecays"
    }

    for icamp, campaign in enumerate([campaignOne, campaignTwo]):
        exec("label%s = campaignLabelDict[campaign]" % (icamp+1))
    yTitle = "%s / %s" % (label1, label2)

    frame.GetYaxis().SetTitle(yTitle)
    frame.GetYaxis().SetRangeUser(0.5, 1.2)

    if(args.SM_Point):
        frame.GetXaxis().SetTitle("Standard Model")
    else:
        frame.GetXaxis().SetTitle("Radion Mass (GeV)")

    frame.GetXaxis().SetLimits(min(values), max(values))

    median.SetLineColor(1)
    median.SetLineWidth(2)
    median.SetLineStyle(2)
    median.SetMarkerStyle(8)
    median.SetMarkerColor(ROOT.kBlack)
    median.SetTitle("Median 95%% CL #sigma_{%s} Limits" % (args.resultType))
    median.Draw('LP')

    CMS_lumi.CMS_lumi(c, 4, 11)
    ROOT.gPad.SetTicks(1, 1)
    frame.SetTitle("test")
    frame.Draw('sameaxis')

    # yboost = 0.075
    yboost = -0.2

    x1 = 0.15
    x2 = x1 + 0.24
    y2 = 0.76 + yboost
    y1 = 0.60 + yboost
    legend = TLegend(x1, y1, x2, y2)
    legend.SetFillStyle(0)
    legend.SetBorderSize(0)
    legend.SetTextSize(0.041)
    legend.SetTextFont(42)
    legend.AddEntry(median, "Ratio: AsymptoticLimits CL_{s} expected", 'L')

    label = TLatex()
    label.SetNDC()
    label.SetTextAngle(0)
    label.SetTextColor(kBlack)
    label.SetTextFont(42)
    label.SetTextSize(0.03)
    label.SetLineWidth(2)

    outFile = ''
    outFile += ol + '/'
    if(args.CMS_compare):
        outFile += "CMS_Compare_"
    if(args.All_Points):
        outFile += "All_Points_"
    if(args.atlas_compare):
        outFile += "atlas_Compare_"

    label = TLatex()
    label.SetNDC()
    label.SetTextAngle(0)
    label.SetTextColor(kBlack)
    label.SetTextFont(42)
    label.SetTextSize(0.03)
    label.SetLineWidth(2)
    label.DrawLatex(
        0.32, 0.95, "Median 95%% CL #sigma_{%s} Limits" % (args.resultType))
    # if(args.systematics): label.DrawLatex(0.7,0.7 + yboost,"SYST + STAT")
    # else: label.DrawLatex(0.7,0.7 + yboost,"STAT ONLY")

    if args.SM_Point:
        outFile += "SM_"

    outFile += Label_1 + "_" + Label_2 + "_"

    c.SaveAs(outFile + "RatioUpperLimit.pdf")
    c.SaveAs(outFile + "RatioUpperLimit.png")
    c.SaveAs(outFile + "RatioUpperLimit.C")
    c.Close()


# PLOT upper limits
# plot in style that is bin per label, not graph with mass trend
def plotNonResUpperLimits(campaign, labels, resultType, plotLabels):
    labelTitle = args.HHWWggCatLabel
    # print"labels:",labels
    # print"campaign:",campaign
    # print"args.HHWWggCatLabel:",args.HHWWggCatLabel
    # exit(1)
    # see CMS plot guidelines: https://ghm.web.cern.ch/ghm/plots/
    N = len(labels)  # should be same
    yellow = TGraph(2*N)    # yellow band
    green = TGraph(2*N)     # green band
    median = TGraph(N)      # median line
    obs = TGraph(N)      # Observed line

    # up2s = [ ]
    median_h = TH1F("median_h", "median_h", N, 0, N)
    obs_h = TH1F("obs_h", "obs_h", N, 0, N)
    upperTwoSigs = array('d')
    upperOneSig = array('d')
    lowerOneSig = array('d')
    lowerTwoSigs = array('d')
    x = array('d')
    obsx = array('d')
    y = array('d')
    obsy = array('d')
    xerrorLow = array('d')
    obsxerrorLow = array('d')
    xerrorHigh = array('d')
    obsxerrorHigh = array('d')

    # HHWWgg_qqlnu_factor = 6.983 # 1 / branching ratio of qqlnugg including electron and muon channels. Need to multiply measured XS by this to get measured XS of HH->WWgg production
    # HHWWgg_WWgg_factor = 2061.43 # (1 / 0.0004851), 0.0004851 is BR of HH->WWgg
    # e, mu (no tau), qq (assuming negligible b quark BR): 3.4916
    # 1030.7153


    # HHWWgg_qqlnu_factor = campaignBRdict[args.campaign]
    HHWWgg_qqlnu_factor = 1
    HHWWgg_WWgg_factor = 1

    # HHWWgg_qqlnu_factor = 3.4916 # e, mu semileptonic channels only
    # HHWWgg_WWgg_factor = 1030.7153
    if(resultType == "WWgg"):
        HHWWgg_factor = HHWWgg_qqlnu_factor
    elif(resultType == "HH"):
        HHWWgg_factor = HHWWgg_qqlnu_factor

    year = args.year

    # green_h = TH1F("")
    xvalues = []
    for i in range(N):
        xvalues.append(i)
    nonBRvals = []
    for i in range(N):
        direc = args.HHWWggCatLabel

        # file_name = "%s_limits/%s_%s_HHWWgg_qqlnu.root"%(direc,campaign,labels[i])
        file_name = "./Combine_result/higgsCombine" + \
            labels[i]+".AsymptoticLimits.mH125.root"
        print"file name:", file_name
        HHWWgg_factor = 1
        print labels[i]
        if "cHHH1" in labels[i]:
            HHWWgg_factor = 31.049
        else:
            HHWWgg_factor = 100

        # file_name = direc + "_limits/HHWWgg_v2-3_2017_" + labels[i] + "_HHWWgg_qqlnu.root"
        # print'file_name:',file_name
        limit = getLimits(file_name)
        yellow.SetPoint(i,    xvalues[i], limit[4]*HHWWgg_factor)  # + 2 sigma
        green.SetPoint(i,    xvalues[i], limit[3]*HHWWgg_factor)  # + 1 sigma
        # median_h.Fill(xvalues[i], limit[2]*HHWWgg_qqlnu_factor)
        median.SetPoint(i,    xvalues[i], limit[2]*HHWWgg_factor)  # median
        obs.SetPoint(i,    xvalues[i], limit[5]*HHWWgg_factor)  # median
        green.SetPoint(2*N-1-i, xvalues[i],
                       limit[1]*HHWWgg_factor)  # - 1 sigma
        yellow.SetPoint(2*N-1-i, xvalues[i],
                        limit[0]*HHWWgg_factor)  # - 2 sigma

        print("limit without HHWWgg factor:", limit[2])
        print("limit with HHWWgg factor:", limit[2]*HHWWgg_factor)
        nonBRvals.append(limit[2])
        median_val = limit[2]*HHWWgg_factor
        obs_val = limit[5]*HHWWgg_factor
        # x.append(median_h.GetXaxis().GetBinCenter(i+1))
        obsx.append(obs_h.GetXaxis().GetBinLowEdge(i+1))
        x.append(median_h.GetXaxis().GetBinLowEdge(i+1))
        upperTwoSigs.append(abs(limit[4]*HHWWgg_factor-median_val))
        upperOneSig.append(abs(limit[3]*HHWWgg_factor-median_val))
        y.append(median_val)
        obsy.append(obs_val)
        lowerOneSig.append(abs(limit[1]*HHWWgg_factor-median_val))
        lowerTwoSigs.append(abs(limit[0]*HHWWgg_factor-median_val))

        xerrorLow.append(0.5)
        obsxerrorLow.append(0.5)
        xerrorHigh.append(0.5)
        obsxerrorHigh.append(0.5)

        median_h.GetXaxis().SetBinLabel(i+1, plotLabels[i])
        obs_h.GetXaxis().SetBinLabel(i+1, plotLabels[i])
        print"labels[i]:", labels[i]
        median_h.Fill(x[i], median_val)
        obs_h.Fill(obsx[i], obs_val)

        print"median_val:", median_val

    print("masses:", xvalues)
    print("nonBR limits:", nonBRvals)

    median_h.Draw("a")
    obs_h.Draw("asame")
    gr = TGraphAsymmErrors(N, x, y, xerrorLow, xerrorHigh,
                           lowerOneSig, upperOneSig)
    gr_obs = TGraph(N, obsx, obsy)
    gr_yellow = TGraphAsymmErrors(
        N, x, y, xerrorLow, xerrorHigh, lowerTwoSigs, upperTwoSigs)
    # gr.SetMarkerStyle(21)
    gr_yellow.SetMarkerStyle(21)

    # print"

    # gr.Draw("P")

#    for (Int_t i=0;i<n;i++) {
    #   x[i] = h->GetXaxis()->GetBinCenter(i+1);
    #   h->GetXaxis()->SetBinLabel(i+1,labels[i]);
    #   h->Fill(x[i],y[i]);
#    }

    # x = array ( 'd' )
    # for i in range(0,N):
    # x.append(median_h.GetXaxis().GetBinCenter(i+1))
    # median_h.GetXaxis().SetBinLabel(i+1,labels[i])
    # median_h.Fill(x[i],)

    # print"median:",median_h
    # print"yellow:",yellow
    # print"green:",green
    # exit(1)

    W = 800
    H = 600
    T = 0.08*H
    B = 0.12*H
    L = 0.12*W
    R = 0.04*W
    c = TCanvas("c", "c", 100, 100, W, H)
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
    # c.SetGrid()
    c.SetLogy()
    gPad.SetLogy()
    c.cd()
    ROOT.gPad.SetLogy()
    c.SetLogy()
    frame = c.DrawFrame(1.4, 0.001, 4.1, 10)
    frame.GetYaxis().CenterTitle()
    frame.GetYaxis().SetTitleSize(0.05)
    frame.GetXaxis().SetTitleSize(0.05)
    frame.GetXaxis().SetLabelSize(0.04)
    frame.GetYaxis().SetLabelSize(0.04)
    frame.GetYaxis().SetTitleOffset(0.9)
    frame.GetXaxis().SetNdivisions(N)
    frame.GetYaxis().CenterTitle(True)

    # if(args.SM_Point or args.EFT):
    # process = "#sigma(gg#rightarrow HH"
    # else:
    # process = "#sigma(gg#rightarrow X)#times B(X#rightarrow HH"

    if(args.SM_Point or args.EFT):
        if(args.unit == "pb"):
            if(resultType == "WWgg"):
                frame.GetYaxis().SetTitle(
                    "95% CL limits on #sigma(gg #rightarrow HH) #times B(HH #rightarrow WW#gamma#gamma) [pb]")
            elif(resultType == "HH"):
                frame.GetYaxis().SetTitle(
                    "95% CL limits on #sigma(gg #rightarrow HH) [pb]")

        elif(args.unit == "fb"):
            if(resultType == "WWgg"):
                frame.GetYaxis().SetTitle(
                    "95% CL limits on #sigma(gg #rightarrow HH) #times B(HH #rightarrow WW#gamma#gamma) [fb]")
            elif(resultType == "HH"):
                frame.GetYaxis().SetTitle(
                    "95% CL limits on #sigma(gg #rightarrow HH) [fb]")
    else:
        if(args.unit == "pb"):
            if(resultType == "WWgg"):
                frame.GetYaxis().SetTitle(
                    "95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH#rightarrow WW#gamma#gamma) [pb]")
            elif(resultType == "HH"):
                frame.GetYaxis().SetTitle(
                    "95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH) [pb]")

        elif(args.unit == "fb"):
            if(resultType == "WWgg"):
                frame.GetYaxis().SetTitle(
                    "95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH#rightarrow WW#gamma#gamma) [fb]")
            elif(resultType == "HH"):
                frame.GetYaxis().SetTitle(
                    "95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH) [fb]")

    if(resultType == "WWgg"):
        frame.GetYaxis().SetTitleSize(0.04)
        frame.GetYaxis().SetTitleOffset(1.3)

    # frame.GetYaxis().SetTitle(Label_1 + " / " + Label_2)
    # frame.GetYaxis().SetRangeUser(0.8,1.2)
    # frame.GetYaxis().SetTitle("95% CL limits ratio: " + Label_1 + " / " + Label_2)

    # if(args.atlas_compare):
    #     frame.GetYaxis().SetTitle("95% CL limits on #sigma(gg#rightarrow X)#times B(X#rightarrow HH) [pb]")
    # elif(args.CMS_compare) or (args.All_Points):
    #     frame.GetYaxis().SetTitle("95% CL limit on #sigma(gg#rightarrow X#rightarrow HH) (fb)")
    # elif(args.SM_Point):
    #     frame.GetYaxis().SetTitle("95% CL limit on #sigma(gg#rightarrow X#rightarrow HH) (pb)")

    # frame.GetXaxis().Set
#    frame.GetYaxis().SetTitle("95% upper limit on #sigma #times BR / (#sigma #times BR)_{SM}")
    # frame.GetXaxis().SetTitle("background systematic uncertainty [%]")

    # if(args.SM_Point): frame.GetXaxis().SetTitle("Standard Model")
    # else: frame.GetXaxis().SetTitle("Radion Mass (GeV)")

    # frame.SetMinimum(0)
    # frame.SetMinimum(1) # need Minimum > 0 for log scale

    frame.SetMinimum(args.ymin)  # need Minimum > 0 for log scale

    # frame.SetMaximum(max(up2s)*1.05)
    # frame.SetMaximum(max(up2s)*2)
    frame.SetMaximum(args.ymax)

    # if(args.atlas_compare):
    #     frame.SetMaximum(7*1e2) # ATLAS
    # elif(args.CMS_compare) or (args.All_Points):
    #     frame.SetMaximum(8*1e4) # CMS HH

    # frame.GetXaxis().SetLimits(min(xvalues),max(xvalues))
    # frame.GetXaxis().SetLimits(-0.5,N-0.5)
    frame.GetXaxis().SetLimits(-0.5, N-0.5)
    frame.GetXaxis().CenterLabels(True)

    print"n bins:", frame.GetNbinsX()
    # nLabels = len(N)
    for i in range(N):
        # frame.GetXaxis().SetBinLabel(i+500,plotLabels[i])
        frame.GetXaxis().SetBinLabel(int(1000.*(2*i+1)/(2*N)), plotLabels[i])
    if(N > 3):
        frame.GetXaxis().SetLabelSize(0.02)
    else:
        frame.GetXaxis().SetLabelSize(0.12)

    frame.GetXaxis().SetTitle("EFT benchmark number")
    frame.GetXaxis().SetTitleSize(0.04)
    frame.GetYaxis().SetTitleSize(0.04)
    frame.GetXaxis().SetLabelSize(0.04)
    # frame.GetXaxis().SetLabelOffset(1)
    frame.GetYaxis().SetLabelSize(0.028)
    frame.LabelsOption("h", "X")
    frame.GetXaxis().SetTitleOffset(1.3)
    frame.GetXaxis().CenterLabels(True)
    # frame.GetXaxis().CenterLabels(True)

    if(args.NMSSM):
        frame.GetXaxis().SetTitle("(M_{X},M_{Y}) [GeV]")
        # print"title offset:",frame.GetXaxis().GetTitleOffset()
        frame.GetXaxis().SetTitleOffset(1.1)

    # print"frame:",frame
    # frame.SetDirectory(0)

    # frame.SetLogy()
    # frame.GetXaxis().SetLimits(min(values)-10,max(values)+10)

    yellow.SetFillColor(ROOT.kOrange)
    # yellow.SetLineColor(ROOT.kOrange)
    # yellow.SetFillStyle(1001)
    # yellow.Draw('F')

    green.SetFillColor(ROOT.kGreen+1)
    # green.SetLineColor(ROOT.kGreen+1)
    # green.SetFillStyle(1001)
    # green.Draw('F')
    # green_h.Draw('F')

    # median.SetLineColor(1)
    # median.SetLineWidth(2)
    # median.SetLineStyle(2)
    # median.SetMarkerStyle(8)
    # gr.SetMarkerColor(ROOT.kRed)
    # median.Draw('Psame')

    # median_h.SetLineColor(1)
    # median_h.SetLineWidth(2)
    # median_h.SetLineStyle(2)
    # median_h.SetMarkerStyle(8)
    # median_h.SetMarkerColor(ROOT.kBlack)
    # median_h.Draw('Psame')

    gr_yellow.SetFillColor(ROOT.kOrange)
    gr_yellow.Draw("P2")
    gr.SetMarkerSize(0.7)
    gr.SetMarkerStyle(1)
    gr.SetLineStyle(2)
    gr_obs.SetLineStyle(1)
    gr_obs.SetMarkerSize(0.7)
    gr.SetFillColor(ROOT.kGreen+1)
    gr.Draw("P2same")
    gr_obs.Draw("P2same")

    # c.cd()
    # median_h.Draw()

    # median_h.Draw('P')
    # c.cd()

    # print"frame:",frame

    CMS_lumi.CMS_lumi(c, 4, 11)
    ROOT.gPad.SetTicks(1, 1)
    frame.Draw('sameaxis')
    # frame.Draw('axis')

    # median_h.Draw('Psame')

    # yboost = 0.075
    yboost = args.yboost

    x1 = 0.15
    x2 = x1 + 0.24
    y2 = 0.76 + yboost
    y1 = 0.65 + yboost
    legend = TLegend(x1, y1, x2, y2)
    legend.SetFillStyle(0)
    legend.SetBorderSize(0)
    # legend.SetTextSize(0.041)
    legend.SetTextFont(42)
    legend.AddEntry(gr_obs, "Observed Limits", 'PL')
    legend.AddEntry(gr, "Expected Limits", 'L')
    legend.AddEntry(green, "#pm 1 std. deviation", 'f')
    legend.AddEntry(yellow, "#pm 2 std. deviation", 'f')

    legend.Draw('same')

    label = TLatex()
    label.SetNDC()
    label.SetTextAngle(0)
    label.SetTextColor(kBlack)
    label.SetTextFont(42)
    label.SetTextSize(0.04)
    label.SetLineWidth(2)
    label.DrawLatex(0.16, 0.87,"HH #rightarrow WW#gamma#gamma")
    # if(args.systematics):
    #     label.DrawLatex(0.7, 0.7 + yboost, "SYST + STAT")
    # else:
    #     label.DrawLatex(0.7, 0.7 + yboost, "STAT ")

    print " "
    # c.SaveAs("UpperLimit.png")

    outFile = ''
    outFile += ol + '/'
    # if(args.CMS_compare):
    # outFile += "CMS_Compare_"
    # if(args.All_Points):
    # outFile += "All_Points_"
    # if(args.atlas_compare):
    # outFile += "atlas_Compare_"

    if args.SM_Point:
        outFile += "SM_"
    elif args.EFT:
        outFile += "EFT_"
    elif args.NMSSM:
        outFile += "NMSSM_"
    obs_hlines=[]
    exp_hlines=[] 
    for i in range(0,20):
        obs_hline=drawHorizonLines(gr_obs.GetX()[i],gr_obs.GetY()[i],True)
        exp_hline=drawHorizonLines(gr.GetX()[i],gr.GetY()[i],False)
        # hline.SetLineColor(1)    
        obs_hlines.append(obs_hline)
        exp_hlines.append(exp_hline)
    for i in range(0,20):
        obs_hlines[i].Draw("same")
        exp_hlines[i].Draw("same")
    outFile += "%s_" % (labelTitle)

    c.SaveAs(outFile + "UpperLimit.pdf")
    c.SaveAs(outFile + "UpperLimit.png")
    c.SaveAs(outFile + "UpperLimit.C")
    c.Close()

# RANGE of floats


def frange(start, stop, step):
    i = start
    while i <= stop:
        yield i
        i += step

# MAIN


def main():
    campaign = args.campaign
    resultType = args.resultType
    values = []  # x axis values for limit plots. Ex: Radion masses
    # if args.SM_Point:
    # values.append(-1) #FIXME: change x axis to a label saying SM rather than -1 to 1
    # values.append(1)
    # else:
    masses = []
    if(args.CMS_compare):
        masses = [250, 260, 270, 280, 300, 320, 350, 400,
                  500, 550, 600, 650, 700, 800, 850, 900, 1000]
    if(args.All_Points):
        masses = [250, 260, 270, 280, 300, 320, 350, 400,
                  500, 550, 600, 650, 700, 800, 850, 900, 1000]
    if(args.atlas_compare):
        masses = [250, 260, 270, 300, 320, 350, 400, 500]
    for m in masses:
        values.append(m)

    if args.Ratio:
        if(args.HHWWggCatLabel == "UnLabeled") or (args.SecondHHWWggCatLabel == "SecondUnLabeled"):
            print'[ERROR] - HHWWggCatLabel or SecondHHWWggCatLabel is unlabeled'
            print'If you want to create a ratio plot, you need to set both category labels'
            print'Exiting.'
            exit(0)
        labels1_ = []
        labels2_ = []
        if args.SM_Point:
            labels1_.append("nodeSM_" + args.HHWWggCatLabel)
            labels1_.append("nodeSM_" + args.HHWWggCatLabel)
            labels2_.append("nodeSM_" + args.SecondHHWWggCatLabel)
            labels2_.append("nodeSM_" + args.SecondHHWWggCatLabel)
        else:
            for m in masses:
                labels1_.append("X" + str(m) + '_' + str(args.HHWWggCatLabel))
                labels2_.append("X" + str(m) + '_' +
                                str(args.SecondHHWWggCatLabel))

        plotRatio(values, labels1_, labels2_)

    elif args.Grid:
        print'Creating grid of limit values'
        ol = '/afs/cern.ch/user/c/chuw/chuw/HHWWgg/CMSSW_10_2_13/src/flashggFinalFit/Combined_EFT_EFT_limits/'
        # ol = '/eos/user/a/atishelm/www/HHWWgg_Analysis/fggfinalfit/gridSyst'
        # masses = ["Node_cttHH3","Node_cttHH0p35","Node_3D3","Node_SM","Node_1","Node_2","Node_3",
        # "Node_4",
        # "Node_5",
        # "Node_6",
        # "Node_7",
        # "Node_8",
        # "Node_9",
        # "Node_10",
        # "Node_11",
        # "Node_12",
        # "Node_cHHH0",
        # "Node_cHHH2",
        # "Node_cHHH5",
        # "Node_8a",
        # "Node_1b",
        # "Node_2b",
        # "Node_3b",
        # "Node_4b",
        # "Node_5b",
        # "Node_6b",
        # "Node_7b"]
        masses = ["1", "2", "3", "4", "6", "9", "10", "11",
                  "12", "14", "15", "16", "17", "18", "19", "20"]
        # massLabels = ["Node_cttHH3","Node_cttHH0p35","Node_3D3","Node_SM","Node_1","Node_2","Node_3",
        #     "Node_4",
        #     "Node_5",
        #     "Node_6",
        #     "Node_7",
        #     "Node_8",
        #     "Node_9",
        #     "Node_10",
        #     "Node_11",
        #     "Node_12",
        #     "Node_cHHH0",
        #     "Node_cHHH2",
        #     "Node_cHHH5",
        #     "Node_8a",
        #     "Node_1b",
        #     "Node_2b",
        #     "Node_3b",
        #     "Node_4b",
        #     "Node_5b",
        #     "Node_6b",
        #     "Node_7b"]
        massLabels = ["Test"]
        # for m in masses:
        #     mLabel = "X%s"%str(m)
        #     massLabels.append(mLabel)
        # massLabels.append("nodeSM")
        print args.GridLabels
        nGridLabels = len(args.GridLabels)
        print'nGridLabels:', nGridLabels
        yaxisLabels = ['2.5%', '16%', '50%', '84%', '97.5%']
        # yaxisLabels = ['']
        for ml in massLabels:
            print'ml:', ml
            lowestMedianVal, lowestMedianLabel, lowestMedianIndex = 9999999, "", -99
            highestMedianVal, highestMedianLabel, highestMedianIndex = -9999999, "", -99
            h_grid = ROOT.TH2F('h_grid', 'h_grid',
                               nGridLabels, 0, nGridLabels, 5, 0, 5)
            # h_grid.SetTitle("Mass:%s"%ml)
            # h_grid.SetTitle(ml)
            # h_grid.SetCanExtend(ROOT.kAllAxes)
            h_grid.SetStats(0)
            h_grid.GetXaxis().SetLabelSize(.03)
            # h_grid.GetYaxis().SetLabelSize(.02)

            for yli, yl in enumerate(yaxisLabels):
                h_grid.GetYaxis().SetBinLabel(yli+1, yl)
            for gl_i, gl in enumerate(args.GridLabels):
                print'gl:', gl
                h_grid.GetXaxis().SetBinLabel(gl_i+1, gl)
                file_name = ol+"higgsCombine_"+gl+".AsymptoticLimits.mH125.root"
                limit = getLimits(file_name)
                m2sig, m1sig, median, p1sig, p2sig = limit[0], limit[1], limit[2], limit[3], limit[4]
                # print'limit:',limit
                limits = [m2sig, m1sig, median, p1sig, p2sig]
                for il, l in enumerate(limits):
                    # print'h_grid.Fill(%s,%s,%s)'%(str(gl_i),str(il),str(l))
                    h_grid.Fill(gl_i, il, l)
                if(median < lowestMedianVal):
                    lowestMedianVal = median
                    lowestMedianLabel = gl
                    lowestMedianIndex = gl_i
                if(median > highestMedianVal):
                    highestMedianVal = median
                    highestMedianLabel = gl
                    highestMedianIndex = gl_i

            # print'lowestMedianLabel:',lowestMedianLabel
            # color label with lowest median limit
            lowestLabel = "#color[3]{%s}" % (lowestMedianLabel)
            # color label with lowest median limit
            highestLabel = "#color[2]{%s}" % (highestMedianLabel)
            # print'h_grid.GetXaxis().GetBinLabel(lowestMedianIndex+1): ',h_grid.GetXaxis().GetBinLabel(lowestMedianIndex+1)
            # print'h_grid.GetXaxis().GetBinLabel(lowestMedianIndex): ',h_grid.GetXaxis().GetBinLabel(lowestMedianIndex)
            h_grid.GetXaxis().SetBinLabel(lowestMedianIndex+1, lowestLabel)
            h_grid.GetXaxis().SetBinLabel(highestMedianIndex+1, highestLabel)
            # color label of lowest median label kGreen+2
            # h_grid.SetMarkerSize(3)
            h_grid.SetMarkerSize(1.8)
            # h_grid.LabelsDeflate("X")
            # h_grid.LabelsDeflate("Y")
            # h_grid.LabelsOption("v")
            # print'get title:',h_grid.GetTitle()
            # ROOT.gStyle.SetOptTitle(ROOT.kTRUE)
            label = TLatex()
            label.SetNDC()
            label.SetTextAngle(0)
            label.SetTextColor(kBlack)
            label.SetTextFont(42)
            label.SetTextSize(0.03)
            label.SetLineWidth(2)
            # label.DrawLatex(0.5,0.9,ml)
            # if(args.systematics): label.DrawLatex(0.7,0.7 + yboost,"SYST + STAT")
            # else: label.DrawLatex(0.7,0.7 + yboost,"STAT ONLY")
            outNamepng = "%s/%s_grid.png" % (ol, ml)
            outNamepdf = "%s/%s_grid.pdf" % (ol, ml)
            c_tmp = TCanvas('c_tmp', 'c_tmp', 800, 600)
            c_tmp.SetRightMargin(0.15)
            c_tmp.SetLeftMargin(0.1)
            c_tmp.SetBottomMargin(0.15)
            c_tmp.SetTopMargin(0.1)
            h_grid.Draw("text COL1")
            label.DrawLatex(0.3, 0.95, "HHWWgg 95% CL Limits: " + ml)
            c_tmp.SaveAs(outNamepng)
            c_tmp.SaveAs(outNamepdf)

    else:
        if(args.HHWWggCatLabel == "UnLabeled"):
            print'[ERROR] - HHWWggCatLabel is unlabeled'
            print'If you want to create a limit plot, you need to set HHWWggCatLabel'
            print'Exiting.'
            exit(0)
        labels = []
        if args.SM_Point:
            labels = []
            labels.append("nodeSM_" + args.HHWWggCatLabel)
            values = []
            plotLabels = ["SM Non-Res"]
            # labels.append("SM_" + args.HHWWggCatLabel)
        elif args.EFT:
            # labels.append("node2_" + args.HHWWggCatLabel)
            # labels.append("node9_" + args.HHWWggCatLabel)
            # plotLabels = ["1","2","3","4","6","9","10","11","12","14","15","16","17","18","19","20","Node_cHHH1"]
            plotLabels = [
                # "Node_cttHH3","Node_cttHH0p35","Node_3D3","Node_SM",
                "1",
                "1b",
                "2",
                "2b",
                "3",
                "3b",
                "4",
                "4b",
                "5",
                "5b",
                "6",
                "6b",
                "7",
                "7b",
                "8",
                "8a",
                "9",
                "10",
                "11",
                "12",
                # "Node_cHHH1"
                ]
            labels = [
                "Node_1",
                "Node_1b",
                "Node_2",
                "Node_2b",
                "Node_3",
                "Node_3b",
                "Node_4",
                "Node_4b",
                "Node_5",
                "Node_5b",
                "Node_6",
                "Node_6b",
                "Node_7",
                "Node_7b",
                "Node_8",
                "Node_8a",
                "Node_9",
                "Node_10",
                "Node_11",
                "Node_12",
                    #   "Node_cHHH1"
                      ]
            # labels=["1","2","3","4","6","9","10","11","12","14","15","16","17","18","19","20","Node_cHHH1"]
            # labels=["1","2","14","3","15","4","16","17","6","18","19","20","9","10","11","12","Node_cHHH1"]
            # labels = [#"Node_cttHH3","Node_cttHH0p35","Node_3D3","Node_SM",
            # "Node_1",
            # "Node_1b",
            # "Node_2",
            # "Node_2b",
            # "Node_3",
            # "Node_3b",
            # "Node_4",
            # "Node_4b",
            # "Node_5",
            # "Node_5b",
            # "Node_6",
            # "Node_6b",
            # "Node_7",
            # "Node_7b",
            # "Node_8",
            # "Node_8a",
            # "Node_9",
            # "Node_10",
            # "Node_11",
            #  "Node_12",
            #  "Node_cHHH1"
            # # "Node_cHHH2",
            # # "Node_cHHH5",
            # ]
        elif args.NMSSM:
            labels.append("MX300_MY170_" + args.HHWWggCatLabel)
            labels.append("MX1000_MY800_" + args.HHWWggCatLabel)
            labels.append("MX1600_MY400_" + args.HHWWggCatLabel)
            labels.append("MX2000_MY1800_" + args.HHWWggCatLabel)
            # labels.append("node9_" + args.HHWWggCatLabel)
            plotLabels = ["300,170", "1000,800", "1600,400", "2000,1800"]
        else:
            for m in masses:
                labels.append("X" + str(m) + '_' + str(args.HHWWggCatLabel))

        # createDataCardsThetaB(labels,values)
        # executeDataCards(labels)
        if(args.SM_Point) or (args.EFT) or (args.NMSSM):
            plotNonResUpperLimits(campaign, labels, resultType, plotLabels)
        else:
            plotUpperLimits(labels, values, resultType)


if __name__ == '__main__':
    main()
