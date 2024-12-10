#need to add rate parameter to keep the combine limit about 0.5
# rm *.log
# combine -M AsymptoticLimits -m 125 -n Datacard_MX500_MH125_2017_wwgg_cat12highpurity -d Datacard_MX500_MH125_2017_wwgg_cat12highpurity.txt --run expected
# text2workspace.py Datacard_MX500_MH125_2017_wwgg_cat12highpurity.txt -m 125
# rm higgsCombine*.AsymptoticLimits.mH125.root
# rm BiasToys/*.root
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat12highpurity.root -t -n 1000 > Biastoy.log 2>&1
# rm BiasFits/*.root
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat12highpurity.root  -n 1000 -f -c "--cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --freezeParameters MH,CMS_wwgg_br_HH_WWgg" > Fitlog.log 2>&1
# rm  BiasPlots/*.p*
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat12highpurity.root -p --gaussianFit  > Pull.log 2>&1

# rm *.log
# combine -M AsymptoticLimits -m 125 -n Datacard_MX500_MH125_2017_wwgg_cat12lowpurity -d Datacard_MX500_MH125_2017_wwgg_cat12lowpurity.txt --run expected
# text2workspace.py Datacard_MX500_MH125_2017_wwgg_cat12lowpurity.txt -m 125
# rm higgsCombine*.AsymptoticLimits.mH125.root
# rm BiasToys/*.root
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat12lowpurity.root -t -n 1000 > Biastoy.log 2>&1
# rm BiasFits/*.root
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat12lowpurity.root  -n 1000 -f -c "--cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --freezeParameters MH,CMS_wwgg_br_HH_WWgg" > Fitlog.log 2>&1
# rm  BiasPlots/*.p*
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat12lowpurity.root -p --gaussianFit  > Pull.log 2>&1

# rm *.log
# combine -M AsymptoticLimits -m 125 -n Datacard_MX500_MH125_2017_wwgg_cat34FHlowpurity -d Datacard_MX500_MH125_2017_wwgg_cat34FHlowpurity.txt --run expected
# text2workspace.py Datacard_MX500_MH125_2017_wwgg_cat34FHlowpurity.txt -m 125
# rm higgsCombine*.AsymptoticLimits.mH125.root
# rm BiasToys/*.root
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34FHlowpurity.root -t -n 1000 > Biastoy.log 2>&1
# rm BiasFits/*.root
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34FHlowpurity.root  -n 1000 -f -c "--cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --freezeParameters MH,CMS_wwgg_br_HH_WWgg" > Fitlog.log 2>&1
# rm  BiasPlots/*.p*
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34FHlowpurity.root -p --gaussianFit  > Pull.log 2>&1

# rm *.log
# combine -M AsymptoticLimits -m 125 -n Datacard_MX500_MH125_2017_wwgg_cat34FHhighpurity -d Datacard_MX500_MH125_2017_wwgg_cat34FHhighpurity.txt --run expected
# text2workspace.py Datacard_MX500_MH125_2017_wwgg_cat34FHhighpurity.txt -m 125
# rm higgsCombine*.AsymptoticLimits.mH125.root
# rm BiasToys/*.root
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34FHhighpurity.root -t -n 1000 > Biastoy.log 2>&1
# rm BiasFits/*.root
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34FHhighpurity.root  -n 1000 -f -c "--cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --freezeParameters MH,CMS_wwgg_br_HH_WWgg" > Fitlog.log 2>&1
# rm  BiasPlots/*.p*
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34FHhighpurity.root -p --gaussianFit  > Pull.log 2>&1

# rm *.log
# combine -M AsymptoticLimits -m 125 -n Datacard_MX500_MH125_2017_wwgg_cat34SLhighpurity -d Datacard_MX500_MH125_2017_wwgg_cat34SLhighpurity.txt --run expected
# text2workspace.py Datacard_MX500_MH125_2017_wwgg_cat34SLhighpurity.txt -m 125
# rm higgsCombine*.AsymptoticLimits.mH125.root
# rm BiasToys/*.root
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34SLhighpurity.root -t -n 1000 > Biastoy.log 2>&1
# rm BiasFits/*.root
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34SLhighpurity.root  -n 1000 -f -c "--cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --freezeParameters MH,CMS_wwgg_br_HH_WWgg" > Fitlog.log 2>&1
# rm  BiasPlots/*.p*
# python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34SLhighpurity.root -p --gaussianFit  > Pull.log 2>&1

rm *.log
combine -M AsymptoticLimits -m 125 -n Datacard_MX500_MH125_2017_wwgg_cat34SLlowpurity -d Datacard_MX500_MH125_2017_wwgg_cat34SLlowpurity.txt --run expected
text2workspace.py Datacard_MX500_MH125_2017_wwgg_cat34SLlowpurity.txt -m 125
rm higgsCombine*.AsymptoticLimits.mH125.root
rm BiasToys/*.root
python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34SLlowpurity.root -t -n 1000 > Biastoy.log 2>&1
rm BiasFits/*.root
python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34SLlowpurity.root  -n 1000 -f -c "--cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2 --freezeParameters MH,CMS_wwgg_br_HH_WWgg" > Fitlog.log 2>&1
rm  BiasPlots/*.p*
python RunBiasStudy.py -d /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Combine/Checks/Datacard_MX500_MH125_2017_wwgg_cat34SLlowpurity.root -p --gaussianFit  > Pull.log 2>&1
