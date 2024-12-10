#test on 1TeV cat3
#create workspace
python trees2ws.py --inputConfig config_sys.py --inputTreeFile /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/output_NMSSM_XToYHTo2W2G_SL1000_cat3lowpt_2016pre_M125_gghh.root  --inputMass 125 --productionMode gghh --year 2016pre --doSystematics
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
combine -M AsymptoticLimits -m 125 -n test -d Datacard_M2200_FH_2016pre_combineFHSL_cat5highpt.txt --run expected --freezeParameters allConstrainedNuisances  


#->Impact
# text2workspace.py Datacard.txt -m 125

# combineTool.py -M Impacts -d Datacard.root -m 125 --freezeParameters MH -n .impacts  --doInitialFit --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints
   
# combineTool.py -M Impacts -d Datacard.root -m 125 --freezeParameters MH -n .impacts  --doFits --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints

# combineTool.py -M Impacts -d Datacard.root -m 125 --freezeParameters MH -n .impacts --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints  -o impacts_part3_cat3.json
# plotImpacts.py -i impacts_part3_cat3.json -o impacts_part3_cat3
#from fabio
text2workspace.py Datacard_MX3000_MH125_2017_cat12.txt -m 125
combineTool.py -v 10 -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -t -1 --toysFrequentist -m 125 --setParameters r=1.0 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameterRanges r=-40000.0,40000.0 --doInitialFit --task-name initialFit 2>&1 | tee initialFit.log
combineTool.py -v 10 -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -t -1 --toysFrequentist -m 125 --setParameters r=1.0 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameterRanges r=-40000.0,40000.0 --doFits
combineTool.py -v 10 -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -t -1 -m 125 --setParameters r=1.0 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameterRanges r=-40000.0,40000.0 --output impacts_r.json
plotImpacts.py -i impacts_r.json -o impacts_r

text2workspace.py Datacard_M500_FH_2016pre_combine.txt -m 125

combineTool.py -v 10 -M Impacts -d Datacard_M500_FH_2016pre_combine.root -t -1 --toysFrequentist -m 125 --setParameters r=1.0 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameterRanges r=-40000.0,40000.0 --doInitialFit --task-name initialFit 2>&1 | tee initialFit.log

combineTool.py -M Impacts -d Datacard_M500_FH_2016pre_combine.root -t -1 -m 125 --setParameters r=1.0 --setParameterRanges r=-40000.0,40000.0 --doInitialFit --toysFrequentist





combineTool.py -v 10 -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -t -1 --toysFrequentist -m 125 --setParameters r=1.0 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameterRanges r=-600.0,600.0 --doInitialFit --task-name initialFit 2>&1 | tee initialFit.log

combineTool.py -v 10 -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -t -1 --toysFrequentist -m 125 --setParameters r=1.0 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameterRanges r=-600.0,600.0 --doFits

combineTool.py -v 10 -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -t -1 -m 125 --setParameters r=1.0 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameterRanges r=-600.0,600.0 --output impacts_r.json






text2workspace.py Datacard_MX3000_MH125_2017_cat12.txt -m 125
combineTool.py -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-1000,1000 --doInitialFit -t -1 --expectSignal 1 --robustFit 1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints 
combineTool.py -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-1000,1000 --doFits -t -1 --expectSignal 1 --robustFit 1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints 

combineTool.py -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-1000,1000  -t -1 --expectSignal 1 --robustFit 1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --output impacts_run2.json
plotImpacts.py -i impacts_run2.json -o impacts_run2











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

