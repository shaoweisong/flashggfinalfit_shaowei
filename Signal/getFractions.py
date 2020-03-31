# Script to calculate eff x acc for different mass points
print " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ HGG GET FRACTIONS MAKER RUN II ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
import os, sys
import re
from optparse import OptionParser
import ROOT
import pandas as pd
import glob
import pickle
def leave():
  print " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ HGG GET FRACTIONS RUN II (END) ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
  sys.exit(1)


from os import listdir
import ROOT as r
r.gROOT.SetBatch(True)
from collections import OrderedDict as od
import re, sys

catsSplittingScheme = {
  'tagsetone':['RECO_0J_PTH_0_10_Tag0', 'RECO_0J_PTH_0_10_Tag1', 'RECO_0J_PTH_0_10_Tag2', 'RECO_0J_PTH_GT10_Tag0', 'RECO_0J_PTH_GT10_Tag1', 'RECO_0J_PTH_GT10_Tag2', 'RECO_1J_PTH_0_60_Tag0', 'RECO_1J_PTH_0_60_Tag1', 'RECO_1J_PTH_0_60_Tag2', 'RECO_1J_PTH_60_120_Tag0', 'RECO_1J_PTH_60_120_Tag1', 'RECO_1J_PTH_60_120_Tag2', 'RECO_1J_PTH_120_200_Tag0', 'RECO_1J_PTH_120_200_Tag1', 'RECO_1J_PTH_120_200_Tag2', 'RECO_GE2J_PTH_0_60_Tag0', 'RECO_GE2J_PTH_0_60_Tag1', 'RECO_GE2J_PTH_0_60_Tag2', 'RECO_GE2J_PTH_60_120_Tag0', 'RECO_GE2J_PTH_60_120_Tag1', 'RECO_GE2J_PTH_60_120_Tag2', 'RECO_GE2J_PTH_120_200_Tag0', 'RECO_GE2J_PTH_120_200_Tag1', 'RECO_GE2J_PTH_120_200_Tag2','NOTAG'],
  'tagsettwo':['RECO_PTH_200_300_Tag0', 'RECO_PTH_200_300_Tag1', 'RECO_PTH_300_450_Tag0', 'RECO_PTH_300_450_Tag1', 'RECO_PTH_450_650_Tag0', 'RECO_PTH_450_650_Tag1', 'RECO_PTH_GT650_Tag0', 'RECO_PTH_GT650_Tag1', 'RECO_VBFTOPO_VHHAD_Tag0', 'RECO_VBFTOPO_VHHAD_Tag1', 'RECO_VBFTOPO_JET3VETO_LOWMJJ_Tag0', 'RECO_VBFTOPO_JET3VETO_LOWMJJ_Tag1', 'RECO_VBFTOPO_JET3VETO_HIGHMJJ_Tag0', 'RECO_VBFTOPO_JET3VETO_HIGHMJJ_Tag1', 'RECO_VBFTOPO_JET3_LOWMJJ_Tag0', 'RECO_VBFTOPO_JET3_LOWMJJ_Tag1', 'RECO_VBFTOPO_JET3_HIGHMJJ_Tag0', 'RECO_VBFTOPO_JET3_HIGHMJJ_Tag1', 'RECO_VBFTOPO_BSM_Tag0', 'RECO_VBFTOPO_BSM_Tag1', 'RECO_VBFLIKEGGH_Tag0', 'RECO_VBFLIKEGGH_Tag1'],
  'tagsetthree':['RECO_TTH_HAD_LOW_Tag0', 'RECO_TTH_HAD_LOW_Tag1', 'RECO_TTH_HAD_LOW_Tag2', 'RECO_TTH_HAD_LOW_Tag3', 'RECO_TTH_HAD_HIGH_Tag0', 'RECO_TTH_HAD_HIGH_Tag1', 'RECO_TTH_HAD_HIGH_Tag2', 'RECO_TTH_HAD_HIGH_Tag3', 'RECO_WH_LEP_LOW_Tag0', 'RECO_WH_LEP_LOW_Tag1', 'RECO_WH_LEP_LOW_Tag2', 'RECO_WH_LEP_HIGH_Tag0', 'RECO_WH_LEP_HIGH_Tag1', 'RECO_WH_LEP_HIGH_Tag2', 'RECO_ZH_LEP_Tag0', 'RECO_ZH_LEP_Tag1', 'RECO_TTH_LEP_LOW_Tag0', 'RECO_TTH_LEP_LOW_Tag1', 'RECO_TTH_LEP_LOW_Tag2', 'RECO_TTH_LEP_LOW_Tag3', 'RECO_TTH_LEP_HIGH_Tag0', 'RECO_TTH_LEP_HIGH_Tag1', 'RECO_TTH_LEP_HIGH_Tag2', 'RECO_TTH_LEP_HIGH_Tag3', 'RECO_THQ_LEP']
  }

