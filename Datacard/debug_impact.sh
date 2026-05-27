text2workspace.py -m 125 MX800_MY600_run2_cat34.txt
combineTool.py -M Impacts -d MX800_MY600_run2_cat34.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants  --freezeParameters allConstrainedNuisances,env_pdf_0_2016pre_13TeV_bern5_p2,env_pdf_0_2016pre_13TeV_bern7_p6,env_pdf_0_2016pre_13TeV_exp1_p1,env_pdf_0_2016pre_13TeV_lau1_l1,env_pdf_0_2016pre_13TeV_lau2_h1 --rMin -5 --rMax 10
combineTool.py -M Impacts -d MX800_MY600_run2_cat34.root -m 125 --robustFit 1 --doFits --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters allConstrainedNuisances --rMin -5 --rMax 10
combineTool.py -M Impacts -d MX800_MY600_run2_cat34.root -m 125 --freezeParameters allConstrainedNuisances  -o MX800_MY600_run2_cat34.json
# combineTool.py -M Impacts -d MX800_MY600_run2_cat34.root -m 125 --freezeParameters allConstrainedNuisances  -o MX800_MY600_run2_cat34.json --exclude env_pdf_0_2016pre_13TeV_bern5_p2,env_pdf_0_2016pre_13TeV_bern7_p6,env_pdf_0_2016pre_13TeV_exp1_p1,env_pdf_0_2016pre_13TeV_lau1_l1,env_pdf_0_2016pre_13TeV_lau2_h1
plotImpacts.py -i MX800_MY600_run2_cat34.json -o MX800_MY600_run2_cat34 


text2workspace.py -m 125 MX1000_MY250_run2_cat34.txt
combineTool.py -M Impacts -d MX1000_MY250_run2_cat34.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants  --freezeParameters allConstrainedNuisances,MH --rMin -5 --rMax 10
combineTool.py -M Impacts -d MX1000_MY250_run2_cat34.root -m 125 --robustFit 1 --doFits --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --freezeParameters allConstrainedNuisances,MH --rMin -5 --rMax 10
combineTool.py -M Impacts -d MX1000_MY250_run2_cat34.root -m 125 --freezeParameters allConstrainedNuisances  -o MX1000_MY250_run2_cat34.json
plotImpacts.py -i MX1000_MY250_run2_cat34.json -o MX1000_MY250_run2_cat34 

--freezeParameters rgx{.*},MH