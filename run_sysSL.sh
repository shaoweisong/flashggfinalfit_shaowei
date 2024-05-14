#test on 1TeV cat3
#create workspace
python trees2ws.py --inputConfig config_sys.py --inputTreeFile /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/output_NMSSM_XToYHTo2W2G_SL1000_cat3lowpt_2016pre_M125_gghh.root  --inputMass 125 --productionMode gghh_SL --year 2016pre --doSystematics
#create cat3lowpt workspace
mkdir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_SL1000lowpt
mv /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh/output_NMSSM_XToYHTo2W2G_SL1000_cat3lowpt_2016pre_M125_gghh_gghh.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_SL1000lowpt/output_NMSSM_XToYHTo2W2G_SL1000_cat3lowpt_2016pre_M125_pythia8_gghh.root

python trees2ws_data.py --inputConfig config_simple.py --inputTreeFile /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/Data_2016_cat3lowpt.root
mkdir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_lowpt
mv /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws/Data_2016_cat3lowpt.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_lowpt/allData.root
#Background
#need to change the inputConfig 
python RunBackgroundScripts.py --inputConfig config_cat3lowpt.py --mode fTestParallel
#outdir_catname
mv outdir_combineFHSL_cat3lowpt/CMS-HGG_multipdf_combineFHSL_cat3lowpt.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_lowpt/CMS-HGG_multipdf_combineFHSL_cat3lowpt_2016.root

#->Signal
#need to change the inputConfig
python RunSignalScripts.py --inputConfig config_sys.py  --mode 'fTest'
python RunSignalScripts.py --inputConfig config_sys.py  --mode calcPhotonSyst
python RunSignalScripts.py --inputConfig config_sys.py --mode signalFit
python RunPackager.py --cats combineFHSL_cat3lowpt --exts dcb_2016pre  --batch local  --massPoints 125 --year 2016pre --outputExt packaged 
mv ./outdir_packaged/CMS-HGG_sigfit_packaged_combineFHSL_cat3lowpt_2016pre.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_SL1000lowpt

#->Datacard
python RunYields.py --inputWSDirMap 2016pre=/eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_SL1000lowpt --cats auto --procs auto --doSystematics --batch local --sigModelWSDir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_SL1000lowpt --bkgModelWSDir  /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_lowpt --ext combineFHSL_cat3lowpt_SL1000lowpt
python makeDatacard.py --years 2016pre --prune --doSystematics --ext combineFHSL_cat3lowpt_SL1000lowpt --output Datacard_M100_combineFHSL_cat3lowpt_SL
#->Impact
text2workspace.py Datacard.txt -m 125

combineTool.py -M Impacts -d Datacard.root -m 125 --freezeParameters MH -n .impacts  --doInitialFit --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints
   
combineTool.py -M Impacts -d Datacard.root -m 125 --freezeParameters MH -n .impacts  --doFits --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints

combineTool.py -M Impacts -d Datacard.root -m 125 --freezeParameters MH -n .impacts --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints  -o impacts_part3_cat3.json
plotImpacts.py -i impacts_part3_cat3.json -o impacts_part3_cat3


#test on 1TeV cat3
#create workspace
python trees2ws.py --inputConfig config_sys.py --inputTreeFile /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/output_NMSSM_XToYHTo2W2G_FH1000_cat3lowpt_2016pre_M125_gghh.root  --inputMass 125 --productionMode gghh --year 2016pre --doSystematics
#create cat3lowpt workspace
mkdir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_FH1000lowpt
mv /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh/output_NMSSM_XToYHTo2W2G_FH1000_cat3lowpt_2016pre_M125_gghh_gghh.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_FH1000lowpt/output_NMSSM_XToYHTo2W2G_FH1000_cat3lowpt_2016pre_M125_pythia8_gghh.root

python trees2ws_data.py --inputConfig config_simple.py --inputTreeFile /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/Data_2016_cat3lowpt.root
mkdir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_lowpt
mv /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws/Data_2016_cat3lowpt.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_lowpt/allData.root


#->Signal
#need to change the inputConfig
cp config_sys.py config_cat3FH1000lowpt.py
sed -i 's/SL1000/FH1000/g' config_cat3FH1000lowpt.py
python RunSignalScripts.py --inputConfig config_cat3FH1000lowpt.py  --mode 'fTest'
python RunSignalScripts.py --inputConfig config_cat3FH1000lowpt.py  --mode calcPhotonSyst
python RunSignalScripts.py --inputConfig config_cat3FH1000lowpt.py --mode signalFit
python RunPackager.py --cats combineFHSL_cat3lowpt --exts dcb_2016pre  --batch local  --massPoints 125 --year 2016pre --outputExt packaged 
mv ./outdir_packaged/CMS-HGG_sigfit_packaged_combineFHSL_cat3lowpt_2016pre.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_FH1000lowpt

