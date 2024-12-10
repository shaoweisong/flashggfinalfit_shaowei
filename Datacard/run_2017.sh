combineCards.py cat34_2016post=MX500_MH125_2016post_cat34.txt cat34_2016pre=MX500_MH125_2016pre_cat34.txt cat34_2017=MX500_MH125_2017_cat34.txt cat34_2018=MX500_MH125_2018_cat34.txt > MX500_MH125_cat34.txt
combine -M AsymptoticLimits -m 125 -n MX500_MH125_cat34 -d MX500_MH125_cat34.txt --run expected --freezeParameters MH

combineCards.py cat12_2016post=MX500_MH125_2016post_cat12.txt cat12_2016pre=MX500_MH125_2016pre_cat12.txt cat12_2017=MX500_MH125_2017_cat12.txt cat12_2018=MX500_MH125_2018_cat12.txt > MX500_MH125_cat12.txt
combine -M AsymptoticLimits -m 125 -n MX500_MH125_cat12 -d MX500_MH125_cat12.txt --run expected --freezeParameters MH

combineCards.py cat34=MX500_MH125_cat34.txt cat12=MX500_MH125_cat12.txt > MX500_MH125.txt
combine -M AsymptoticLimits -m 125 -n MX500_MH125 -d MX500_MH125.txt --run expected --freezeParameters MH
text2workspace.py MX500_MH125.txt -m 125
combineTool.py -M Impacts -d MX500_MH125.root -t -1 --toysFrequentist -m 125 --setParameterRanges r=-50,50 --freezeParameters MH   --setParameters r=10.4 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doInitialFit --task-name initialFit 
combineTool.py -M Impacts -d MX500_MH125.root -t -1 -m 125 --setParameterRanges r=-50,50 --freezeParameters MH   --setParameters r=10.4 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doFits  2>&1 | tee Fit.log
combineTool.py -M Impacts -d MX500_MH125.root -t -1 -m 125 --setParameterRanges r=-50,50 --freezeParameters MH   --setParameters r=10.4 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --output impacts_500.json
plotImpacts.py -i impacts_500.json -o impacts_500 --blind