def get_options():
  parser = OptionParser()
  parser.add_option('--ext', default='test', help='Extension (to define analysis)')
  parser.add_option('--cats', dest='cats', default='', help='Comma separated list of analysis categories (no year tags)')
  parser.add_option('-m', '--mass', dest='mass', default='125', help='MH')
  parser.add_option('--inputWSDir', dest='inputWSDir', default='', help='Input WS directory')
  parser.add_option('--tagSplit', dest='tagSplit', default=False, action="store_true", help="If tags are split according to above splitting scheme")
  parser.add_option('--skipCOWCorr', dest='skipCOWCorr', default=False, action="store_true", help="Skip centralObjectWeight correction for events in acceptance")
  parser.add_option('--doFractions', dest='doFractions', default=False, action="store_true", help="Fractional yields in each STXS bin. Make sure you include all possible categories")
  parser.add_option('--doEffAcc', dest='doEffAcc', default=False, action="store_true", help="Print out eff x acc to json file (to be read by signal modelling")
  return parser.parse_args()
(opt,args) = get_options()

proc_map = {"GG2H":"ggh","VBF":"vbf","WH2HQQ":"wh","ZH2HQQ":"zh","QQ2HLNU":"wh","QQ2HLL":"zh","TTH":"tth","BBH":"bbH","THQ":"thq","THW":"thw","TH":"th"}
def procToData( _proc, pmap=proc_map ):
  for key in pmap:
    if key == _proc.split("_")[0]: _proc = re.sub( key, pmap[key], _proc )
  return _proc

# Extract processes and nominal names from tagsetone
baseFilePath  = opt.inputWSDir
if not baseFilePath.endswith('/'): baseFilePath += '/'
if opt.tagSplit: baseFilePath += "tagsetone/"
fileNames     = []
for fileName in listdir(baseFilePath): 
  if not fileName.startswith('output_'): continue
  if not fileName.endswith('.root'):     continue
  fileNames.append(fileName)
fullFileNames = '' 
for fileName in fileNames: fullFileNames += baseFilePath+fileName+','
fullFileNames = fullFileNames[:-1]
fullFileNames = fullFileNames.split(',')

# Add No tag to cats
if "NOTAG" not in opt.cats: opt.cats += ",NOTAG"

# Define dataframe to store yields: cow = centralObjectWeight
if opt.skipCOWCorr: columns_data = ['proc','cat','granular_key','nominal_yield']
else: columns_data = ['proc','cat','granular_key','nominal_yield','nominal_yield_COWCorr']
data = pd.DataFrame( columns=columns_data )

