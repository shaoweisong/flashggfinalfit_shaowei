cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M250
combineCards.py  Datacard_2017allcat_M250=Datacard_M250_cat1.txt Datacard_M250_cat2.txt Datacard_M250_cat3.txt Datacard_M250_cat5.txt > Datacard_M250_2017allcat.txt
text2workspace.py Datacard_M250_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M250 -d Datacard_M250_2017allcat.root --run expected    --rMax 40000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M260
combineCards.py  Datacard_2017allcat_M260=Datacard_M260_cat1.txt Datacard_M260_cat2.txt Datacard_M260_cat3.txt Datacard_M260_cat5.txt Datacard_M260_cat7.txt Datacard_M260_cat8.txt > Datacard_M260_2017allcat.txt
text2workspace.py Datacard_M260_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M260 -d Datacard_M260_2017allcat.root --run expected    --rMax 20000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M270
combineCards.py  Datacard_2017allcat_M270=Datacard_M270_cat1.txt Datacard_M270_cat2.txt Datacard_M270_cat3.txt Datacard_M270_cat5.txt Datacard_M270_cat7.txt > Datacard_M270_2017allcat.txt
text2workspace.py Datacard_M270_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M270 -d Datacard_M270_2017allcat.root --run expected    --rMax 20000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M280
combineCards.py  Datacard_2017allcat_M280=Datacard_M280_cat1.txt Datacard_M280_cat2.txt Datacard_M280_cat3.txt Datacard_M280_cat5.txt Datacard_M280_cat7.txt Datacard_M280_cat8.txt > Datacard_M280_2017allcat.txt
text2workspace.py Datacard_M280_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M280 -d Datacard_M280_2017allcat.root --run expected    --rMax 20000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M300
combineCards.py  Datacard_2017allcat_M300=Datacard_M300_cat1.txt Datacard_M300_cat2.txt Datacard_M300_cat3.txt Datacard_M300_cat5.txt Datacard_M300_cat7.txt Datacard_M300_cat8.txt > Datacard_M300_2017allcat.txt
text2workspace.py Datacard_M300_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M300 -d Datacard_M300_2017allcat.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M320
combineCards.py  Datacard_2017allcat_M320=Datacard_M320_cat1.txt Datacard_M320_cat2.txt Datacard_M320_cat3.txt Datacard_M320_cat5.txt Datacard_M320_cat7.txt Datacard_M320_cat8.txt > Datacard_M320_2017allcat.txt
text2workspace.py Datacard_M320_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M320 -d Datacard_M320_2017allcat.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M350
combineCards.py  Datacard_2017allcat_M350=Datacard_M350_cat1.txt Datacard_M350_cat2.txt Datacard_M350_cat3.txt Datacard_M350_cat5.txt Datacard_M350_cat7.txt Datacard_M350_cat8.txt > Datacard_M350_2017allcat.txt
text2workspace.py Datacard_M350_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M350 -d Datacard_M350_2017allcat.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M400
combineCards.py  Datacard_2017allcat_M400=Datacard_M400_cat1.txt Datacard_M400_cat2.txt Datacard_M400_cat3.txt Datacard_M400_cat5.txt Datacard_M400_cat7.txt Datacard_M400_cat8.txt > Datacard_M400_2017allcat.txt
text2workspace.py Datacard_M400_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M400 -d Datacard_M400_2017allcat.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M450
combineCards.py  Datacard_2017allcat_M450=Datacard_M450_cat1.txt Datacard_M450_cat2.txt Datacard_M450_cat3.txt Datacard_M450_cat5.txt Datacard_M450_cat7.txt Datacard_M450_cat8.txt > Datacard_M450_2017allcat.txt
text2workspace.py Datacard_M450_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M450 -d Datacard_M450_2017allcat.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M500
combineCards.py  Datacard_2017allcat_M500=Datacard_M500_cat1.txt Datacard_M500_cat2.txt Datacard_M500_cat3.txt Datacard_M500_cat5.txt Datacard_M500_cat7.txt Datacard_M500_cat8.txt > Datacard_M500_2017allcat.txt
text2workspace.py Datacard_M500_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M500 -d Datacard_M500_2017allcat.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M550
combineCards.py  Datacard_2017allcat_M550=Datacard_M550_cat1.txt Datacard_M550_cat2.txt Datacard_M550_cat3.txt Datacard_M550_cat5.txt Datacard_M550_cat7.txt Datacard_M550_cat8.txt > Datacard_M550_2017allcat.txt
text2workspace.py Datacard_M550_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M550 -d Datacard_M550_2017allcat.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M600
combineCards.py  Datacard_2017allcat_M600=Datacard_M600_cat1.txt Datacard_M600_cat2.txt Datacard_M600_cat3.txt Datacard_M600_cat5.txt Datacard_M600_cat7.txt Datacard_M600_cat8.txt > Datacard_M600_2017allcat.txt
text2workspace.py Datacard_M600_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M600 -d Datacard_M600_2017allcat.root --run expected    
 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M650
