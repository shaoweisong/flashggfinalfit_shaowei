#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/tools:/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/tools

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/makeYields.py --cat bbgg_cat12lowpurity --procs auto --ext MX2800_MH125_2017_bbgg_cat12lowpurity --mass 125 --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX2800_MH125/ws_gghh_MX2800_MH125_2017_bbgg_cat12lowpurity --sigModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX2800_MH125/ws_gghh_MX2800_MH125_2017_bbgg_cat12lowpurity --sigModelExt packaged --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX2800_MH125/ws_2017_bbgg_cat12lowpurity --bkgModelExt multipdf  --doSystematics
