# Config file: options for signal fitting

backgroundScriptCfg = {
  
  # Setup
  'inputWSDir':'/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_2016pre_cat34FHhighpurity', # location of 'allData.root' file
  'cats':'auto', # auto: automatically inferred from input ws
  'catOffset':0, # add offset to category numbers (useful for categories from different allData.root files)  
  'ext':'ws_2016pre_cat34FHhighpurity', # extension to add to output directory
  # 'year':'2016pre', # Use combined when merging all years in category (for plots)
  'year':'2016pre', # Use combined when merging all years in category (for plots)

  # Job submission options
  'batch':'local', # [condor,SGE,IC,local]
  'queue':'hep.q' # for condor e.g. microcentury
  
}
