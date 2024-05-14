cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1000

combineCards.py  Datacard_M1000=Datacard_M1000_cat1.txt Datacard_M1000_cat3.txt Datacard_M1000_cat5.txt Datacard_M1000_cat7.txt > Datacard_M1000_2017.txt
text2workspace.py Datacard_M1000_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1000 -d Datacard_M1000_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1100
combineCards.py  Datacard_M1100=Datacard_M1100_cat1.txt Datacard_M1100_cat3.txt Datacard_M1100_cat5.txt Datacard_M1100_cat7.txt > Datacard_M1100_2017.txt
text2workspace.py Datacard_M1100_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1100 -d Datacard_M1100_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1200
combineCards.py  Datacard_M1200=Datacard_M1200_cat1.txt Datacard_M1200_cat3.txt Datacard_M1200_cat5.txt > Datacard_M1200_2017.txt
text2workspace.py Datacard_M1200_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1200 -d Datacard_M1200_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1300
combineCards.py  Datacard_M1300=Datacard_M1300_cat1.txt Datacard_M1300_cat3.txt Datacard_M1300_cat5.txt Datacard_M1300_cat7.txt > Datacard_M1300_2017.txt
text2workspace.py Datacard_M1300_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1300 -d Datacard_M1300_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1400
combineCards.py  Datacard_M1400=Datacard_M1400_cat1.txt Datacard_M1400_cat3.txt Datacard_M1400_cat5.txt Datacard_M1400_cat7.txt > Datacard_M1400_2017.txt
text2workspace.py Datacard_M1400_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1400 -d Datacard_M1400_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1500
combineCards.py  Datacard_M1500=Datacard_M1500_cat1.txt Datacard_M1500_cat3.txt Datacard_M1500_cat5.txt Datacard_M1500_cat7.txt > Datacard_M1500_2017.txt
text2workspace.py Datacard_M1500_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1500 -d Datacard_M1500_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1600
combineCards.py  Datacard_M1600=Datacard_M1600_cat1.txt Datacard_M1600_cat3.txt Datacard_M1600_cat5.txt Datacard_M1600_cat7.txt > Datacard_M1600_2017.txt
text2workspace.py Datacard_M1600_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1600 -d Datacard_M1600_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1700
combineCards.py  Datacard_M1700=Datacard_M1700_cat1.txt Datacard_M1700_cat3.txt Datacard_M1700_cat5.txt Datacard_M1700_cat7.txt > Datacard_M1700_2017.txt
text2workspace.py Datacard_M1700_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1700 -d Datacard_M1700_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1800
combineCards.py  Datacard_M1800=Datacard_M1800_cat1.txt Datacard_M1800_cat3.txt Datacard_M1800_cat5.txt Datacard_M1800_cat7.txt > Datacard_M1800_2017.txt
text2workspace.py Datacard_M1800_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1800 -d Datacard_M1800_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1900
combineCards.py  Datacard_M1900=Datacard_M1900_cat1.txt Datacard_M1900_cat3.txt Datacard_M1900_cat5.txt > Datacard_M1900_2017.txt
text2workspace.py Datacard_M1900_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1900 -d Datacard_M1900_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2000
combineCards.py  Datacard_M2000=Datacard_M2000_cat1.txt Datacard_M2000_cat3.txt Datacard_M2000_cat5.txt Datacard_M2000_cat7.txt > Datacard_M2000_2017.txt
text2workspace.py Datacard_M2000_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M2000 -d Datacard_M2000_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2200
combineCards.py  Datacard_M2200=Datacard_M2200_cat1.txt Datacard_M2200_cat3.txt Datacard_M2200_cat5.txt Datacard_M2200_cat7.txt > Datacard_M2200_2017.txt
text2workspace.py Datacard_M2200_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M2200 -d Datacard_M2200_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2400
combineCards.py  Datacard_M2400=Datacard_M2400_cat1.txt Datacard_M2400_cat3.txt Datacard_M2400_cat5.txt > Datacard_M2400_2017.txt
text2workspace.py Datacard_M2400_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M2400 -d Datacard_M2400_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2600
combineCards.py  Datacard_M2600=Datacard_M2600_cat1.txt Datacard_M2600_cat3.txt Datacard_M2600_cat5.txt Datacard_M2600_cat7.txt > Datacard_M2600_2017.txt
text2workspace.py Datacard_M2600_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M2600 -d Datacard_M2600_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2800
combineCards.py  Datacard_M2800=Datacard_M2800_cat1.txt Datacard_M2800_cat3.txt Datacard_M2800_cat5.txt Datacard_M2800_cat7.txt > Datacard_M2800_2017.txt
text2workspace.py Datacard_M2800_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M2800 -d Datacard_M2800_2017.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M3000
combineCards.py  Datacard_M3000=Datacard_M3000_cat3.txt Datacard_M3000_cat5.txt Datacard_M3000_cat7.txt > Datacard_M3000_2017.txt
text2workspace.py Datacard_M3000_2017.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_M3000 -d Datacard_M3000_2017.root --run expected    