# Loop over files and fill entries in dataframe
for _fileName in fullFileNames:
  if 'M%s'%opt.mass not in _fileName: continue 
  _proc = _fileName.split('pythia8_')[1].split('.root')[0]
  print " --> Processing: %s"%_proc
  _f, _ws = {}, {}
  if opt.tagSplit:
    for ts in catsSplittingScheme.keys():
      _f[ts] = ROOT.TFile(re.sub("tagsetone",ts,_fileName),'READ')
      _ws[ts] = _f[ts].Get("tagsDumper/cms_hgg_13TeV")
  else:
    _f['alltags'] = ROOT.TFile(_fileName,'read')
    _ws['alltags'] = _f['alltags'].Get("tagsDumper/cms_hgg_13TeV")

  # Loop over categories
  for _cat in opt.cats.split(","):
    key = 'alltags'
    if opt.tagSplit:
      for ts,tsCats in catsSplittingScheme.iteritems():
        if _cat in tsCats: key = ts

    _nominalDataName = "%s_125_13TeV_%s"%(procToData(_proc.split("_")[0]),_cat)
    _granular_key = "%s__%s"%(_proc,_cat)
    _nominalData = _ws[key].data(_nominalDataName)
    _nominal_yield = _nominalData.sumEntries()
    if not opt.skipCOWCorr:
      if "NOTAG" in _cat: _nominal_yield_COWCorr = _nominal_yield
      else:
	# Loop over events and sum w/centralObjWeight
	_nominal_yield_COWCorr = 0
	for i in range(_nominalData.numEntries()):
	  p = _nominalData.get(i)
	  w = _nominalData.weight()
	  f_central = p.getRealValue("centralObjectWeight")
	  if f_central == 0: continue
	  else:
	    _nominal_yield_COWCorr += w/f_central
      
    
    if opt.skipCOWCorr: data.loc[len(data)] = [_proc,_cat,_granular_key,_nominal_yield]
    else: data.loc[len(data)] = [_proc,_cat,_granular_key,_nominal_yield,_nominal_yield_COWCorr]

# Calculate fractions
if opt.doFractions:
  if opt.skipCOWCorr:
    print " --> [ERROR] Must include centralObjectWeight corrections for signal normalisation fractions"
    leave()
  print "\n --> Stage 1.2 fractions:"
  for proc_s0 in ['GG2H','VBF','WH2HQQ','ZH2HQQ','QQ2HLNU','QQ2HLL','TTH','TH','THQ','THW','BBH']:
    mask = (data.apply( lambda x: x['proc'].split("_")[0] == proc_s0, axis=1))
    proc_s0_yield = data[mask].nominal_yield_COWCorr.sum()
    if proc_s0_yield > 0:
      print " * %s:"%proc_s0
      for proc in data[mask].proc.unique():
        mask = (data['proc']==proc)
        proc_yield = data[mask].nominal_yield_COWCorr.sum()
        print "    * %s = %.4f"%(proc,proc_yield/proc_s0_yield)
        
# Calculate eff x Acc and store in json
if opt.doEffAcc:
  if not os.path.isdir("jsons"): os.mkdir("./jsons")
  if not opt.skipCOWCorr: 
    with open("jsons/granularEffAcc_%s.json"%opt.ext,'w') as outFile:
      for ir,r in data.iterrows():
        if r['cat']=='NOTAG': continue
        proc_yield = data[data['proc']==r['proc']].nominal_yield_COWCorr.sum() # include COW correction
        ea = r['nominal_yield']/proc_yield
        if ea < 0.: ea = 0.
        outFile.write("%s %.6f\n"%(r['granular_key'],ea))
    print " --> Written eff x acc (with central object weight correction): jsons/granularEffAcc_%s.json"%opt.ext
  with open("jsons/granularEffAcc_%s_skipCOWCorr.json"%opt.ext,'w') as outFile:
    for ir,r in data.iterrows():
      if r['cat']=='NOTAG': continue
      proc_yield = data[data['proc']==r['proc']].nominal_yield.sum()
      ea = r['nominal_yield']/proc_yield
      if ea < 0.: ea = 0.
      outFile.write("%s %.6f\n"%(r['granular_key'],ea))
  print " --> Written eff x acc (no central object weight correction): jsons/granularEffAcc_%s_skipCOWCorr.json"%opt.ext
