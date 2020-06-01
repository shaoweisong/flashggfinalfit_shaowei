import os, sys
import re
from optparse import OptionParser
import ROOT
import pandas as pd
import glob
import pickle
import json
import math
from collections import OrderedDict as od

def get_options():
  parser = OptionParser()
  parser.add_option("--inputJson", dest="inputJson", default='', help="Input json file from impacts")   
  parser.add_option("--inputExpJson", dest="inputExpJson", default='', help="Input json file from expected impacts")   
  parser.add_option("--pois", dest="pois", default='r_ggH', help="POIs to include in plot")
  parser.add_option("--translatePOIs", dest="translatePOIs", default=None, help="JSON to store poi translations")
  return parser.parse_args()
(opt,args) = get_options()

ROOT.gROOT.SetBatch(True)

# Open json to read from
with open("%s"%opt.inputJson,"r") as jsonfile: impacts = json.load(jsonfile)['params']
if opt.inputExpJson != '': 
  with open("%s"%opt.inputExpJson,"r") as jsonfile: impacts_exp = json.load(jsonfile)['params']

# Functions for translations
def Translate(name, ndict):
    return ndict[name] if name in ndict else name
def LoadTranslations(jsonfilename):
    with open(jsonfilename) as jsonfile:
        return json.load(jsonfile)
translatePOIs = {} if opt.translatePOIs is None else LoadTranslations(opt.translatePOIs)

# Dict to store regexp for systematics
ExpSystGroups_rgx = od()
ExpSystGroups_rgx['Integrated luminosity'] = ['lumi_13TeV_*']
ExpSystGroups_rgx['Photon identification'] = ['CMS_hgg_phoIdMva']
ExpSystGroups_rgx['Photon energy scale and smearing'] = ['CMS_hgg_nuisance_*scale','CMS_hgg_nuisance_*smear']
ExpSystGroups_rgx['Per photon energy resolution estimate'] = ['CMS_hgg_SigmaEOverEShift_*']
ExpSystGroups_rgx['Jet energy scale and resolution'] = ['CMS_scale_j_*','CMS_res_j_*','CMS_scale_RelativeBal'] 
ExpSystGroups_rgx['Lepton ID and reconstruction'] = ['CMS_hgg_ElectronID_*','CMS_hgg_ElectronReco_*','CMS_hgg_MuonID_*','CMS_hgg_MuonIso_*']
ExpSystGroups_rgx['B Tagging'] = ['CMS_hgg_BTagCut_*','CMS_hgg_BTagReshape_*']
ExpSystGroups_rgx['MET'] = ['CMS_hgg_MET_*']
#ExpSystGroups_rgx['Prefiring'] = ['CMS_hgg_prefire_*']
ExpSystGroups_rgx['Other experimental uncertainties'] = ['CMS_hgg_PreselSF','CMS_hgg_electronVetoSF_*','CMS_hgg_TriggerWeight_*','CMS_hgg_PUJIDShift_*','CMS_hgg_nuisance_deltafracright','CMS_hgg_prefire_*']

TheorySystGroups_rgx = od()
TheorySystGroups_rgx['Branching ratio'] = ['BR_hgg']
TheorySystGroups_rgx['ggH QCD scale'] = ['THU_ggH_Mu','THU_ggH_Res']
TheorySystGroups_rgx['ggH p_{T}^{H} modelling'] = ['THU_ggH_PT60','THU_ggH_PT120']
TheorySystGroups_rgx['ggH jet multiplicity'] = ['THU_ggH_Mig01','THU_ggH_Mig12']
TheorySystGroups_rgx['ggH VBF region and m_{t}'] = ['THU_ggH_VBF2j','THU_ggH_VBF3j','THU_ggH_qmtop']
TheorySystGroups_rgx['qqH QCD scale'] = ['THU_qqH_Yield']
TheorySystGroups_rgx['qqH migration'] = ['THU_qqH_PTH*','THU_qqH_MJJ*','THU_qqH_JET01']
TheorySystGroups_rgx['Other processes QCD scale'] = ['QCDscale_*']
TheorySystGroups_rgx['PDF and  #alpha_{s} normalisation'] = ['pdf_Higgs_*','alphaS_*']
TheorySystGroups_rgx['QCD scale, PDF and  #alpha_{s} shape'] = ['CMS_hgg_*_scale_*shape','CMS_hgg_alphaSWeight_shape','CMS_hgg_pdfWeight_*shape']
TheorySystGroups_rgx['Underlying event and parton shower'] = []

