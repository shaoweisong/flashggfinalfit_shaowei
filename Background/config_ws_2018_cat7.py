# Config file: options for signal fitting

backgroundScriptCfg = {
  
  # Setup
  'inputWSDir':'/eos/user/s/shsong/HHWWgg_limit/optimise/cat7/2018/flashgginput/M1000_FH/ws_2018_cat7', # location of 'allData.root' file
  'cats':'auto', # auto: automatically inferred from input ws
  'catOffset':0, # add offset to category numbers (useful for categories from different allData.root files)  
  'ext':'ws_2018_cat7', # extension to add to output directory
  # 'year':'2016pre', # Use combined when merging all years in category (for plots)
  'year':'2018', # Use combined when merging all years in category (for plots)

  # Job submission options
  'batch':'local', # [condor,SGE,IC,local]
  'queue':'hep.q' # for condor e.g. microcentury
  
}
