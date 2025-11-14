#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/tools:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/tools

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/signalFit.py --inputWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX1000_MH125/ws_gghhwwgg_MX1000_MH125_2018_cat12highpurity_wwgg --ext 2018_MX1000_MH125_2018_cat12highpurity_wwgg --proc gghhwwgg --cat cat12highpurity --year 2018 --analysis STXS --massPoints 125 --scales '' --scalesCorr '' --scalesGlobal '' --smears '' 
