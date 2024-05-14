#no datacard
#no datacard
#no datacard
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M300
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M300/Datacard_M300_cat5lowpt.txt Datacard_M300_cat5.txt
text2workspace.py Datacard_M300_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M300 -d Datacard_M300_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M320
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M320/Datacard_M320_cat5lowpt.txt Datacard_M320_cat5.txt
text2workspace.py Datacard_M320_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M320 -d Datacard_M320_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M350
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M350/Datacard_M350_cat5lowpt.txt Datacard_M350_cat5.txt
text2workspace.py Datacard_M350_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M350 -d Datacard_M350_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M400
combineCards.py  cat5_M400=Datacard_M400_cat5highpt.txt Datacard_M400_cat5lowpt.txt > Datacard_M400_cat5.txt
text2workspace.py Datacard_M400_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M400 -d Datacard_M400_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M450
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M450/Datacard_M450_cat5lowpt.txt Datacard_M450_cat5.txt
text2workspace.py Datacard_M450_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M450 -d Datacard_M450_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M500
combineCards.py  cat5_M500=Datacard_M500_cat5highpt.txt Datacard_M500_cat5lowpt.txt > Datacard_M500_cat5.txt
text2workspace.py Datacard_M500_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M500 -d Datacard_M500_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M550
combineCards.py  cat5_M550=Datacard_M550_cat5highpt.txt Datacard_M550_cat5lowpt.txt > Datacard_M550_cat5.txt
text2workspace.py Datacard_M550_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M550 -d Datacard_M550_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M600
combineCards.py  cat5_M600=Datacard_M600_cat5highpt.txt Datacard_M600_cat5lowpt.txt > Datacard_M600_cat5.txt
text2workspace.py Datacard_M600_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M600 -d Datacard_M600_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M650
combineCards.py  cat5_M650=Datacard_M650_cat5highpt.txt Datacard_M650_cat5lowpt.txt > Datacard_M650_cat5.txt
text2workspace.py Datacard_M650_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M650 -d Datacard_M650_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M700
combineCards.py  cat5_M700=Datacard_M700_cat5highpt.txt Datacard_M700_cat5lowpt.txt > Datacard_M700_cat5.txt
text2workspace.py Datacard_M700_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M700 -d Datacard_M700_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M750
combineCards.py  cat5_M750=Datacard_M750_cat5highpt.txt Datacard_M750_cat5lowpt.txt > Datacard_M750_cat5.txt
text2workspace.py Datacard_M750_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M750 -d Datacard_M750_cat5.root --run expected   --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M800
combineCards.py  cat5_M800=Datacard_M800_cat5highpt.txt Datacard_M800_cat5lowpt.txt > Datacard_M800_cat5.txt
text2workspace.py Datacard_M800_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M800 -d Datacard_M800_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M850
combineCards.py  cat5_M850=Datacard_M850_cat5highpt.txt Datacard_M850_cat5lowpt.txt > Datacard_M850_cat5.txt
text2workspace.py Datacard_M850_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M850 -d Datacard_M850_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M900
combineCards.py  cat5_M900=Datacard_M900_cat5highpt.txt Datacard_M900_cat5lowpt.txt > Datacard_M900_cat5.txt
text2workspace.py Datacard_M900_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M900 -d Datacard_M900_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1000
combineCards.py  cat5_M1000=Datacard_M1000_cat5highpt.txt Datacard_M1000_cat5lowpt.txt > Datacard_M1000_cat5.txt
text2workspace.py Datacard_M1000_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M1000 -d Datacard_M1000_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1100
combineCards.py  cat5_M1100=Datacard_M1100_cat5highpt.txt Datacard_M1100_cat5lowpt.txt > Datacard_M1100_cat5.txt
text2workspace.py Datacard_M1100_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M1100 -d Datacard_M1100_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1200
combineCards.py  cat5_M1200=Datacard_M1200_cat5highpt.txt Datacard_M1200_cat5lowpt.txt > Datacard_M1200_cat5.txt
text2workspace.py Datacard_M1200_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M1200 -d Datacard_M1200_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1300
combineCards.py  cat5_M1300=Datacard_M1300_cat5highpt.txt Datacard_M1300_cat5lowpt.txt > Datacard_M1300_cat5.txt
text2workspace.py Datacard_M1300_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M1300 -d Datacard_M1300_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1400
combineCards.py  cat5_M1400=Datacard_M1400_cat5highpt.txt Datacard_M1400_cat5lowpt.txt > Datacard_M1400_cat5.txt
text2workspace.py Datacard_M1400_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M1400 -d Datacard_M1400_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1500
combineCards.py  cat5_M1500=Datacard_M1500_cat5highpt.txt Datacard_M1500_cat5lowpt.txt > Datacard_M1500_cat5.txt
text2workspace.py Datacard_M1500_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M1500 -d Datacard_M1500_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1600
combineCards.py  cat5_M1600=Datacard_M1600_cat5highpt.txt Datacard_M1600_cat5lowpt.txt > Datacard_M1600_cat5.txt
text2workspace.py Datacard_M1600_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M1600 -d Datacard_M1600_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1700
combineCards.py  cat5_M1700=Datacard_M1700_cat5highpt.txt Datacard_M1700_cat5lowpt.txt > Datacard_M1700_cat5.txt
text2workspace.py Datacard_M1700_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M1700 -d Datacard_M1700_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1800
combineCards.py  cat5_M1800=Datacard_M1800_cat5highpt.txt Datacard_M1800_cat5lowpt.txt > Datacard_M1800_cat5.txt
text2workspace.py Datacard_M1800_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M1800 -d Datacard_M1800_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1900
combineCards.py  cat5_M1900=Datacard_M1900_cat5highpt.txt Datacard_M1900_cat5lowpt.txt > Datacard_M1900_cat5.txt
text2workspace.py Datacard_M1900_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M1900 -d Datacard_M1900_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M2000
combineCards.py  cat5_M2000=Datacard_M2000_cat5highpt.txt Datacard_M2000_cat5lowpt.txt > Datacard_M2000_cat5.txt
text2workspace.py Datacard_M2000_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M2000 -d Datacard_M2000_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M2200
combineCards.py  cat5_M2200=Datacard_M2200_cat5highpt.txt Datacard_M2200_cat5lowpt.txt > Datacard_M2200_cat5.txt
text2workspace.py Datacard_M2200_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M2200 -d Datacard_M2200_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M2400
combineCards.py  cat5_M2400=Datacard_M2400_cat5highpt.txt Datacard_M2400_cat5lowpt.txt > Datacard_M2400_cat5.txt
text2workspace.py Datacard_M2400_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M2400 -d Datacard_M2400_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M2600
combineCards.py  cat5_M2600=Datacard_M2600_cat5highpt.txt Datacard_M2600_cat5lowpt.txt > Datacard_M2600_cat5.txt
text2workspace.py Datacard_M2600_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M2600 -d Datacard_M2600_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M2800
combineCards.py  cat5_M2800=Datacard_M2800_cat5highpt.txt Datacard_M2800_cat5lowpt.txt > Datacard_M2800_cat5.txt
text2workspace.py Datacard_M2800_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M2800 -d Datacard_M2800_cat5.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M3000
combineCards.py  cat5_M3000=Datacard_M3000_cat5highpt.txt Datacard_M3000_cat5lowpt.txt > Datacard_M3000_cat5.txt
text2workspace.py Datacard_M3000_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M3000 -d Datacard_M3000_cat5.root --run expected    
