#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/z/zhenxuan/CMSSW_10_6_20/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/z/zhenxuan/CMSSW_10_6_20/src/flashggFinalFit/Datacard
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/user/z/zhenxuan/CMSSW_10_6_20/src/flashggFinalFit/tools:/afs/cern.ch/user/z/zhenxuan/CMSSW_10_6_20/src/flashggFinalFit/Datacard/tools

python /afs/cern.ch/user/z/zhenxuan/CMSSW_10_6_20/src/flashggFinalFit/Datacard/makeYields.py --cat RECO_untagged_1jets_cat0 --procs auto --ext M3000_1jets_cat0 --mass 125 --inputWSDirMap 2017=/eos/user/z/zhenxuan/hhwwgg_root/hhwwgg_root_FHSL_custom/ws_gghh_M3000_1jets_cat0 --sigModelWSDir /eos/user/z/zhenxuan/hhwwgg_root/hhwwgg_root_FHSL_custom/ws_gghh_M3000_1jets_cat0 --sigModelExt packaged --bkgModelWSDir /eos/user/z/zhenxuan/hhwwgg_root/hhwwgg_root_FHSL_custom/ws_1jets_cat0 --bkgModelExt multipdf 