#->Datacard
python RunYields.py --inputWSDirMap 2016pre=/eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_FH1000lowpt --cats auto --procs auto --doSystematics --batch local --sigModelWSDir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_FH1000lowpt --bkgModelWSDir  /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_lowpt --ext combineFHSL_cat3lowpt_FH1000lowpt
python makeDatacard.py --years 2016pre --prune --doSystematics --ext combineFHSL_cat3lowpt_FH1000lowpt --output Datacard_M100_combineFHSL_cat3lowpt_FH











#test on 1TeV cat3
#create workspace
python trees2ws.py --inputConfig config_sys.py --inputTreeFile /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/output_NMSSM_XToYHTo2W2G_SL1000_cat3highpt_2016pre_M125_gghh.root  --inputMass 125 --productionMode gghh --year 2016pre --doSystematics
#create cat3highpt workspace
mkdir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_SL1000highpt
mv /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh/output_NMSSM_XToYHTo2W2G_SL1000_cat3highpt_2016pre_M125_gghh_gghh.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_SL1000highpt/output_NMSSM_XToYHTo2W2G_SL1000_cat3highpt_2016pre_M125_pythia8_gghh.root

python trees2ws_data.py --inputConfig config_simple.py --inputTreeFile /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/Data_2016_cat3highpt.root
mkdir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_highpt
mv /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws/Data_2016_cat3highpt.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_highpt/allData.root
#Background
#need to change the inputConfig 
cp config_cat3lowpt.py config_cat3highpt.py
sed -i 's/lowpt/highpt/g' config_cat3highpt.py
python RunBackgroundScripts.py --inputConfig config_cat3highpt.py --mode fTestParallel
#outdir_catname
mv outdir_combineFHSL_cat3highpt/CMS-HGG_multipdf_combineFHSL_cat3highpt.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_highpt/CMS-HGG_multipdf_combineFHSL_cat3highpt_2016.root

#->Signal
#need to change the inputConfig
cp config_sys.py config_cat3SL1000highpt.py
sed -i 's/SL1000lowpt/SL1000highpt/g' config_cat3SL1000highpt.py
python RunSignalScripts.py --inputConfig config_cat3SL1000highpt.py  --mode 'fTest'
python RunSignalScripts.py --inputConfig config_cat3SL1000highpt.py  --mode calcPhotonSyst
python RunSignalScripts.py --inputConfig config_cat3SL1000highpt.py --mode signalFit
python RunPackager.py --cats combineFHSL_cat3highpt --exts dcb_2016pre  --batch local  --massPoints 125 --year 2016pre --outputExt packagedcat3SL1000highpt 
mv ./outdir_packagedcat3SL1000highpt/CMS-HGG_sigfit_packaged_combineFHSL_cat3highpt_2016pre.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_SL1000highpt

#->Datacard
python RunYields.py --inputWSDirMap 2016pre=/eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_SL1000highpt --cats auto --procs auto --doSystematics --batch local --sigModelWSDir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_SL1000highpt --bkgModelWSDir  /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_highpt --ext combineFHSL_cat3highpt_SL1000highpt
python makeDatacard.py --years 2016pre --prune --doSystematics --ext combineFHSL_cat3highpt_SL1000highpt --output Datacard_M100_combineFHSL_cat3highpt_SL

#test on 1TeV cat3
#create workspace

python trees2ws.py --inputConfig config_sys.py --inputTreeFile /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/output_NMSSM_XToYHTo2W2G_FH1000_cat3highpt_2016pre_M125_gghh.root  --inputMass 125 --productionMode gghh --year 2016pre --doSystematics
#create cat3highpt workspace
mkdir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_FH1000highpt

mv /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh/output_NMSSM_XToYHTo2W2G_FH1000_cat3highpt_2016pre_M125_gghh_gghh.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_FH1000highpt/output_NMSSM_XToYHTo2W2G_FH1000_cat3highpt_2016pre_M125_pythia8_gghh.root

#->Signal
#need to change the inputConfig
cp config_cat3SL1000highpt.py config_cat3FH1000highpt.py
sed -i 's/SL1000/FH1000/g' config_cat3FH1000highpt.py
python RunSignalScripts.py --inputConfig config_cat3FH1000highpt.py  --mode 'fTest'
python RunSignalScripts.py --inputConfig config_cat3FH1000highpt.py  --mode calcPhotonSyst
python RunSignalScripts.py --inputConfig config_cat3FH1000highpt.py --mode signalFit
python RunPackager.py --cats combineFHSL_cat3highpt --exts dcb_2016pre  --batch local  --massPoints 125 --year 2016pre --outputExt packagedcat3FH1000highpt 
mv ./outdir_packagedcat3FH1000highpt/CMS-HGG_sigfit_packagedcat3FH1000highpt_combineFHSL_cat3highpt_2016pre.root /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_FH1000highpt

#->Datacard
python RunYields.py --inputWSDirMap 2016pre=/eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_FH1000highpt --cats auto --procs auto --doSystematics --batch local --sigModelWSDir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_gghh_FH1000highpt --bkgModelWSDir  /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/ws_highpt --ext combineFHSL_cat3highpt_FH1000highpt
python makeDatacard.py --years 2016pre --prune --doSystematics --ext combineFHSL_cat3highpt_FH1000highpt --output Datacard_M100_combineFHSL_cat3highpt_FH