OtherSystGroups_rgx = od()
#OtherSystGroups_rgx['Background modelling'] = ['shapeBkg_*norm','env_*']
#OtherSystGroups_rgx['Background model shape'] = ['env_*']

# Extract full lists of uncertainties
ExpSystGroups = od()
TheorySystGroups = od()
OtherSystGroups = od()
for gr, gr_rgxs in ExpSystGroups_rgx.iteritems():
  ExpSystGroups[gr] = []
  # Loop over params and check if satsify rgx
  for p in impacts:
    inGroup = False
    pname = p['name']
    for rgx in gr_rgxs:
      if inGroup: continue
      rgx_parts = rgx.split("*")
      inRGX = 1
      for s in rgx_parts:
        if s == '': continue
        if s not in pname: inRGX = 0
      if inRGX: inGroup = True
    if inGroup: ExpSystGroups[gr].append(pname)

for gr, gr_rgxs in TheorySystGroups_rgx.iteritems():
  TheorySystGroups[gr] = []
  # Loop over params and check if satsify rgx
  for p in impacts:
    inGroup = False
    pname = p['name']
    for rgx in gr_rgxs:
      if inGroup: continue
      rgx_parts = rgx.split("*")
      inRGX = 1
      for s in rgx_parts:
        if s == '': continue
        if s not in pname: inRGX = 0
      if inRGX: inGroup = True
    if inGroup: TheorySystGroups[gr].append(pname)

for gr, gr_rgxs in OtherSystGroups_rgx.iteritems():
  OtherSystGroups[gr] = []
  # Loop over params and check if satsify rgx
  for p in impacts:
    inGroup = False
    pname = p['name']
    for rgx in gr_rgxs:
      if inGroup: continue
      rgx_parts = rgx.split("*")
      inRGX = 1
      for s in rgx_parts:
        if s == '': continue
        if s not in pname: inRGX = 0
      if inRGX: inGroup = True
    if inGroup: OtherSystGroups[gr].append(pname)

ExpSystVals = od()
TheorySystVals = od()
OtherSystVals = od()
for gr, systs in ExpSystGroups.iteritems():
  ExpSystVals[gr] = {}
  print " --> %s"%gr
  # Loop over pois
  for poi in opt.pois.split(","):
    u_up, u_down = 0, 0
    for s in systs:
      for p in impacts:
        if p['name'] == s:
          a = p[poi][0]-p[poi][1]
          b = p[poi][2]-p[poi][1]
          #print "   * %s: %.4f, %.4f"%(s,a,b)
          # If one-sided then take highest variation
          if a*b > 0: 
            if abs(a) > abs(b):
              u_up += a*a
              u_down += a*a
            else:
              u_up += b*b
              u_down += b*b
          else:
            if a >= 0:
              u_up += a*a
              u_down += b*b
            else:
              u_up += b*b
              u_down += a*a
    print "   * %s: (+%.4f,-%.4f)"%(poi,math.sqrt(u_up),math.sqrt(u_down))
    ExpSystVals[gr]['%s_up'%poi] = math.sqrt(u_up)
    ExpSystVals[gr]['%s_down'%poi] = math.sqrt(u_down)

