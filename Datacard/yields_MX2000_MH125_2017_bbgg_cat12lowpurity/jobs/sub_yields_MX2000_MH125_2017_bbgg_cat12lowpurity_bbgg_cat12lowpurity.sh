#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/tools:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/tools

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/makeYields.py --cat bbgg_cat12lowpurity --procs auto --ext MX2000_MH125_2017_bbgg_cat12lowpurity --mass 125 --inputWSDirMap 2017=/afs/cern.ch/user/s/shsong/WWggDNN/bdt/PBDT_HH_FHSL_combine_2017/flashgginput/MX2000_MH125/ws_gghh_MX2000_MH125_2017_bbgg_cat12lowpurity --sigModelWSDir /afs/cern.ch/user/s/shsong/WWggDNN/bdt/PBDT_HH_FHSL_combine_2017/flashgginput/MX2000_MH125/ws_gghh_MX2000_MH125_2017_bbgg_cat12lowpurity --sigModelExt packaged --bkgModelWSDir /afs/cern.ch/user/s/shsong/WWggDNN/bdt/PBDT_HH_FHSL_combine_2017/flashgginput/MX2000_MH125/ws_2017_bbgg_cat12lowpurity --bkgModelExt multipdf 
