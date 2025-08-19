#!/bin/sh
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_14_1_0_pre4/src
export SCRAM_ARCH=el9_amd64_gcc12
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard

if [ $1 -eq 0 ]; then
  combine -M MultiDimFit -n _paramFit_Test_BR_hWW --algo impact --redefineSignalPOIs r -P BR_hWW --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 1 ]; then
  combine -M MultiDimFit -n _paramFit_Test_BR_hZZ --algo impact --redefineSignalPOIs r -P BR_hZZ --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 2 ]; then
  combine -M MultiDimFit -n _paramFit_Test_BR_hbb --algo impact --redefineSignalPOIs r -P BR_hbb --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 3 ]; then
  combine -M MultiDimFit -n _paramFit_Test_BR_hgg --algo impact --redefineSignalPOIs r -P BR_hgg --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 4 ]; then
  combine -M MultiDimFit -n _paramFit_Test_BR_htt --algo impact --redefineSignalPOIs r -P BR_htt --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 5 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_MVASF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_MVASF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 6 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_PreselSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_PreselSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 7 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_TriggerWeight_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_TriggerWeight_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 8 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_electronVetoSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_electronVetoSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 9 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isoelectronIDSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_isoelectronIDSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 10 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isoelectron_reco__2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_isoelectron_reco__2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 11 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isomuonIDSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_isomuonIDSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 12 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_isomuonIsoSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_isomuonIsoSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 13 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectronIDSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectronIDSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 14 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectron_re_co_SF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectron_re_co_SF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 15 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nonisoelectronnonisoIDSF_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_nonisoelectronnonisoIDSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 16 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_fnuf_13TeVscaleCorr --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_fnuf_13TeVscaleCorr --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 17 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_material_13TeVscaleCorr --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_material_13TeVscaleCorr --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 18 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_scale_13TeVscale_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_scale_13TeVscale_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 19 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_nuisance_smear_13TeVsmear_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_nuisance_smear_13TeVsmear_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 20 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_prefire_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_prefire_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 21 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_hgg_puWeight_2016pre --algo impact --redefineSignalPOIs r -P CMS_hgg_puWeight_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 22 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_res_fatjet_2016pre --algo impact --redefineSignalPOIs r -P CMS_res_fatjet_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 23 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_res_j_2016pre --algo impact --redefineSignalPOIs r -P CMS_res_j_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 24 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_scale_fatjet_2016pre --algo impact --redefineSignalPOIs r -P CMS_scale_fatjet_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 25 ]; then
  combine -M MultiDimFit -n _paramFit_Test_CMS_scale_j_2016pre --algo impact --redefineSignalPOIs r -P CMS_scale_j_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 26 ]; then
  combine -M MultiDimFit -n _paramFit_Test_Jet_puID_2016pre --algo impact --redefineSignalPOIs r -P Jet_puID_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 27 ]; then
  combine -M MultiDimFit -n _paramFit_Test_MH --algo impact --redefineSignalPOIs r -P MH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 28 ]; then
  combine -M MultiDimFit -n _paramFit_Test_PNWvsQCDSF_2016pre --algo impact --redefineSignalPOIs r -P PNWvsQCDSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 29 ]; then
  combine -M MultiDimFit -n _paramFit_Test_PNWvsQCD_mistaggingSF_2016pre --algo impact --redefineSignalPOIs r -P PNWvsQCD_mistaggingSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 30 ]; then
  combine -M MultiDimFit -n _paramFit_Test_PNXbb_sf_2016pre --algo impact --redefineSignalPOIs r -P PNXbb_sf_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 31 ]; then
  combine -M MultiDimFit -n _paramFit_Test_PTransformerHtaggerSF_2016pre --algo impact --redefineSignalPOIs r -P PTransformerHtaggerSF_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 32 ]; then
  combine -M MultiDimFit -n _paramFit_Test_QCDscale_ggH --algo impact --redefineSignalPOIs r -P QCDscale_ggH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 33 ]; then
  combine -M MultiDimFit -n _paramFit_Test_QCDscale_qqH --algo impact --redefineSignalPOIs r -P QCDscale_qqH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 34 ]; then
  combine -M MultiDimFit -n _paramFit_Test_QCDscale_ttH --algo impact --redefineSignalPOIs r -P QCDscale_ttH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 35 ]; then
  combine -M MultiDimFit -n _paramFit_Test_alphaS_VH --algo impact --redefineSignalPOIs r -P alphaS_VH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 36 ]; then
  combine -M MultiDimFit -n _paramFit_Test_alphaS_ggH --algo impact --redefineSignalPOIs r -P alphaS_ggH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 37 ]; then
  combine -M MultiDimFit -n _paramFit_Test_alphaS_qqH --algo impact --redefineSignalPOIs r -P alphaS_qqH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 38 ]; then
  combine -M MultiDimFit -n _paramFit_Test_alphaS_ttH --algo impact --redefineSignalPOIs r -P alphaS_ttH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 39 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern2_p0 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern2_p0 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 40 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_bern2_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_bern2_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 41 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_exp1_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_exp1_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 42 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_lau1_l1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_lau1_l1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 43 ]; then
  combine -M MultiDimFit -n _paramFit_Test_env_pdf_0_2016pre_13TeV_pow1_p1 --algo impact --redefineSignalPOIs r -P env_pdf_0_2016pre_13TeV_pow1_p1 --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 44 ]; then
  combine -M MultiDimFit -n _paramFit_Test_lumi_13TeV_Correlated --algo impact --redefineSignalPOIs r -P lumi_13TeV_Correlated --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 45 ]; then
  combine -M MultiDimFit -n _paramFit_Test_lumi_13TeV_Uncorrelated_2016pre --algo impact --redefineSignalPOIs r -P lumi_13TeV_Uncorrelated_2016pre --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 46 ]; then
  combine -M MultiDimFit -n _paramFit_Test_pdf_Higgs_VH --algo impact --redefineSignalPOIs r -P pdf_Higgs_VH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 47 ]; then
  combine -M MultiDimFit -n _paramFit_Test_pdf_Higgs_ggH --algo impact --redefineSignalPOIs r -P pdf_Higgs_ggH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 48 ]; then
  combine -M MultiDimFit -n _paramFit_Test_pdf_Higgs_qqH --algo impact --redefineSignalPOIs r -P pdf_Higgs_qqH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 49 ]; then
  combine -M MultiDimFit -n _paramFit_Test_pdf_Higgs_ttH --algo impact --redefineSignalPOIs r -P pdf_Higgs_ttH --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi
if [ $1 -eq 50 ]; then
  combine -M MultiDimFit -n _paramFit_Test_shapeBkg_bkg_mass_cat12lowpurity_2016pre__norm --algo impact --redefineSignalPOIs r -P shapeBkg_bkg_mass_cat12lowpurity_2016pre__norm --floatOtherPOIs 1 --saveInactivePOI 1 --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 -m 125 -d MX1500_MH125_2016pre_cat12lowpurity.root --setParameters MH=125.38
fi

