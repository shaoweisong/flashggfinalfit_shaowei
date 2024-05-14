cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1900
text2workspace.py Datacard_M1900_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1900 -d Datacard_M1900_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2000
combineCards.py  cat3_M2000=Datacard_M2000_cat3highpt.txt Datacard_M2000_cat3lowpt.txt > Datacard_M2000_cat3.txt
text2workspace.py Datacard_M2000_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M2000 -d Datacard_M2000_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2200
combineCards.py  cat3_M2200=Datacard_M2200_cat3highpt.txt Datacard_M2200_cat3lowpt.txt > Datacard_M2200_cat3.txt
text2workspace.py Datacard_M2200_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M2200 -d Datacard_M2200_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2400
combineCards.py  cat3_M2400=Datacard_M2400_cat3highpt.txt Datacard_M2400_cat3lowpt.txt > Datacard_M2400_cat3.txt
text2workspace.py Datacard_M2400_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M2400 -d Datacard_M2400_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2600
combineCards.py  cat3_M2600=Datacard_M2600_cat3highpt.txt Datacard_M2600_cat3lowpt.txt > Datacard_M2600_cat3.txt
text2workspace.py Datacard_M2600_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M2600 -d Datacard_M2600_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2800
combineCards.py  cat3_M2800=Datacard_M2800_cat3highpt.txt Datacard_M2800_cat3lowpt.txt > Datacard_M2800_cat3.txt
text2workspace.py Datacard_M2800_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M2800 -d Datacard_M2800_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M3000
combineCards.py  cat3_M3000=Datacard_M3000_cat3highpt.txt Datacard_M3000_cat3lowpt.txt > Datacard_M3000_cat3.txt
text2workspace.py Datacard_M3000_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M3000 -d Datacard_M3000_cat3.root --run expected    
