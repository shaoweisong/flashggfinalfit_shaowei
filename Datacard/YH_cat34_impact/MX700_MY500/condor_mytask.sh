#!/bin/sh
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_14_1_0_pre4/src
export SCRAM_ARCH=el9_amd64_gcc12
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/YH_cat34_impact/MX700_MY500

if [ $1 -eq 0 ]; then
  combine -M MultiDimFit -n _paramFit_Test_BR_hgg --algo impact --redefineSignalPOIs r -P BR_hgg --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 1 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_JetHEM_2018 --algo impact --redefineSignalPOIs r -P CMS_JetHEM_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 2 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_MET_2018 --algo impact --redefineSignalPOIs r -P CMS_MET_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 3 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_Muon_Momentumscale_2016post --algo impact --redefineSignalPOIs r -P CMS_Muon_Momentumscale_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 4 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_Muon_Momentumscale_2016pre --algo impact --redefineSignalPOIs r -P CMS_Muon_Momentumscale_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 5 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_Muon_Momentumscale_2017 --algo impact --redefineSignalPOIs r -P CMS_Muon_Momentumscale_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 6 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_Muon_Momentumscale_2018 --algo impact --redefineSignalPOIs r -P CMS_Muon_Momentumscale_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 7 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_MVASF_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_MVASF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 8 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_MVASF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_MVASF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 9 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_MVASF_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_MVASF_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 10 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_MVASF_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_MVASF_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 11 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_PreselSF_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_PreselSF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 12 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_PreselSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_PreselSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 13 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_PreselSF_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_PreselSF_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 14 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_PreselSF_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_PreselSF_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 15 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_TriggerWeight_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_TriggerWeight_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 16 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_TriggerWeight_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_TriggerWeight_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 17 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_TriggerWeight_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_TriggerWeight_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 18 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_TriggerWeight_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_TriggerWeight_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 19 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_electronVetoSF_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_electronVetoSF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 20 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_electronVetoSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_electronVetoSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 21 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_electronVetoSF_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_electronVetoSF_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 22 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_electronVetoSF_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_electronVetoSF_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 23 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isoelectronIDSF_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_isoelectronIDSF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 24 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isoelectronIDSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_isoelectronIDSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 25 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isoelectronIDSF_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_isoelectronIDSF_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 26 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isoelectronIDSF_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_isoelectronIDSF_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 27 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isoelectron_reco__2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_isoelectron_reco__2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 28 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isoelectron_reco__2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_isoelectron_reco__2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 29 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isoelectron_reco__2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_isoelectron_reco__2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 30 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isoelectron_reco__2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_isoelectron_reco__2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 31 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isomuonIDSF_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_isomuonIDSF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 32 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isomuonIDSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_isomuonIDSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 33 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isomuonIDSF_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_isomuonIDSF_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 34 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isomuonIDSF_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_isomuonIDSF_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 35 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isomuonIsoSF_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_isomuonIsoSF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 36 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isomuonIsoSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_isomuonIsoSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 37 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isomuonIsoSF_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_isomuonIsoSF_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 38 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isomuonIsoSF_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_isomuonIsoSF_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 39 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectronIDSF_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectronIDSF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 40 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectronIDSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectronIDSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 41 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectronIDSF_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectronIDSF_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 42 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectronIDSF_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectronIDSF_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 43 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectron_re_co_SF_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectron_re_co_SF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 44 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectron_re_co_SF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectron_re_co_SF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 45 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectron_re_co_SF_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectron_re_co_SF_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 46 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectron_re_co_SF_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectron_re_co_SF_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 47 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectronnonisoIDSF_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectronnonisoIDSF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 48 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectronnonisoIDSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectronnonisoIDSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 49 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectronnonisoIDSF_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectronnonisoIDSF_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 50 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectronnonisoIDSF_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectronnonisoIDSF_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 51 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_fnuf_13TeVscaleCorr --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_fnuf_13TeVscaleCorr --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 52 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_material_13TeVscaleCorr --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_material_13TeVscaleCorr --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 53 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_scale_13TeVscale_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_scale_13TeVscale_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 54 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_scale_13TeVscale_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_scale_13TeVscale_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 55 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_scale_13TeVscale_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_scale_13TeVscale_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 56 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_scale_13TeVscale_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_scale_13TeVscale_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 57 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_smear_13TeVsmear_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_smear_13TeVsmear_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 58 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_smear_13TeVsmear_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_smear_13TeVsmear_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 59 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_smear_13TeVsmear_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_smear_13TeVsmear_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 60 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_smear_13TeVsmear_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_smear_13TeVsmear_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 61 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_prefire_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_prefire_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 62 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_prefire_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_prefire_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 63 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_prefire_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_prefire_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 64 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_prefire_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_prefire_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 65 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_puWeight_2016post --algo impact --redefineSignalPOIs r -P CMS_hgg_puWeight_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 66 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_puWeight_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_puWeight_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 67 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_puWeight_2017 --algo impact --redefineSignalPOIs r -P CMS_hgg_puWeight_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 68 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_puWeight_2018 --algo impact --redefineSignalPOIs r -P CMS_hgg_puWeight_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 69 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_res_JET_MET_2018 --algo impact --redefineSignalPOIs r -P CMS_res_JET_MET_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 70 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_res_fatjet_2018 --algo impact --redefineSignalPOIs r -P CMS_res_fatjet_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 71 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_res_j_2016post --algo impact --redefineSignalPOIs r -P CMS_res_j_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 72 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_res_j_2016pre --algo impact --redefineSignalPOIs r -P CMS_res_j_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 73 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_res_j_2017 --algo impact --redefineSignalPOIs r -P CMS_res_j_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 74 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_res_j_2018 --algo impact --redefineSignalPOIs r -P CMS_res_j_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 75 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_scale_fatjet_2018 --algo impact --redefineSignalPOIs r -P CMS_scale_fatjet_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 76 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_scale_j_2016post --algo impact --redefineSignalPOIs r -P CMS_scale_j_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 77 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_scale_j_2016pre --algo impact --redefineSignalPOIs r -P CMS_scale_j_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 78 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_scale_j_2017 --algo impact --redefineSignalPOIs r -P CMS_scale_j_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 79 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_scale_j_2018 --algo impact --redefineSignalPOIs r -P CMS_scale_j_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 80 ]; then
  combine -M MultiDimFit -n _paramFit_Test_Jet_puID_2016post --algo impact --redefineSignalPOIs r -P Jet_puID_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 81 ]; then
  combine -M MultiDimFit -n _paramFit_Test_Jet_puID_2016pre --algo impact --redefineSignalPOIs r -P Jet_puID_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 82 ]; then
  combine -M MultiDimFit -n _paramFit_Test_Jet_puID_2017 --algo impact --redefineSignalPOIs r -P Jet_puID_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 83 ]; then
  combine -M MultiDimFit -n _paramFit_Test_Jet_puID_2018 --algo impact --redefineSignalPOIs r -P Jet_puID_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 84 ]; then
  combine -M MultiDimFit -n _paramFit_Test_MH --algo impact --redefineSignalPOIs r -P MH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 85 ]; then
  combine -M MultiDimFit -n _paramFit_Test_PNWvsQCDSF_2016post --algo impact --redefineSignalPOIs r -P PNWvsQCDSF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 86 ]; then
  combine -M MultiDimFit -n _paramFit_Test_PNWvsQCDSF_2016pre --algo impact --redefineSignalPOIs r -P PNWvsQCDSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 87 ]; then
  combine -M MultiDimFit -n _paramFit_Test_PNWvsQCDSF_2017 --algo impact --redefineSignalPOIs r -P PNWvsQCDSF_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 88 ]; then
  combine -M MultiDimFit -n _paramFit_Test_PNWvsQCDSF_2018 --algo impact --redefineSignalPOIs r -P PNWvsQCDSF_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 89 ]; then
  combine -M MultiDimFit -n _paramFit_Test_PNWvsQCD_mistaggingSF_2016post --algo impact --redefineSignalPOIs r -P PNWvsQCD_mistaggingSF_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 90 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_cferr1 --algo impact --redefineSignalPOIs r -P btag_cferr1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 91 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_cferr2 --algo impact --redefineSignalPOIs r -P btag_cferr2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 92 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_hf --algo impact --redefineSignalPOIs r -P btag_hf --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 93 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_hfstats1_2016post --algo impact --redefineSignalPOIs r -P btag_hfstats1_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 94 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_hfstats1_2016pre --algo impact --redefineSignalPOIs r -P btag_hfstats1_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 95 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_hfstats1_2017 --algo impact --redefineSignalPOIs r -P btag_hfstats1_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 96 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_hfstats1_2018 --algo impact --redefineSignalPOIs r -P btag_hfstats1_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 97 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_hfstats2_2016post --algo impact --redefineSignalPOIs r -P btag_hfstats2_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 98 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_hfstats2_2016pre --algo impact --redefineSignalPOIs r -P btag_hfstats2_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 99 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_hfstats2_2017 --algo impact --redefineSignalPOIs r -P btag_hfstats2_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 100 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_hfstats2_2018 --algo impact --redefineSignalPOIs r -P btag_hfstats2_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 101 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_jes --algo impact --redefineSignalPOIs r -P btag_jes --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 102 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_lf --algo impact --redefineSignalPOIs r -P btag_lf --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 103 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_lfstats1_2016post --algo impact --redefineSignalPOIs r -P btag_lfstats1_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 104 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_lfstats1_2016pre --algo impact --redefineSignalPOIs r -P btag_lfstats1_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 105 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_lfstats1_2017 --algo impact --redefineSignalPOIs r -P btag_lfstats1_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 106 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_lfstats1_2018 --algo impact --redefineSignalPOIs r -P btag_lfstats1_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 107 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_lfstats2_2016post --algo impact --redefineSignalPOIs r -P btag_lfstats2_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 108 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_lfstats2_2016pre --algo impact --redefineSignalPOIs r -P btag_lfstats2_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 109 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_lfstats2_2017 --algo impact --redefineSignalPOIs r -P btag_lfstats2_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 110 ]; then
  combine -M MultiDimFit -n _paramFit_Test_btag_lfstats2_2018 --algo impact --redefineSignalPOIs r -P btag_lfstats2_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 111 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_bern1_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_bern1_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 112 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_bern2_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_bern2_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 113 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_bern2_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_bern2_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 114 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_bern3_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_bern3_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 115 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_bern3_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_bern3_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 116 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_bern3_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_bern3_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 117 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_bern4_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_bern4_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 118 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_bern4_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_bern4_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 119 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_bern4_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_bern4_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 120 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_bern4_p3 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_bern4_p3 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 121 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_exp1_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_exp1_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 122 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_lau1_l1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_lau1_l1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 123 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_lau2_h1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_lau2_h1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 124 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_lau2_l1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_lau2_l1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 125 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_pow1_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_pow1_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 126 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_pow3_f1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_pow3_f1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 127 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_pow3_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_pow3_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 128 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016post_13TeV_pow3_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016post_13TeV_pow3_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 129 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern1_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern1_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 130 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern2_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern2_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 131 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern2_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern2_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 132 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern3_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern3_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 133 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern3_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern3_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 134 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern3_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern3_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 135 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern4_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern4_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 136 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern4_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern4_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 137 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern4_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern4_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 138 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern4_p3 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern4_p3 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 139 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern5_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern5_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 140 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern5_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern5_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 141 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern5_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern5_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 142 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern5_p3 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern5_p3 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 143 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern5_p4 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern5_p4 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 144 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern6_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern6_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 145 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern6_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern6_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 146 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern6_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern6_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 147 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern6_p3 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern6_p3 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 148 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern6_p4 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern6_p4 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 149 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern6_p5 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern6_p5 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 150 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_exp1_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_exp1_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 151 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_exp3_f1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_exp3_f1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 152 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_exp3_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_exp3_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 153 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_exp3_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_exp3_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 154 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_lau1_l1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_lau1_l1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 155 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_lau2_h1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_lau2_h1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 156 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_lau2_l1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_lau2_l1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 157 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_pow1_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_pow1_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 158 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_pow3_f1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_pow3_f1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 159 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_pow3_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_pow3_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 160 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_pow3_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_pow3_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 161 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern1_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern1_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 162 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern2_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern2_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 163 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern2_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern2_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 164 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern3_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern3_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 165 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern3_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern3_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 166 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern3_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern3_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 167 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern4_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern4_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 168 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern4_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern4_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 169 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern4_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern4_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 170 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern4_p3 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern4_p3 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 171 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern5_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern5_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 172 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern5_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern5_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 173 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern5_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern5_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 174 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern5_p3 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern5_p3 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 175 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern5_p4 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern5_p4 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 176 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern6_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern6_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 177 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern6_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern6_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 178 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern6_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern6_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 179 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern6_p3 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern6_p3 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 180 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern6_p4 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern6_p4 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 181 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_bern6_p5 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_bern6_p5 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 182 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_exp1_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_exp1_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 183 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_exp3_f1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_exp3_f1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 184 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_exp3_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_exp3_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 185 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_exp3_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_exp3_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 186 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_lau1_l1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_lau1_l1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 187 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_lau2_h1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_lau2_h1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 188 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_lau2_l1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_lau2_l1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 189 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2017_13TeV_pow1_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2017_13TeV_pow1_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 190 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_bern1_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_bern1_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 191 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_bern2_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_bern2_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 192 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_bern2_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_bern2_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 193 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_bern3_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_bern3_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 194 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_bern3_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_bern3_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 195 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_bern3_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_bern3_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 196 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_bern4_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_bern4_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 197 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_bern4_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_bern4_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 198 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_bern4_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_bern4_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 199 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_bern4_p3 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_bern4_p3 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 200 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_exp1_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_exp1_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 201 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_exp3_f1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_exp3_f1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 202 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_exp3_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_exp3_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 203 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_exp3_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_exp3_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 204 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_lau1_l1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_lau1_l1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 205 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_lau2_h1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_lau2_h1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 206 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_lau2_l1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_lau2_l1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 207 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_pow1_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_pow1_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 208 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_pow3_f1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_pow3_f1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 209 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_pow3_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_pow3_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 210 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2018_13TeV_pow3_p2 --algo impact --redefineSignalPOIs r -P env_pdf_0_2018_13TeV_pow3_p2 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 211 ]; then
  combine -M MultiDimFit -n _paramFit_Test_lumi_13TeV_Correlated --algo impact --redefineSignalPOIs r -P lumi_13TeV_Correlated --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 212 ]; then
  combine -M MultiDimFit -n _paramFit_Test_lumi_13TeV_Correlated_1718 --algo impact --redefineSignalPOIs r -P lumi_13TeV_Correlated_1718 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 213 ]; then
  combine -M MultiDimFit -n _paramFit_Test_lumi_13TeV_Uncorrelated_2016post --algo impact --redefineSignalPOIs r -P lumi_13TeV_Uncorrelated_2016post --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 214 ]; then
  combine -M MultiDimFit -n _paramFit_Test_lumi_13TeV_Uncorrelated_2016pre --algo impact --redefineSignalPOIs r -P lumi_13TeV_Uncorrelated_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 215 ]; then
  combine -M MultiDimFit -n _paramFit_Test_lumi_13TeV_Uncorrelated_2017 --algo impact --redefineSignalPOIs r -P lumi_13TeV_Uncorrelated_2017 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 216 ]; then
  combine -M MultiDimFit -n _paramFit_Test_lumi_13TeV_Uncorrelated_2018 --algo impact --redefineSignalPOIs r -P lumi_13TeV_Uncorrelated_2018 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 217 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2016post_cat34FHhighpurity_2016post__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2016post_cat34FHhighpurity_2016post__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 218 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2016post_cat34FHlowpurity_2016post__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2016post_cat34FHlowpurity_2016post__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 219 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2016post_cat34SLhighpurity_2016post__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2016post_cat34SLhighpurity_2016post__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 220 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2016post_cat34SLlowpurity_2016post__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2016post_cat34SLlowpurity_2016post__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 221 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2016pre_cat34FHhighpurity_2016pre__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2016pre_cat34FHhighpurity_2016pre__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 222 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2016pre_cat34FHlowpurity_2016pre__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2016pre_cat34FHlowpurity_2016pre__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 223 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2016pre_cat34SLhighpurity_2016pre__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2016pre_cat34SLhighpurity_2016pre__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 224 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2016pre_cat34SLlowpurity_2016pre__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2016pre_cat34SLlowpurity_2016pre__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 225 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2017_cat34FHhighpurity_2017__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2017_cat34FHhighpurity_2017__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 226 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2017_cat34FHlowpurity_2017__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2017_cat34FHlowpurity_2017__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 227 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2017_cat34SLhighpurity_2017__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2017_cat34SLhighpurity_2017__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 228 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2017_cat34SLlowpurity_2017__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2017_cat34SLlowpurity_2017__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 229 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2018_cat34FHhighpurity_2018__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2018_cat34FHhighpurity_2018__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 230 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2018_cat34FHlowpurity_2018__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2018_cat34FHlowpurity_2018__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 231 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2018_cat34SLhighpurity_2018__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2018_cat34SLhighpurity_2018__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi
if [ $1 -eq 232 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat34_2018_cat34SLlowpurity_2018__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat34_2018_cat34SLlowpurity_2018__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters MH --rMin -5 --rMax 5 -t -1 --expectSignal 1 -m 125 -d MX700_MY500_run2_cat34.root --setParameters MH=125.38
fi