for gr, systs in TheorySystGroups.iteritems():
  TheorySystVals[gr] = {}
  print " --> %s"%gr
  # Loop over pois
  for poi in opt.pois.split(","):
    u_up, u_down = 0, 0
    for s in systs:
      for p in impacts:
        if p['name'] == s:
          a = p[poi][0]-p[poi][1]
          b = p[poi][2]-p[poi][1]
          #print "   * %s: %.4f, %.4f"%(s,a,b)
          # If one-sided then take highest variation
          if a*b > 0: 
            if abs(a) > abs(b):
              u_up += a*a
              u_down += a*a
            else:
              u_up += b*b
              u_down += b*b
          else:
            if a >= 0:
              u_up += a*a
              u_down += b*b
            else:
              u_up += b*b
              u_down += a*a
    print "   * %s: (+%.4f,-%.4f)"%(poi,math.sqrt(u_up),math.sqrt(u_down))
    TheorySystVals[gr]['%s_up'%poi] = math.sqrt(u_up)
    TheorySystVals[gr]['%s_down'%poi] = math.sqrt(u_down)

for gr, systs in OtherSystGroups.iteritems():
  OtherSystVals[gr] = {}
  print " --> %s"%gr
  # Loop over pois
  for poi in opt.pois.split(","):
    u_up, u_down = 0, 0
    for s in systs:
      for p in impacts:
        if p['name'] == s:
          a = p[poi][0]-p[poi][1]
          b = p[poi][2]-p[poi][1]
          #print "   * %s: %.4f, %.4f"%(s,a,b)
          # If one-sided then take highest variation
          if a*b > 0: 
            if abs(a) > abs(b):
              u_up += a*a
              u_down += a*a
            else:
              u_up += b*b
              u_down += b*b
          else:
            if a >= 0:
              u_up += a*a
              u_down += b*b
            else:
              u_up += b*b
              u_down += a*a
    print "   * %s: (+%.4f,-%.4f)"%(poi,math.sqrt(u_up),math.sqrt(u_down))
    OtherSystVals[gr]['%s_up'%poi] = math.sqrt(u_up)
    OtherSystVals[gr]['%s_down'%poi] = math.sqrt(u_down)

# Expected impacts
if opt.inputExpJson != '':
  ExpSystVals_exp = od()
  TheorySystVals_exp = od()
  OtherSystVals_exp = od()
  for gr, systs in ExpSystGroups.iteritems():
    ExpSystVals_exp[gr] = {}
    print " --> %s"%gr
    # Loop over pois
    for poi in opt.pois.split(","):
      u_up, u_down = 0, 0
      for s in systs:
        for p in impacts_exp:
          if p['name'] == s:
            a = p[poi][0]-p[poi][1]
            b = p[poi][2]-p[poi][1]
            #print "   * %s: %.4f, %.4f"%(s,a,b)
            # If one-sided then take highest variation
            if a*b > 0: 
              if abs(a) > abs(b):
                u_up += a*a
                u_down += a*a
              else:
                u_up += b*b
                u_down += b*b
            else:
              if a >= 0:
                u_up += a*a
                u_down += b*b
              else:
                u_up += b*b
                u_down += a*a
      print "   * %s: (+%.4f,-%.4f)"%(poi,math.sqrt(u_up),math.sqrt(u_down))
      ExpSystVals_exp[gr]['%s_up'%poi] = math.sqrt(u_up)
      ExpSystVals_exp[gr]['%s_down'%poi] = math.sqrt(u_down)

  for gr, systs in TheorySystGroups.iteritems():
    TheorySystVals_exp[gr] = {}
    print " --> %s"%gr
    # Loop over pois
    for poi in opt.pois.split(","):
      u_up, u_down = 0, 0
      for s in systs:
        for p in impacts_exp:
          if p['name'] == s:
            a = p[poi][0]-p[poi][1]
            b = p[poi][2]-p[poi][1]
            #print "   * %s: %.4f, %.4f"%(s,a,b)
            # If one-sided then take highest variation
            if a*b > 0: 
              if abs(a) > abs(b):
                u_up += a*a
                u_down += a*a
              else:
                u_up += b*b
                u_down += b*b
            else:
              if a >= 0:
                u_up += a*a
                u_down += b*b
              else:
                u_up += b*b
                u_down += a*a
      print "   * %s: (+%.4f,-%.4f)"%(poi,math.sqrt(u_up),math.sqrt(u_down))
      TheorySystVals_exp[gr]['%s_up'%poi] = math.sqrt(u_up)
      TheorySystVals_exp[gr]['%s_down'%poi] = math.sqrt(u_down)

  for gr, systs in OtherSystGroups.iteritems():
    OtherSystVals_exp[gr] = {}
    print " --> %s"%gr
    # Loop over pois
    for poi in opt.pois.split(","):
      u_up, u_down = 0, 0
      for s in systs:
        for p in impacts_exp:
          if p['name'] == s:
            a = p[poi][0]-p[poi][1]
            b = p[poi][2]-p[poi][1]
            #print "   * %s: %.4f, %.4f"%(s,a,b)
            # If one-sided then take highest variation
            if a*b > 0: 
              if abs(a) > abs(b):
                u_up += a*a
                u_down += a*a
              else:
                u_up += b*b
                u_down += b*b
            else:
              if a >= 0:
                u_up += a*a
                u_down += b*b
              else:
                u_up += b*b
                u_down += a*a
      print "   * %s: (+%.4f,-%.4f)"%(poi,math.sqrt(u_up),math.sqrt(u_down))
      OtherSystVals_exp[gr]['%s_up'%poi] = math.sqrt(u_up)
      OtherSystVals_exp[gr]['%s_down'%poi] = math.sqrt(u_down)


