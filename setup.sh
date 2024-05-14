# Add tools dir to PYTHONPATH
eval `scramv1 runtime -sh`

export PYTHONPATH=$PYTHONPATH:${CMSSW_BASE}/src/flashggFinalFit/tools
export LD_LIBRARY_PATH=/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Background/lib
