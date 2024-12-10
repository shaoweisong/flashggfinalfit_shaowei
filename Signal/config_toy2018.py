# Config file: options for signal fitting

_year = '2018'

signalScriptCfg = {
  
  # Setup
  'inputWSDir':'input_pathws_gghh_ws_path',
  'procs':'auto', # if auto: inferred automatically from filenames
  'cats':'auto', # if auto: inferred automatically from (0) workspace
  'ext':'dcb_%s_ws_path'%_year,
  'analysis':'STXS', # To specify which replacement dataset mapping (defined in ./python/replacementMap.py)
  'year':'%s'%_year, # Use 'combined' if merging all years: not recommended
  'massPoints':'125',

  #Photon shape systematics  
  # 'scales':'scale', # separate nuisance per year
  'scales':'', # separate nuisance per year
  'scalesCorr':'', # correlated across years
  'scalesGlobal':'', # affect all processes equally, correlated across years
  'smears':'', # separate nuisance per year

  # 'scalesCorr':'material,fnuf', # correlated across years
  # 'scalesGlobal':'', # affect all processes equally, correlated across years
  # 'smears':'smear', # separate nuisance per year

  # Job submission options
  'batch':'local', # ['condor','SGE','IC','local']
  'queue':'hep.q'
  #'batch':'condor', # ['condor','SGE','IC','local']
  #'queue':'espresso',

}
