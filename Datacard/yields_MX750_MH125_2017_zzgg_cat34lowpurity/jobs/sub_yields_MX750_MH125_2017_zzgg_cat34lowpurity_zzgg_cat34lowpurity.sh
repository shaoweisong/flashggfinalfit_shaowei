#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/tools:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/tools

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/makeYields.py --cat zzgg_cat34lowpurity --procs auto --ext MX750_MH125_2017_zzgg_cat34lowpurity --mass 125 --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX750_MH125/ws_gghh_MX750_MH125_2017_zzgg_cat34lowpurity --sigModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX750_MH125/ws_gghh_MX750_MH125_2017_zzgg_cat34lowpurity --sigModelExt packaged --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX750_MH125/ws_2017_zzgg_cat34lowpurity --bkgModelExt multipdf  --doSystematics
