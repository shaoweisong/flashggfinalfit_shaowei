#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/tools:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/tools

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/makeYields.py --cat combineFHSL_cat5highpt --procs auto --ext M1000_FH_2018_combineFHSL_cat5highpt --mass 125 --inputWSDirMap 2018=/eos/user/s/shsong/HHWWgg_limit/optimise/cat5/2018/flashgginput/M1000_FH/ws_gghhFH_M1000_FH_2018_combineFHSL_cat5highpt --sigModelWSDir /eos/user/s/shsong/HHWWgg_limit/optimise/cat5/2018/flashgginput/M1000_FH/ws_gghhFH_M1000_FH_2018_combineFHSL_cat5highpt --sigModelExt packaged --bkgModelWSDir /eos/user/s/shsong/HHWWgg_limit/optimise/cat5/2018/flashgginput/M1000_FH/ws_2018_combineFHSL_cat5highpt --bkgModelExt multipdf  --doSystematics
