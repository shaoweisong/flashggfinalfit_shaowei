#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/tools:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/tools

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34SLhighpurity --outputExt packaged_MX1000_MH125_wwgg_cat34SLhighpurity --massPoints 125 --exts 2017_MX1000_MH125_2017_cat34SLhighpurity_wwgg,2018_MX1000_MH125_2018_cat34SLhighpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat34SLhighpurity_wwgg,2016post_MX1000_MH125_2016post_cat34SLhighpurity_wwgg --mergeYears
