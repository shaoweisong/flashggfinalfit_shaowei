#->Treeworkspace

python trees2ws.py --inputConfig config_sys.py --inputTreeFile /eos/user/s/shsong/HHWWgg_allsys/root/output_NMSSM_XToYHTo2W2G_SL1400_allcat_2016_M125.root  --inputMass 125 --productionMode gghh --year 2016 --doSystematics
mv output_NMSSM_XToYHTo2W2G_SL1400_allcat_2016_M125_gghh.root output_NMSSM_XToYHTo2W2G_SL1400_allcat_2016_M125_pythia8_gghh.root

python trees2ws_data.py --inputConfig config_simple.py --inputTreeFile /eos/user/s/shsong/HHWWgg_allsys/root/Data_2016_allcat.root
mv Data_2016_allcat.root allData.root
#->Background
python RunBackgroundScripts.py --inputConfig config_test.py --mode fTestParallel
cp outdir_allcat/CMS-HGG_multipdf_RECO_all_allcat.root /eos/user/s/shsong/HHWWgg_allsys/root/ws/CMS-HGG_multipdf_RECO_all_allcat_2016.root
#->Signal
python RunSignalScripts.py --inputConfig config_sys.py  --mode 'fTest'
python RunSignalScripts.py --inputConfig config_sys.py  --mode calcPhotonSyst
python RunSignalScripts.py --inputConfig config_sys.py --mode getEffAcc

python RunSignalScripts.py --inputConfig config_sys.py --mode signalFit
# cp outdir_dcb_2016/signalFit/output/CMS-HGG_sigfit_dcb_2016_gghh_2016_RECO_all_allcat.root /eos/user/s/shsong/HHWWgg_allsys/root/ws_gghh
python RunPackager.py --cats RECO_all_allcat --exts dcb_2016  --batch local  --massPoints 125 --year 2016 --outputExt packaged 
cp ./outdir_packaged/CMS-HGG_sigfit_packaged_RECO_all_allcat_2016.root /eos/user/s/shsong/HHWWgg_allsys/root/ws_gghh

#->Datacard
python RunYields.py --inputWSDirMap 2016=/eos/user/s/shsong/HHWWgg_allsys/root/ws_gghh --sigModelWSDir /eos/user/s/shsong/HHWWgg_allsys/root/ws_gghh --bkgModelWSDir  /eos/user/s/shsong/HHWWgg_allsys/root/ws --cats auto --procs auto --batch local --ext RECO_all_allcat >RECO_all_allcat.log 2>&1
python makeDatacard.py --years 2016 --prune --ext 'RECO_all_allcat' --output Datacard_RECO_all_allcat
text2workspace.py Datacard_RECO_all_allcat.txt -m 125

#->Impact
combineTool.py -M Impacts -d Datacard_RECO_all_allcat.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=0.5,2.5 --doInitialFit --robustFit 1
