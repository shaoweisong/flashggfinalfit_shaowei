WhichSamples=${1}
if [ ${WhichSamples} -eq 0 ]
  then
    echo "running FH signal fTest"
    # already saved different mass point root file into different directory
    # can't run parallel since some operation may have confliction attention
    # ------------------------------------ new version with PN taggers ----------------------------------- #
    python RunSignalScripts.py --inputConfig config_M3000_1jet_l200_FH_2017.py --mode 'fTest' >signal_ftest_M3000_1jet_l200_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M3000_1jet_l200_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M3000_1jet_l200_FH.log 2>&1 



    python RunSignalScripts.py --inputConfig config_M3000_1jet_s200_FH_2017.py --mode 'fTest' >signal_ftest_M3000_1jet_s200_FH.log 2>&1 
    python RunSignalScripts.py --inputConfig config_M3000_4jets_FH_2017.py --mode 'fTest' >signal_ftest_M3000_4jets_FH.log 2>&1
    # ------------------------------------ new version with PN taggers ----------------------------------- #

    # python RunSignalScripts.py --inputConfig config_M300_1jet_FH_2017.py --mode 'fTest' >signal_ftest_M300_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M300_2jets_3jets_FH_2017.py --mode 'fTest' >signal_ftest_M300_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M300_4jets_FH_2017.py --mode 'fTest' >signal_ftest_M300_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M500_1jet_FH_2017.py --mode 'fTest' >signal_ftest_M500_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M500_2jets_3jets_FH_2017.py --mode 'fTest' >signal_ftest_M500_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M500_4jets_FH_2017.py --mode 'fTest' >signal_ftest_M500_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M700_1jet_FH_2017.py --mode 'fTest' >signal_ftest_M700_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M700_2jets_3jets_FH_2017.py --mode 'fTest' >signal_ftest_M700_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M700_4jets_FH_2017.py --mode 'fTest' >signal_ftest_M700_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M1000_1jet_FH_2017.py --mode 'fTest' >signal_ftest_M1000_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M1000_2jets_3jets_FH_2017.py --mode 'fTest' >signal_ftest_M1000_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M1000_4jets_FH_2017.py --mode 'fTest' >signal_ftest_M1000_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M1500_1jet_FH_2017.py --mode 'fTest' >signal_ftest_M1500_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M1500_2jets_3jets_FH_2017.py --mode 'fTest' >signal_ftest_M1500_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M1500_4jets_FH_2017.py --mode 'fTest' >signal_ftest_M1500_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M2000_1jet_FH_2017.py --mode 'fTest' >signal_ftest_M2000_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M2000_2jets_3jets_FH_2017.py --mode 'fTest' >signal_ftest_M2000_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M2000_4jets_FH_2017.py --mode 'fTest' >signal_ftest_M2000_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M2600_1jet_FH_2017.py --mode 'fTest' >signal_ftest_M2600_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M2600_2jets_3jets_FH_2017.py --mode 'fTest' >signal_ftest_M2600_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M2600_4jets_FH_2017.py --mode 'fTest' >signal_ftest_M2600_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M3000_1jet_FH_2017.py --mode 'fTest' >signal_ftest_M3000_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M3000_2jets_3jets_FH_2017.py --mode 'fTest' >signal_ftest_M3000_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M3000_4jets_FH_2017.py --mode 'fTest' >signal_ftest_M3000_4jets_FH.log 2>&1
fi
if [ ${WhichSamples} -eq 10 ]
  then
    echo "running SL signal fTest"
    # already saved different mass point root file into different directory
    # can't run parallel since some operation may have confliction attention
    
    python RunSignalScripts.py --inputConfig config_M1700_2jets_SL_muon_unpassed100cut.py --mode 'fTest'
    # python RunSignalScripts.py --inputConfig config_M300_2jets_3jets_SL_2017.py --mode 'fTest' >signal_ftest_M300_2jets_3jets_SL.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M300_4jets_SL_2017.py --mode 'fTest' >signal_ftest_M300_4jets_SL.log 2>&1

fi
if [ ${WhichSamples} -eq 11 ]
  then
    echo "running SL signal fit"
    # already saved different mass point root file into different directory
    # can't run parallel since some operation may have confliction attention
    python RunSignalScripts.py --inputConfig config_M1700_2jets_SL_muon_unpassed100cut.py --mode 'signalFit' --modeOpts "--skipSystematics"

fi
if [ ${WhichSamples} -eq 12 ]
  then
  #attention: need to copy all the CMS_multipdf* to your workspace dir
    echo 'run copy'
    
    cp outdir_dcb_2017_M300_2jets/signalFit/output/CMS-HGG_sigfit_dcb_2017_M300_2jets_gghh_2017_RECO_untagged_2jets_SL.root /eos/user/z/zhenxuan/hhwwgg_root/hhwwgg_root_SL/ws_gghh_M300_SL_2jets/CMS-HGG_sigfit_packaged_RECO_untagged_2jets_SL_2017.root
fi
if [ ${WhichSamples} -eq 13 ]
  then
    echo 'run packaged'
    # already saved different mass point root file into different directory
    python RunPackager.py --cats RECO_untagged_2jets_SL --exts dcb_2017_M300_2jets,  --batch local  --massPoints 125 --year 2017 --outputExt packaged_M300_2jets_SL
