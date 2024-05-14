cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1000
combineCards.py  cat3_M1000=Datacard_M1000_cat3highpt.txt Datacard_M1000_cat3lowpt.txt > Datacard_M1000_cat3.txt
text2workspace.py Datacard_M1000_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1000 -d Datacard_M1000_cat3.txt --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1100
combineCards.py  cat3_M1100=Datacard_M1100_cat3highpt.txt Datacard_M1100_cat3lowpt.txt > Datacard_M1100_cat3.txt
text2workspace.py Datacard_M1100_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1100 -d Datacard_M1100_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1200
combineCards.py  cat3_M1200=Datacard_M1200_cat3highpt.txt Datacard_M1200_cat3lowpt.txt > Datacard_M1200_cat3.txt
text2workspace.py Datacard_M1200_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1200 -d Datacard_M1200_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1300
combineCards.py  cat3_M1300=Datacard_M1300_cat3highpt.txt Datacard_M1300_cat3lowpt.txt > Datacard_M1300_cat3.txt
text2workspace.py Datacard_M1300_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1300 -d Datacard_M1300_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1400
combineCards.py  cat3_M1400=Datacard_M1400_cat3highpt.txt Datacard_M1400_cat3lowpt.txt > Datacard_M1400_cat3.txt
text2workspace.py Datacard_M1400_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1400 -d Datacard_M1400_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1500
combineCards.py  cat3_M1500=Datacard_M1500_cat3highpt.txt Datacard_M1500_cat3lowpt.txt > Datacard_M1500_cat3.txt
text2workspace.py Datacard_M1500_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1500 -d Datacard_M1500_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1600
combineCards.py  cat3_M1600=Datacard_M1600_cat3highpt.txt Datacard_M1600_cat3lowpt.txt > Datacard_M1600_cat3.txt
text2workspace.py Datacard_M1600_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1600 -d Datacard_M1600_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1700
combineCards.py  cat3_M1700=Datacard_M1700_cat3highpt.txt Datacard_M1700_cat3lowpt.txt > Datacard_M1700_cat3.txt
text2workspace.py Datacard_M1700_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1700 -d Datacard_M1700_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1800
combineCards.py  cat3_M1800=Datacard_M1800_cat3highpt.txt Datacard_M1800_cat3lowpt.txt > Datacard_M1800_cat3.txt
text2workspace.py Datacard_M1800_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1800 -d Datacard_M1800_cat3.root --run expected    