combineCards.py  Datacard_2017allcat_M650=Datacard_M650_cat1.txt Datacard_M650_cat2.txt Datacard_M650_cat3.txt Datacard_M650_cat5.txt Datacard_M650_cat7.txt Datacard_M650_cat8.txt > Datacard_M650_2017allcat.txt
text2workspace.py Datacard_M650_2017allcat.txt -m 125
combine  -v 10 -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M650 -d Datacard_M650_2017allcat.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M700
combineCards.py  Datacard_2017allcat_M700=Datacard_M700_cat1.txt Datacard_M700_cat2.txt Datacard_M700_cat3.txt Datacard_M700_cat5.txt Datacard_M700_cat7.txt Datacard_M700_cat8.txt > Datacard_M700_2017allcat.txt
text2workspace.py Datacard_M700_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M700 -d Datacard_M700_2017allcat.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M750
combineCards.py  Datacard_2017allcat_M750=Datacard_M750_cat1.txt Datacard_M750_cat2.txt Datacard_M750_cat3.txt Datacard_M750_cat5.txt Datacard_M750_cat7.txt Datacard_M750_cat8.txt > Datacard_M750_2017allcat.txt
text2workspace.py Datacard_M750_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M750 -d Datacard_M750_2017allcat.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M800
combineCards.py  Datacard_2017allcat_M800=Datacard_M800_cat1.txt Datacard_M800_cat2.txt Datacard_M800_cat3.txt Datacard_M800_cat5.txt Datacard_M800_cat7.txt Datacard_M800_cat8.txt > Datacard_M800_2017allcat.txt
text2workspace.py Datacard_M800_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M800 -d Datacard_M800_2017allcat.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M850
combineCards.py  Datacard_2017allcat_M850=Datacard_M850_cat1.txt Datacard_M850_cat2.txt Datacard_M850_cat3.txt Datacard_M850_cat5.txt Datacard_M850_cat7.txt Datacard_M850_cat8.txt > Datacard_M850_2017allcat.txt
text2workspace.py Datacard_M850_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M850 -d Datacard_M850_2017allcat.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M900
combineCards.py  Datacard_2017allcat_M900=Datacard_M900_cat1.txt Datacard_M900_cat2.txt Datacard_M900_cat3.txt Datacard_M900_cat5.txt Datacard_M900_cat7.txt Datacard_M900_cat8.txt > Datacard_M900_2017allcat.txt
text2workspace.py Datacard_M900_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M900 -d Datacard_M900_2017allcat.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1000
combineCards.py  Datacard_2017allcat_M1000=Datacard_M1000_cat1.txt Datacard_M1000_cat2.txt Datacard_M1000_cat3.txt Datacard_M1000_cat5.txt Datacard_M1000_cat7.txt Datacard_M1000_cat8.txt > Datacard_M1000_2017allcat.txt
text2workspace.py Datacard_M1000_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M1000 -d Datacard_M1000_2017allcat.root --run expected  



cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1100
combineCards.py  Datacard_2017allcat_M1100=Datacard_M1100_cat1.txt Datacard_M1100_cat3.txt Datacard_M1100_cat5.txt Datacard_M1100_cat7.txt > Datacard_M1100_2017allcat.txt
text2workspace.py Datacard_M1100_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M1100 -d Datacard_M1100_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1200
combineCards.py  Datacard_2017allcat_M1200=Datacard_M1200_cat1.txt Datacard_M1200_cat3.txt Datacard_M1200_cat5.txt > Datacard_M1200_2017allcat.txt
text2workspace.py Datacard_M1200_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M1200 -d Datacard_M1200_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1300
combineCards.py  Datacard_2017allcat_M1300=Datacard_M1300_cat1.txt Datacard_M1300_cat3.txt Datacard_M1300_cat5.txt Datacard_M1300_cat7.txt > Datacard_M1300_2017allcat.txt
text2workspace.py Datacard_M1300_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M1300 -d Datacard_M1300_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1400
combineCards.py  Datacard_2017allcat_M1400=Datacard_M1400_cat1.txt Datacard_M1400_cat3.txt Datacard_M1400_cat5.txt Datacard_M1400_cat7.txt > Datacard_M1400_2017allcat.txt
text2workspace.py Datacard_M1400_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M1400 -d Datacard_M1400_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1500
combineCards.py  Datacard_2017allcat_M1500=Datacard_M1500_cat1.txt Datacard_M1500_cat3.txt Datacard_M1500_cat5.txt Datacard_M1500_cat7.txt > Datacard_M1500_2017allcat.txt
text2workspace.py Datacard_M1500_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M1500 -d Datacard_M1500_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1600
combineCards.py  Datacard_2017allcat_M1600=Datacard_M1600_cat1.txt Datacard_M1600_cat3.txt Datacard_M1600_cat5.txt Datacard_M1600_cat7.txt > Datacard_M1600_2017allcat.txt
text2workspace.py Datacard_M1600_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M1600 -d Datacard_M1600_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1700
combineCards.py  Datacard_2017allcat_M1700=Datacard_M1700_cat1.txt Datacard_M1700_cat3.txt Datacard_M1700_cat5.txt Datacard_M1700_cat7.txt > Datacard_M1700_2017allcat.txt
text2workspace.py Datacard_M1700_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M1700 -d Datacard_M1700_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1800
combineCards.py  Datacard_2017allcat_M1800=Datacard_M1800_cat1.txt Datacard_M1800_cat3.txt Datacard_M1800_cat5.txt Datacard_M1800_cat7.txt > Datacard_M1800_2017allcat.txt
text2workspace.py Datacard_M1800_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M1800 -d Datacard_M1800_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1900
combineCards.py  Datacard_2017allcat_M1900=Datacard_M1900_cat1.txt Datacard_M1900_cat3.txt Datacard_M1900_cat5.txt > Datacard_M1900_2017allcat.txt
text2workspace.py Datacard_M1900_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M1900 -d Datacard_M1900_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2000
combineCards.py  Datacard_2017allcat_M2000=Datacard_M2000_cat1.txt Datacard_M2000_cat3.txt Datacard_M2000_cat5.txt Datacard_M2000_cat7.txt > Datacard_M2000_2017allcat.txt
text2workspace.py Datacard_M2000_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M2000 -d Datacard_M2000_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2200
combineCards.py  Datacard_2017allcat_M2200=Datacard_M2200_cat1.txt Datacard_M2200_cat3.txt Datacard_M2200_cat5.txt Datacard_M2200_cat7.txt > Datacard_M2200_2017allcat.txt
text2workspace.py Datacard_M2200_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M2200 -d Datacard_M2200_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2400
combineCards.py  Datacard_2017allcat_M2400=Datacard_M2400_cat1.txt Datacard_M2400_cat3.txt Datacard_M2400_cat5.txt > Datacard_M2400_2017allcat.txt
text2workspace.py Datacard_M2400_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M2400 -d Datacard_M2400_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2600
combineCards.py  Datacard_2017allcat_M2600=Datacard_M2600_cat1.txt Datacard_M2600_cat3.txt Datacard_M2600_cat5.txt Datacard_M2600_cat7.txt > Datacard_M2600_2017allcat.txt
text2workspace.py Datacard_M2600_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M2600 -d Datacard_M2600_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2800
combineCards.py  Datacard_2017allcat_M2800=Datacard_M2800_cat1.txt Datacard_M2800_cat3.txt Datacard_M2800_cat5.txt Datacard_M2800_cat7.txt > Datacard_M2800_2017allcat.txt
text2workspace.py Datacard_M2800_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M2800 -d Datacard_M2800_2017allcat.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M3000
combineCards.py  Datacard_2017allcat_M3000=Datacard_M3000_cat3.txt Datacard_M3000_cat5.txt Datacard_M3000_cat7.txt > Datacard_M3000_2017allcat.txt
text2workspace.py Datacard_M3000_2017allcat.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017allcat_M3000 -d Datacard_M3000_2017allcat.root --run expected  
