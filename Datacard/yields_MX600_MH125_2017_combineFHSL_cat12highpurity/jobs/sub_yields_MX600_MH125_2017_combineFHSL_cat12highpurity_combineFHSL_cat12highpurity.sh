#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/tools:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/tools

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/makeYields.py --cat combineFHSL_cat12highpurity --procs auto --ext MX600_MH125_2017_combineFHSL_cat12highpurity --mass 125 --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX600_MH125/ws_gghh_MX600_MH125_2017_combineFHSL_cat12highpurity --sigModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX600_MH125/ws_gghh_MX600_MH125_2017_combineFHSL_cat12highpurity --sigModelExt packaged --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX600_MH125/ws_2017_combineFHSL_cat12highpurity --bkgModelExt multipdf  --doSystematics