# Make plot
colorMap = {'r_ggH':ROOT.kAzure+7,'r_VBF':ROOT.kOrange-3,'r_VH':ROOT.kGreen+2,'r_top':ROOT.kPink+6}
ROOT.gStyle.SetOptStat(0)
nPOIs = len(opt.pois.split(","))
nGroups = len(ExpSystGroups.keys())+len(TheorySystGroups.keys())+len(OtherSystGroups.keys())
chunk_width = 150
canv_width = chunk_width*(nPOIs+3)
pad_width = (0.9-2*(float(chunk_width)/canv_width))/nPOIs
canv = ROOT.TCanvas("canv","canv",canv_width,800)
canv.SetLeftMargin(2*float(chunk_width)/canv_width)
# Define axes histogram for canvas
haxes_canv = ROOT.TH2F("h_axes","",nPOIs,0,nPOIs,nGroups+1,0,nGroups+1)
binLabels = ExpSystGroups.keys()
binLabels.extend(TheorySystGroups.keys())
binLabels.extend(OtherSystGroups.keys())
binLabels_rev = list(binLabels)
binLabels_rev.reverse()
for bidx in range(2,haxes_canv.GetNbinsY()+1): haxes_canv.GetYaxis().SetBinLabel(bidx,binLabels_rev[bidx-2])
haxes_canv.GetYaxis().SetLabelSize(0.03)
haxes_canv.GetYaxis().SetLabelOffset(0.006)
haxes_canv.GetYaxis().SetTickSize(0.)
haxes_canv.GetXaxis().SetTitle("Uncertainty in  #mu_{i}")
haxes_canv.GetXaxis().SetTitleSize(0.04)
haxes_canv.GetXaxis().SetLabelSize(0.)
haxes_canv.GetXaxis().SetTickSize(0.)
haxes_canv.Draw()

# Make pads for pois
pads = {}
lines = {}
for pidx in range(nPOIs):
  canv.cd()
  poi = opt.pois.split(",")[pidx]
  pads[poi] = ROOT.TPad("pad_%s"%poi,"pad_%s"%poi,2*float(chunk_width)/canv_width+pidx*pad_width,0.07,2*float(chunk_width)/canv_width+(pidx+1)*pad_width,1.)
  pads[poi].SetLeftMargin(0)
  pads[poi].SetRightMargin(0)
  pads[poi].SetBottomMargin(0.032258064)
  pads[poi].SetTopMargin(0.1075268817)
  pads[poi].Draw()

