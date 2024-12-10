

combineTool.py -M Impacts -d MX3000_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doInitialFit -t -1 --expectSignal 0.5 --robustFit 1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints 
combineTool.py -M Impacts -d MX3000_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doFits --robustFit 1 -t -1 --expectSignal 0.5   --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints 
combineTool.py -M Impacts -d MX3000_MH125.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 -o MX3000_MH125.json -t -1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints 
plotImpacts.py -i MX3000_MH125.json -o MX3000_MH125