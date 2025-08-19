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

text2workspace.py MX3000_MH125.txt -m 125
combineTool.py -M Impacts -d MX3000_MH125.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints   --rMin -1 --rMax 1 --setParameter MH=125.38 --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1
combineTool.py -M Impacts -d MX3000_MH125.root -m 125 --robustFit 1 --doFits --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --setParameter MH=125.38 --rMin -0.1 --rMax 0.1  --freezeParameters MH --job-mode condor --sub-opts='+JobFlavour="microcentury"' --task-name mytask  --cminFallbackAlgo Minuit2,Simplex,0:0.1
combineTool.py -M Impacts -d MX3000_MH125.root -m 125 --freezeParameters MH  -o MX3000_MH125.json
plotImpacts.py -i MX3000_MH125.json -o MX3000_MH125 --blind
python RemoveUnconstrainedJason.py -i run2_unblind/3000/MX3000_MH125.json -o run2_unblind/3000/MX3000_MH125_nocons.json
plotImpacts.py -i MX3000_MH125_nocons.json -o MX3000_MH125_nocons --blind

text2workspace.py MX1000_MH125_2016post_cat34SLlowpurity.txt -m 125
combineTool.py -M Impacts -d MX1000_MH125_2016post_cat34SLlowpurity.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints   --rMin 0 --rMax 0.005 --setParameter MH=125.38 --freezeParameters MH --cminFallbackAlgo Minuit2,Simplex,0:0.1
combineTool.py -M Impacts -d MX1000_MH125_2016post_cat34SLlowpurity.root -m 125 --robustFit 1 --doFits --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --setParameter MH=125.38 --rMin 0 --rMax 0.005  --freezeParameters MH --job-mode condor --sub-opts='+JobFlavour="microcentury"' --task-name mytask  --cminFallbackAlgo Minuit2,Simplex,0:0.1
combineTool.py -M Impacts -d MX1000_MH125_2016post_cat34SLlowpurity.root -m 125 --freezeParameters MH  -o MX1000_MH125_2016post_cat34SLlowpurity.json
plotImpacts.py -i MX1000_MH125_2016post_cat34SLlowpurity.json -o MX1000_MH125_2016post_cat34SLlowpurity --blind
python RemoveUnconstrainedJason.py -i run2_unblind/3000/MX1000_MH125_2016post_cat34SLlowpurity.json -o run2_unblind/3000/MX1000_MH125_2016post_cat34SLlowpurity_nocons.json
plotImpacts.py -i MX1000_MH125_2016post_cat34SLlowpurity_nocons.json -o MX1000_MH125_2016post_cat34SLlowpurity_nocons --blind
