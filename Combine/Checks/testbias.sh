
rm *.log
combine -M AsymptoticLimits -m 125 -n Datacard_MX4000_MY500_2017_wwgg_cat12lowpurity -d Datacard_MX4000_MY500_2017_wwgg_cat12lowpurity.txt --run expected
text2workspace.py Datacard_MX4000_MY500_2017_wwgg_cat12lowpurity.txt -m 125
rm higgsCombine*.AsymptoticLimits.mH125.root
rm BiasToys/*.root
python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX4000_MY500_2017_wwgg_cat12lowpurity.root -t -n 200 > Biastoy.log 2>&1
rm BiasFits/*.root
python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX4000_MY500_2017_wwgg_cat12lowpurity.root  -n 200 -f -c "--cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --setParameters MH=125.38 --freezeParameters MH" > Fitlog.log 2>&1
rm  BiasPlots/*.p*
python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX4000_MY500_2017_wwgg_cat12lowpurity.root -p --gaussianFit  > Pull.log 2>&1