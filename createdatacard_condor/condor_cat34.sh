#!/bin/bash
echo "Starting job on " `date`
echo "Running on: `uname -a`"
echo "System software: `cat /etc/redhat-release`"
source /cvmfs/cms.cern.ch/cmsset_default.sh
echo "copy cmssw tar file from store area"
cp -s ${5}/CMSSW_10_6_20.tgz  .
tar -xf CMSSW_10_6_20.tgz
rm CMSSW_10_6_20.tgz
cp ${6}/create_resolved_splitproc_limit.py .
cd ./CMSSW_10_6_20/
scramv1 b ProjectRename
cd ./src/flashggFinalFit/
scramv1 b ProjectRename
source setup.sh
scramv1 b ProjectRename
cp ${6}/create_resolved_splitproc_limit.py .
rm ./Datacard/*.txt
rm -rf ./Signal/outdir_dcb_*/
rm -rf ./Signal/outdir_packaged*/
eval `scram runtime -sh`
echo "========================================="
echo "start to process the final fit"
python create_resolved_splitproc_limit.py --mass ${1} --year ${2} --input_dir ${3}
echo "====> Getting Datacard : " 
ls ./Datacard/*.txt
cp ./Datacard/*.txt ${4}
# cp -r ./Signal/outdir_dcb_*/ ${3}${2}/${1}/
# cp -r ./Signal/outdir_packaged*/ ${3}${2}/${1}/
cd ../../../
rm -rf CMSSW_10_6_20
