
text2workspace.py MX250_MH125.txt -m 125 -o MX250_MH125.root
combine -M AsymptoticLimits -m 125 -n MX250_MH125 -d MX250_MH125.txt --run expected --freezeParameters MH
combineTool.py -M Impacts -d MX250_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doInitialFit -t -1 --expectSignal 1 --robustFit 1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
combineTool.py -M Impacts -d MX250_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doFits --robustFit 1 -t -1 --expectSignal 1   --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
combineTool.py -M Impacts -d MX250_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 -o MX250_MH125.json -t -1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
plotImpacts.py -i MX250_MH125.json -o MX250_MH125

text2workspace.py MX500_MH125.txt -m 125 -o MX500_MH125.root
combine -M AsymptoticLimits -m 125 -n MX500_MH125 -d MX500_MH125.txt --run expected --freezeParameters MH
combineTool.py -M Impacts -d MX500_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doInitialFit -t -1 --expectSignal 1 --robustFit 1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
combineTool.py -M Impacts -d MX500_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doFits --robustFit 1 -t -1 --expectSignal 1   --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
combineTool.py -M Impacts -d MX500_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 -o MX500_MH125.json -t -1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
plotImpacts.py -i MX500_MH125.json -o MX500_MH125

text2workspace.py MX3000_MH125.txt -m 125 -o MX3000_MH125.root
combine -M AsymptoticLimits -m 125 -n MX3000_MH125 -d MX3000_MH125.txt --run expected --freezeParameters MH
combineTool.py -M Impacts -d MX3000_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doInitialFit -t -1 --expectSignal 1 --robustFit 1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
combineTool.py -M Impacts -d MX3000_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doFits --robustFit 1 -t -1 --expectSignal 1   --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
combineTool.py -M Impacts -d MX3000_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 -o MX3000_MH125.json -t -1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
plotImpacts.py -i MX3000_MH125.json -o MX3000_MH125

text2workspace.py MX2000_MH125.txt -m 125 -o MX2000_MH125.root
combine -M AsymptoticLimits -m 125 -n MX2000_MH125 -d MX2000_MH125.txt --run expected --freezeParameters MH
combineTool.py -M Impacts -d MX2000_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doInitialFit -t -1 --expectSignal 1 --robustFit 1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
combineTool.py -M Impacts -d MX2000_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doFits --robustFit 1 -t -1 --expectSignal 1   --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
combineTool.py -M Impacts -d MX2000_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 -o MX2000_MH125.json -t -1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
plotImpacts.py -i MX2000_MH125.json -o MX2000_MH125

