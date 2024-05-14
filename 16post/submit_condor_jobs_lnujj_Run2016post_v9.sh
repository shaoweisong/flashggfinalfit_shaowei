#!/bin/bash
echo "Starting job on " `date`
echo "Running on: `uname -a`"
echo "System software: `cat /etc/redhat-release`"
source /cvmfs/cms.cern.ch/cmsset_default.sh
echo "copy cmssw tar file from store area"
cp -s ${5}/CMSSW_10_6_20.tgz  .
tar -xf CMSSW_10_6_20.tgz
rm CMSSW_10_6_20.tgz
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/
scramv1 b ProjectRename
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/
source setup.sh
cmsenv
eval `scram runtime -sh`
echo "========================================="
echo "..."
echo "====> Getting limit : " 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/${1}/${2}
combine -M AsymptoticLimits -m 125 -n ${3} -d ${4}  --run expected
cp higgsCombinecombineFHSL_2016postallcat_*.AsymptoticLimits.mH125.root /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/${1}/${2}
cd ${_CONDOR_SCRATCH_DIR}
rm -rf CMSSW_10_6_20