# Extract max_val
max_vals = {}
max_val = 0
for pidx in range(nPOIs):
  poi = opt.pois.split(",")[pidx]
  max_vals[poi] = 0
  for systVals in [ExpSystVals,TheorySystVals,OtherSystVals]:
    for gr,vals in systVals.iteritems():
      if abs(vals['%s_up'%poi]) > max_val: max_val = abs(vals['%s_up'%poi])
      if abs(vals['%s_down'%poi]) > max_val: max_val = abs(vals['%s_down'%poi])
      if abs(vals['%s_up'%poi]) > max_vals[poi]: max_vals[poi] = abs(vals['%s_up'%poi])
      if abs(vals['%s_down'%poi]) > max_vals[poi]: max_vals[poi] = abs(vals['%s_down'%poi])
  if opt.inputExpJson != '':
    for systVals in [ExpSystVals_exp,TheorySystVals_exp,OtherSystVals_exp]:
      for gr,vals in systVals.iteritems():
        if abs(vals['%s_up'%poi]) > max_val: max_val = abs(vals['%s_up'%poi])
        if abs(vals['%s_down'%poi]) > max_val: max_val = abs(vals['%s_down'%poi])
        if abs(vals['%s_up'%poi]) > max_vals[poi]: max_vals[poi] = abs(vals['%s_up'%poi])
        if abs(vals['%s_down'%poi]) > max_vals[poi]: max_vals[poi] = abs(vals['%s_down'%poi])

# Create 2D axes histograms for each pad
haxes = {}
for pidx in range(nPOIs):
  poi = opt.pois.split(",")[pidx]
  haxes[poi] = ROOT.TH2F("haxes_%s"%poi,"",1000,0,1.12*max_vals[poi],nGroups+1,0,nGroups+1)
  haxes[poi].GetYaxis().SetLabelSize(0.)
  haxes[poi].GetYaxis().SetTickSize(0.)
  haxes[poi].GetXaxis().SetTickSize(0.01)
  haxes[poi].GetXaxis().SetNdivisions(305) 
  haxes[poi].GetXaxis().SetLabelSize(0.1) 
  haxes[poi].GetXaxis().SetLabelOffset(-0.06) 
  haxes[poi].GetXaxis().SetRangeUser(0.001,haxes[poi].GetXaxis().GetXmax()) 
  pads[poi].cd()
  haxes[poi].Draw()

# Create TGraphAsymm Errors
graphs = {}
for pidx in range(nPOIs):
  poi = opt.pois.split(",")[pidx]
  graphs[poi] = ROOT.TGraphAsymmErrors()
  graphs[poi].SetMarkerSize(0)
  graphs[poi].SetLineWidth(0)
  graphs[poi].SetFillColor(colorMap[poi])
  binidx = 1
  for systVals in [ExpSystVals,TheorySystVals,OtherSystVals]:
    for gr,vals in systVals.iteritems():
      graphs[poi].SetPoint(binidx-1,0.001,nGroups-binidx+1.5)
      graphs[poi].SetPointError(binidx-1,0,max(abs(vals['%s_down'%poi]),abs(vals['%s_up'%poi])),0.25,0.25)
      binidx += 1
if opt.inputExpJson != '':
  graphs_exp = {}
  for pidx in range(nPOIs):
    poi = opt.pois.split(",")[pidx]
    graphs_exp[poi] = ROOT.TGraphAsymmErrors()
    graphs_exp[poi].SetMarkerSize(0)
    graphs_exp[poi].SetLineWidth(1)
    graphs_exp[poi].SetLineColor(1)
    graphs_exp[poi].SetFillColor(0)
    graphs_exp[poi].SetFillStyle(0)
    binidx = 1
    for systVals in [ExpSystVals_exp,TheorySystVals_exp,OtherSystVals_exp]:
      for gr,vals in systVals.iteritems():
        graphs_exp[poi].SetPoint(binidx-1,0.001,nGroups-binidx+1.5)
        graphs_exp[poi].SetPointError(binidx-1,0,max(abs(vals['%s_down'%poi]),abs(vals['%s_up'%poi])),0.25,0.25)
        binidx += 1