fi
if [ ${WhichSamples} -eq 14 ]
  then
    echo 'run plotter'
    # already saved different mass point root file into different directory
    python RunPlotter.py --cats RECO_untagged_2jets_SL --procs all --years 2017 --ext packaged_M300_2jets_SL

fi



if [ ${WhichSamples} -eq 1 ]
  then
    echo ${whichsample}
    # already saved different mass point root file into different directory
    # can't run parallel since some operation may have confliction attention
    # ------------------------ new version with PN tagger ------------------------ #

    # python RunSignalScripts.py --inputConfig config_M3000_1jet_l200_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M3000_1jet_l200_FH.log 2>&1 
    python RunSignalScripts.py --inputConfig config_M3000_1jet_s200_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M3000_1jet_s200_FH.log 2>&1 
    python RunSignalScripts.py --inputConfig config_M3000_4jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M3000_4jets_FH.log 2>&1


    # ------------------------ new version with PN tagger ------------------------ #
    
    # python RunSignalScripts.py --inputConfig config_M300_1jet_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M300_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M300_2jets_3jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M300_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M300_4jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M300_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M500_1jet_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M500_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M500_2jets_3jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M500_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M500_4jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M500_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M700_1jet_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M700_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M700_2jets_3jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M700_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M700_4jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M700_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M1000_1jet_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M1000_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M1000_2jets_3jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M1000_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M1000_4jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M1000_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M1500_1jet_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M1500_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M1500_2jets_3jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M1500_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M1500_4jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M1500_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M2000_1jet_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M2000_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M2000_2jets_3jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M2000_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M2000_4jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M2000_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M2600_1jet_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M2600_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M2600_2jets_3jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M2600_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M2600_4jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M2600_4jets_FH.log 2>&1

    # python RunSignalScripts.py --inputConfig config_M3000_1jet_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M3000_1jet_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M3000_2jets_3jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M3000_2jets_3jets_FH.log 2>&1 
    # python RunSignalScripts.py --inputConfig config_M3000_4jets_FH_2017.py --mode 'signalFit' --modeOpts "--skipSystematics" >signal_signalFit_M3000_4jets_FH.log 2>&1

fi
if [ ${WhichSamples} -eq 2 ]
  then
    echo 'run doPlots'
    # already saved different mass point root file into different directory
    python RunSignalScripts.py --inputConfig config_M3000_2017.py --mode 'signalFit' --modeOpts "--skipSystematics --doPlots --skipVertexScenarioSplit" >signal_signalFit_M3000.log 2>&1 
fi
if [ ${WhichSamples} -eq 3 ]
  then
    echo 'run packaged'
    # already saved different mass point root file into different directory

    python RunPackager.py --cats RECO_untagged_1jet_l200 --exts dcb_2017_M3000_1jet_l200,  --batch local  --massPoints 125 --year 2017 --outputExt packaged_M3000_1jet_l200
    python RunPackager.py --cats RECO_untagged_1jet_s200 --exts dcb_2017_M3000_1jet_s200,  --batch local  --massPoints 125 --year 2017 --outputExt packaged_M3000_1jet_s200
    python RunPackager.py --cats RECO_untagged_4jets --exts dcb_2017_M3000_4jets,  --batch local  --massPoints 125 --year 2017 --outputExt packaged_M3000_4jets

fi
if [ ${WhichSamples} -eq 4 ]
  then
    echo 'run plotter'
    # already saved different mass point root file into different directory
    python RunPlotter.py --cats RECO_untagged_1jet_l200 --procs all --years 2017 --ext packaged_M3000_1jet_l200
    python RunPlotter.py --cats RECO_untagged_1jet_s200 --procs all --years 2017 --ext packaged_M3000_1jet_s200
    python RunPlotter.py --cats RECO_untagged_4jets --procs all --years 2017 --ext packaged_M3000_4jets

fi

if [ ${WhichSamples} -eq 5 ]
  then
  #attention: need to copy all the CMS_multipdf* to your workspace dir
    echo 'run copy'
    
    cp outdir_dcb_2017_M3000_1jet_l200/signalFit/output/CMS-HGG_sigfit_dcb_2017_M3000_1jet_l200_gghh_2017_RECO_untagged_1jet_l200.root /eos/user/z/zhenxuan/hhwwgg_root/hhwwgg_root_FH_custom/ws_gghh_M3000_1jet_l200/CMS-HGG_sigfit_packaged_RECO_untagged_1jet_l200_2017.root
    cp outdir_dcb_2017_M3000_1jet_s200/signalFit/output/CMS-HGG_sigfit_dcb_2017_M3000_1jet_s200_gghh_2017_RECO_untagged_1jet_s200.root /eos/user/z/zhenxuan/hhwwgg_root/hhwwgg_root_FH_custom/ws_gghh_M3000_1jet_s200/CMS-HGG_sigfit_packaged_RECO_untagged_1jet_s200_2017.root
    cp outdir_dcb_2017_M3000_4jets/signalFit/output/CMS-HGG_sigfit_dcb_2017_M3000_4jets_gghh_2017_RECO_untagged_4jets.root /eos/user/z/zhenxuan/hhwwgg_root/hhwwgg_root_FH_custom/ws_gghh_M3000_4jets/CMS-HGG_sigfit_packaged_RECO_untagged_4jets_2017.root

fi

