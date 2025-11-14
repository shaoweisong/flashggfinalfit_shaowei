#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/tools:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/tools

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/fTest.py --cat cat34FHlowpurity --procs gghhwwgg --ext 2016pre_MX1000_MH125_2016pre_cat34FHlowpurity_wwgg --inputWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhwwgg_MX1000_MH125_2016pre_cat34FHlowpurity_wwgg --doPlots