# Draw graphs
lat_labels = {}
legs = {}
gr_obs_dummy = ROOT.TGraph()
gr_obs_dummy.SetFillColor(ROOT.kGray)
gr_obs_dummy.SetLineWidth(0)
gr_obs_dummy.SetMarkerSize(0)
gr_exp_dummy = ROOT.TGraph()
gr_exp_dummy.SetFillStyle(0)
gr_exp_dummy.SetLineWidth(2)
gr_exp_dummy.SetLineColor(1)
gr_exp_dummy.SetMarkerSize(0)

for pidx in range(nPOIs):
  poi = opt.pois.split(",")[pidx]
  pads[poi].cd()
  graphs[poi].Draw("SAME E2")
  if opt.inputExpJson != '': graphs_exp[poi].Draw("SAME E2")
  haxes[poi].Draw("SAME AXIS")

  # Create lines
  for lidx in range(1,nGroups+1):
    lines["%s_%s"%(poi,lidx)] = ROOT.TLine(haxes[poi].GetXaxis().GetXmin(),lidx,haxes[poi].GetXaxis().GetXmax(),lidx)
    if lidx == len(TheorySystGroups.keys())+1:
      lines["%s_%s"%(poi,lidx)].SetLineWidth(1)
    else:
      lines["%s_%s"%(poi,lidx)].SetLineColorAlpha(ROOT.kGray,0.5)
      lines["%s_%s"%(poi,lidx)].SetLineWidth(1)
    lines["%s_%s"%(poi,lidx)].Draw("Same")
  for lidx in range(1,10):
    xval = 0.02*lidx
    if xval < haxes[poi].GetXaxis().GetXmax():
      lines["v_%s_%s"%(poi,lidx)] = ROOT.TLine(xval,0,xval,nGroups+1)
      lines["v_%s_%s"%(poi,lidx)].SetLineColorAlpha(ROOT.kGray,0.5)
      lines["v_%s_%s"%(poi,lidx)].Draw("Same")

  # Add label to each plot
  lat_labels[poi] = ROOT.TLatex()
  lat_labels[poi].SetTextFont(42)
  lat_labels[poi].SetTextAlign(31)
  lat_labels[poi].SetNDC()
  lat_labels[poi].SetTextSize(0.15)
  lat_labels[poi].DrawLatex(0.88,0.86,Translate(poi,translatePOIs))

  # Add legend to last two pads
  if pidx == (nPOIs-2):
    legs[poi] = ROOT.TLegend(0.05,0.04,0.9,0.08)
    legs[poi].SetFillColor(0)
    legs[poi].SetFillStyle(0)
    legs[poi].SetLineColor(0)
    legs[poi].SetLineWidth(0)
    legs[poi].SetTextSize(0.12)
    legs[poi].AddEntry(gr_obs_dummy,"Observed","F")
    legs[poi].Draw("Same")
  elif pidx == (nPOIs-1):
    legs[poi] = ROOT.TLegend(0.05,0.04,0.9,0.08)
    legs[poi].SetFillColor(0)
    legs[poi].SetFillStyle(0)
    legs[poi].SetLineColor(0)
    legs[poi].SetLineWidth(0)
    legs[poi].SetTextSize(0.12)
    legs[poi].AddEntry(gr_exp_dummy,"Expected","F")
    legs[poi].Draw("Same")

# Add text to plot
canv.cd()
lat = ROOT.TLatex()
lat.SetTextFont(42)
lat.SetTextAlign(11)
lat.SetNDC()
lat.SetTextSize(0.04)
lat.DrawLatex(2*(float(chunk_width)/canv_width),0.92,"#bf{CMS} #it{Preliminary}")
lat2 = ROOT.TLatex()
lat2.SetTextFont(42)
lat2.SetTextAlign(31)
lat2.SetNDC()
lat2.SetTextSize(0.04)
lat2.DrawLatex(0.9,0.92,"137 fb^{-1} (13 TeV)")

canv.Print("/eos/home-j/jlangfor/www/CMS/hgg/stxs_runII/May20/pass0/checks/syst_new.png")
canv.Print("/eos/home-j/jlangfor/www/CMS/hgg/stxs_runII/May20/pass0/checks/syst_new.pdf")
