
text2workspace.py Datacard_MX3000_MH125_2017_wwgg_cat12highpurity.txt -m 125
combineTool.py -M Impacts -d Datacard_MX3000_MH125_2017_wwgg_cat12highpurity.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --setParameter MH=125.38 --freezeParameters MH --rMin -100 --rMax 200 --cminFallbackAlgo Minuit2,Simplex,0:0.1

text2workspace.py MX1500_MH125_2018_cat12lowpurity.txt -m 125
combineTool.py -M Impacts -d MX1500_MH125_2018_cat12lowpurity.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --setParameter MH=125.38 --freezeParameters MH --rMin -1000 --rMax 1000 --cminFallbackAlgo Minuit2,Simplex,0:0.1 #can pass

text2workspace.py MX1500_MH125_2016pre_cat12lowpurity.txt -m 125
combineTool.py -M Impacts -d MX1500_MH125_2016pre_cat12lowpurity.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --setParameter MH=125.38 --freezeParameters MH --rMin -50000 --rMax 300 --cminFallbackAlgo Minuit2,Simplex,0:0.1
combineTool.py -M Impacts -d MX1500_MH125_2016pre_cat12lowpurity.root -m 125 --robustFit 1 --doFits --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --setParameter MH=125.38  --freezeParameters MH --job-mode condor --sub-opts='+JobFlavour="longlunch"' --task-name mytask  --cminFallbackAlgo Minuit2,Simplex,0:0.1 -50000 --rMax 300 


text2workspace.py MX1500_MH125_2018_cat12.txt -m 125
combineTool.py -M Impacts -d MX1500_MH125_2018_cat12.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --setParameter MH=125.38 --freezeParameters MH --rMin -1000 --rMax 1000 --cminFallbackAlgo Minuit2,Simplex,0:0.1

text2workspace.py MX1500_MH125.txt -m 125



combineTool.py -M FastScan -w MX1500_MH125_2017_cat12.root:w  --algo grid --points 100
combineTool.py -M Impacts -d MX1500_MH125_2017_cat12.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --setParameter MH=125.38 --freezeParameters MH --rMin -17 --rMax 17 --cminFallbackAlgo Minuit2,Simplex,0:0.1
combineTool.py -M Impacts -d MX1500_MH125_2017_cat12.root -m 125 --robustFit 1 --doFits --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --setParameter MH=125.38  --freezeParameters MH --job-mode condor --sub-opts='+JobFlavour="longlunch"' --task-name mytask  --cminFallbackAlgo Minuit2,Simplex,0:0.1
combineTool.py -M Impacts -d MX1500_MH125_2017_cat12.root -m 125 --freezeParameters MH  -o MX1500_MH125_2017_cat12.json
plotImpacts.py -i MX1500_MH125_2017_cat12.json -o MX1500_MH125_2017_cat12 --blind
python RemoveUnconstrainedJason.py -i run2_unblind/3000/MX1500_MH125_2017_cat12.json -o run2_unblind/3000/MX1500_MH125_2017_cat12_nocons.json
plotImpacts.py -i MX1500_MH125_2017_cat12_nocons.json -o MX1500_MH125_2017_cat12_nocons --blind

# text2workspace.py MX1500_MH125_2016post_cat12.txt -m 125
# combineTool.py -M Impacts -d MX1500_MH125_2016post_cat12.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants  --setParameter MH=125.38 --freezeParameters MH 
# combineTool.py -M Impacts -d MX1500_MH125_2016post_cat12.root -m 125 --robustFit 1 --doFits --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --setParameter MH=125.38 --freezeParameters MH  
# combineTool.py -M Impacts -d MX1500_MH125_2016post_cat12.root -m 125 -o MX1500_MH125_2016post_cat12.json --freezeParameters MH
# plotImpacts.py -i MX1500_MH125_2016post_cat12.json -o MX1500_MH125_2016post_cat12 --blind
# python RemoveUnconstrainedJason.py -i run2_unblind/1500/MX1500_MH125_2016post_cat12.json -o run2_unblind/1500/MX1500_MH125_2016post_cat12_nocons.json
# plotImpacts.py -i MX1500_MH125_2016post_cat12_2016post_cat12_nocons.json -o MX1500_MH125_2016post_cat12_2016post_cat12_nocons --blind

