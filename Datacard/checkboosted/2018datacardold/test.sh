cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/checkboosted/2018datacardold/MX500_MH125
combineCards.py  Datacard_2018_cat12lowpurity=Datacard_MX500_MH125_cat12lowpurity.txt Datacard_2018_cat12highpurity=Datacard_MX500_MH125_cat12highpurity.txt > Datacard_M500_2018allcat.txt
combineCards.py  Datacard_2018_cat12wwgghighpurity=Datacard_MX500_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_2018_cat12wwgglowpurity=Datacard_MX500_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_M500_2018wwgg.txt
sed -i 's/hgg 2 /hgg 20/g' Datacard_M500_2018allcat.txt
sed -i 's/hgg 2 /hgg 20/g' Datacard_M500_2018wwgg.txt
text2workspace.py Datacard_M500_2018allcat.txt -m 125
text2workspace.py Datacard_M500_2018wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2018allcat_M500 -d Datacard_M500_2018allcat.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M500_2018wwgg -d Datacard_M500_2018wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/checkboosted/2018datacardold/MX1000_MH125
combineCards.py  Datacard_2018_cat12lowpurity=Datacard_MX1000_MH125_cat12lowpurity.txt Datacard_2018_cat12highpurity=Datacard_MX1000_MH125_cat12highpurity.txt > Datacard_M1000_2018allcat.txt
combineCards.py  Datacard_2018_cat12wwgghighpurity=Datacard_MX1000_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_2018_cat12wwgglowpurity=Datacard_MX1000_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_M1000_2018wwgg.txt
text2workspace.py Datacard_M1000_2018allcat.txt -m 125
text2workspace.py Datacard_M1000_2018wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2018allcat_M1000 -d Datacard_M1000_2018allcat.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M1000_2018wwgg -d Datacard_M1000_2018wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/checkboosted/2018datacardold/MX3000_MH125
combineCards.py  Datacard_2018_cat12lowpurity=Datacard_MX3000_MH125_cat12lowpurity.txt Datacard_2018_cat12highpurity=Datacard_MX3000_MH125_cat12highpurity.txt > Datacard_M3000_2018allcat.txt
combineCards.py  Datacard_2018_cat12wwgghighpurity=Datacard_MX3000_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_2018_cat12wwgglowpurity=Datacard_MX3000_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_M3000_2018wwgg.txt
text2workspace.py Datacard_M3000_2018allcat.txt -m 125
text2workspace.py Datacard_M3000_2018wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2018allcat_M3000 -d Datacard_M3000_2018allcat.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M3000_2018wwgg -d Datacard_M3000_2018wwgg.root --run expected    