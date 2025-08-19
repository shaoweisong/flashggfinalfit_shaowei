text2workspace.py MX500_MH125.txt -m 125
# combineTool.py -M Impacts -d MX1000_MH125_2017.root -m 125 --doInitialFit --robustFit 1
combineTool.py -M Impacts -d MX500_MH125.root -m 125 --freezeParameters MH -n .impacts  --doInitialFit  --cminDefaultMinimizerStrategy 0 --robustFit 1
# combineTool.py -M Impacts -d MX500_MH125.root -m 125 --robustFit 1 --doFits 
combineTool.py -M Impacts -d MX500_MH125.root -m 125 --freezeParameters MH -n .impacts  --doFits --robustFit 1 --cminDefaultMinimizerStrategy 0
# combineTool.py -M Impacts -d MX1000_MH125_2017.root -m 125 -o impacts.json
combineTool.py -M Impacts -d MX500_MH125.root -m 125 --freezeParameters MH -n .impacts  -o MX500_MH125.json
# RemoveUnconstrainedJason.py -i MX500_MH125.json  -o impacts_inc_obs_m_constrained.json
plotImpacts.py -i MX500_MH125.json -o impacts --blind
# plotImpacts.py -i impacts_inc_obs_m_constrained.json -o impacts --blind