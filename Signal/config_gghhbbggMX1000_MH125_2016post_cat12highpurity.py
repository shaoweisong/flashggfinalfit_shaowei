# Config file: options for signal fitting

_year = '2016post'
# _year = '2017'

signalScriptCfg = {
  
  # Setup
  'inputWSDir':'/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhbbgg_MX1000_MH125_2016post_cat12highpurity',
  'procs':'auto', # if auto: inferred automatically from filenames
  'cats':'auto', # if auto: inferred automatically from (0) workspace
  'ext':'dcb_%s_MX1000_MH125_2016post_cat12highpurity'%_year,
  'analysis':'STXS', # To specify which replacement dataset mapping (defined in ./python/replacementMap.py)
  'year':'%s'%_year, # Use 'combined' if merging all years: not recommended
  'massPoints':'125',

  #Photon shape systematics  
  'scales':'scale', # separate nuisance per year
  'scalesCorr':'material,fnuf', # correlated across years
  'scalesGlobal':'', # affect all processes equally, correlated across years
  'smears':'smear', # separate nuisance per year

  # Job submission options
  'batch':'local', # ['condor','SGE','IC','local']
  'queue':'hep.q'
  #'batch':'condor', # ['condor','SGE','IC','local']
  #'queue':'espresso',

}
