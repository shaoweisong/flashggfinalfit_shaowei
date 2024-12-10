#!/bin/bash
echo "Starting job on " `date`
echo "Running on: `uname -a`"
echo "System software: `cat /etc/redhat-release`"
source /cvmfs/cms.cern.ch/cmsset_default.sh
echo "copy cmssw tar file from store area"
cp -s ${1}/CMSSW_11_3_4.tgz  .
tar -xf CMSSW_11_3_4.tgz
rm CMSSW_11_3_4.tgz
cd ./CMSSW_11_3_4/
scramv1 b ProjectRename
cd ./CMSSW_11_3_4/src/
cmsenv
rm *.root
eval `scram runtime -sh`
echo "========================================="
echo "..."
echo "====> Getting limit : " 
cp ${2}/${3} .
combine -M AsymptoticLimits -m 125 -n ${4} -d ${3} --freezeParameters MH
cp higgs*.AsymptoticLimits.mH125.root ${5}
cd ../../
rm -rf CMSSW_11_3_4
