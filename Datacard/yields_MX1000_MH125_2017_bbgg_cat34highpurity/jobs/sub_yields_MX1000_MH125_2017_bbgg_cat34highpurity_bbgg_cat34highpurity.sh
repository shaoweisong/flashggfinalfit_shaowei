#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/tools:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/tools

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/makeYields.py --cat bbgg_cat34highpurity --procs auto --ext MX1000_MH125_2017_bbgg_cat34highpurity --mass 125 --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX1000_MH125/ws_gghh_MX1000_MH125_2017_bbgg_cat34highpurity --sigModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX1000_MH125/ws_gghh_MX1000_MH125_2017_bbgg_cat34highpurity --sigModelExt packaged --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX1000_MH125/ws_2017_bbgg_cat34highpurity --bkgModelExt multipdf  --doSystematics