# python RunYields.py --inputWSDirMap 2016pre=/eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/M1000_FH/ws_gghhFH_M1000_FH_2016pre_combineFHSL_cat3lowpt/ --cats auto --procs auto --doSystematics --batch local --sigModelWSDir /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/M1000_FH/ws_gghhFH_M1000_FH_2016pre_combineFHSL_cat3lowpt/ --bkgModelWSDir  /eos/user/s/shsong/HHWWgg_limit/optimise/cat3/2016pre/flashgginput/M1000_FH/ws_gghhFH --ext combineFHSL_cat3lowpt_FH1000lowpt










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
python RunYields.py --inputWSDirMap 2017=/eos/user/s/shsong/HHWWgg_limit/optimise/cat2/2017/flashgginput/M1000_SL/ws_2017_combineFHSL_cat2lowpt --cats auto --procs auto --doSystematics --batch local --sigModelWSDir /eos/user/s/shsong/HHWWgg_limit/optimise/cat2/2017/flashgginput/M1000_SL/ws_gghhSL_M1000_SL_2017_combineFHSL_cat2lowpt --bkgModelWSDir  /eos/user/s/shsong/HHWWgg_limit/optimise/cat2/2017/flashgginput/M1000_SL/ws_2017_combineFHSL_cat2lowpt --ext combineFHSL_cat2lowptSL1000
python RunYields.py --inputWSDirMap 2017=/eos/user/s/shsong/HHWWgg_limit/optimise/cat2/2017/flashgginput/M1000_SL/ws_2017_combineFHSL_cat2lowpurity --cats auto --procs auto --doSystematics --batch local --sigModelWSDir /eos/user/s/shsong/HHWWgg_limit/optimise/cat2/2017/flashgginput/M1000_SL/ws_gghhSL_M1000_SL_2017_combineFHSL_cat2lowpurity --bkgModelWSDir  /eos/user/s/shsong/HHWWgg_limit/optimise/cat2/2017/flashgginput/M1000_SL/ws_2017_combineFHSL_cat2lowpurity --ext combineFHSL_cat2lowpuritySL1000
python makeDatacard.py --years 2016pre --prune --doSystematics --ext combineFHSL_cat3highpt_FH1000highpt --output Datacard_M100_combineFHSL_cat3highpt_FH


text2workspace.py Datacard_MX3000_MH125_2017_cat12.txt -m 125
combineTool.py -v 10 -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -t -1 --toysFrequentist -m 125 --setParameters r=1.0 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameterRanges r=-10000.0,10000.0 --doInitialFit --task-name initialFit 2>&1 | tee initialFit.log
combineTool.py -v 10 -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -t -1 --toysFrequentist -m 125 --setParameters r=1.0 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameterRanges r=-1000.0,1000.0 --doFits
combineTool.py -v 10 -M Impacts -d Datacard_MX3000_MH125_2017_cat12.root -t -1 -m 125 --setParameters r=1.0 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameterRanges r=-1000.0,1000.0 --output impacts_r.json
plotImpacts.py -i impacts_r.json -o impacts_r




combineTool.py -M FastScan -w workspace.root:w --setParameterRanges r=-0.1,0.1
--setParameterRanges env_pdf_0_2017_13TeV*=-2000.0,2000.0
--setParameterRanges env_pdf_0_2017_13TeV*=-2000.0,2000.0
--setParameterRanges env_pdf_0_2017_13TeV*=-2000.0,2000.0

text2workspace.py Datacard_MX850_MH125_run2_cat1234.txt -m 125
combine -M AsymptoticLimits -m 125 -n test -d Datacard_MX850_MH125_run2_cat1234.root --run expected 
combineTool.py -M Impacts -d Datacard_MX850_MH125_run2_cat1234.root -t -1 --toysFrequentist -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH   --setParameters r=3.8 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doInitialFit --task-name initialFit 
combineTool.py -M Impacts -d Datacard_MX850_MH125_run2_cat1234.root -t -1 -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH   --setParameters r=3.8 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doFits  2>&1 | tee Fit.log
combineTool.py -M Impacts -d Datacard_MX850_MH125_run2_cat1234.root -t -1 -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH   --setParameters r=3.8 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --output impacts_r.json
plotImpacts.py -i impacts_r.json -o impacts_r --blind