# text2workspace.py MX1500_MH125.txt -m 125
# combineTool.py -M Impacts -d MX1500_MH125.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants  --setParameter MH=125.38 --freezeParameters MH 
# combineTool.py -M Impacts -d MX1500_MH125.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants  --setParameter MH=125.38 --freezeParameters MH --rMin -10
# combineTool.py -M Impacts -d MX1500_MH125.root -m 125 --robustFit 1 --doFits --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --setParameter MH=125.38 --freezeParameters MH  --job-mode condor --sub-opts='+JobFlavour="microcentury"' --task-name mytask 
# combineTool.py -M Impacts -d MX1500_MH125.root -m 125 -o MX1500_MH125.json --freezeParameters MH
# plotImpacts.py -i MX1500_MH125.json -o MX1500_MH125 --blind
# python RemoveUnconstrainedJason.py -i run2_unblind/1500/MX1500_MH125.json -o run2_unblind/1500/MX1500_MH125_nocons.json
# plotImpacts.py -i MX1500_MH125_2016post_cat12_nocons.json -o MX1500_MH125_2016post_cat12_nocons --blind


# # combineCards.py cat12_2016post=MX3000_MH125_2016post_cat12highpurity.txt cat12_2016pre=MX3000_MH125_2016pre_cat12highpurity.txt cat12_2017=MX3000_MH125_2017_cat12highpurity.txt cat12_2018=MX3000_MH125_2018_cat12highpurity.txt > MX3000_MH125_cat12highpurity.txt
# # echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX3000_MH125_cat12highpurity.txt
# # echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX3000_MH125_cat12highpurity.txt
# # echo 'MX3000_MH125_cat12highpurity.txt'
# # text2workspace.py MX3000_MH125_cat12highpurity.txt -m 125.38
# # combineTool.py -M FastScan -w MX3000_MH125_cat12highpurity.root:w  --algo grid --points 100

# # combineCards.py cat12_2016post=MX3000_MH125_2016post_cat12lowpurity.txt cat12_2016pre=MX3000_MH125_2016pre_cat12lowpurity.txt cat12_2017=MX3000_MH125_2017_cat12lowpurity.txt cat12_2018=MX3000_MH125_2018_cat12lowpurity.txt > MX3000_MH125_cat12lowpurity.txt
# # echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX3000_MH125_cat12lowpurity.txt
# # echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX3000_MH125_cat12lowpurity.txt
# # echo 'MX3000_MH125_cat12lowpurity.txt'
# # text2workspace.py MX1500_MH125_2016post_cat12.txt -m 125.38
# # combineTool.py -M FastScan -w MX1500_MH125_2016post_cat12.root:w  --algo grid --points 100

# # text2workspace.py debug.txt -m 125.38
# # # combine -M MultiDimFit -v 3 debug.root -m 125.38 --cminDefaultMinimizerStrategy 2 --robustFit 1   --algo singles --freezeParameters MH 
# # combineTool.py -M FastScan -w debug.root:w
# # combineTool.py -M FastScan --algo grid --points 100  -w debug.root:w --robustFit 1 --cminFallbackAlgo Minuit2,Simplex,0:0.1 

# # combine -M MultiDimFit --robustFit 1 --cminFallbackAlgo Minuit2,Simplex,0:0.1 -d debug.root --cminDefaultMinimizerStrategy 0 

# # combineTool.py -M Impacts -d debug.root -m 125.38 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --setParameter MH=125.38 --freezeParameters MH --rMin=-1 --rMax=1
# # combineTool.py -M Impacts -d debug.root -m 125.38 --doFits --robustFit 1 --cminDefaultMinimizerStrategy 0 --setParameter MH=125.38 --freezeParameters MH --rMin=-1 --rMax=1
# # combineTool.py -M Impacts -d debug.root -m 125.38 -o debug.json --setParameter MH=125.38 --freezeParameters MH --rMin=-1 --rMax=1
# # plotImpacts.py -i debug.json -o debug --blind

# # text2workspace.py MX3000_MH125.txt -m 125
# # combineTool.py -M FastScan -w MX3000_MH125.root:w

# # combineTool.py -M FastScan --algo grid --points 100  -w MX3000_MH125.root:w --robustFit 1 --cminFallbackAlgo Minuit2,Simplex,0:0.1  --saveNLL
# # combineTool.py -M Impacts -d MX3000_MH125.root -m 125.38 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --setParameter MH=125.38 --freezeParameters MH --rMin=-1 --rMax=1
# # combineTool.py -M Impacts -d MX3000_MH125.root -m 125.38 --doFits --robustFit 1 --cminDefaultMinimizerStrategy 0 --setParameter MH=125.38 --freezeParameters MH --rMin=-1 --rMax=1
# # combineTool.py -M Impacts -d MX3000_MH125.root -m 125.38 -o MX3000_MH125.json --setParameter MH=125.38 --freezeParameters MH --rMin=-1 --rMax=1
# # plotImpacts.py -i MX3000_MH125.json -o MX3000_MH125 --blind

# # combine -M MultiDimFit --robustFit 1 --cminFallbackAlgo Minuit2,Simplex,0:0.1 -d MX1000_MH125.root --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants 
