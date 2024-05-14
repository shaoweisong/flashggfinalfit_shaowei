cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M250
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M250/Datacard_M250_cat5lowpt.txt Datacard_M250_cat5.txt
text2workspace.py Datacard_M250_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M250 -d Datacard_M250_cat5.root --run expected  --rMax 50000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M270
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M270/Datacard_M270_cat5lowpt.txt Datacard_M270_cat5.txt
text2workspace.py Datacard_M270_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M270 -d Datacard_M270_cat5.root --run expected  --rMax 50000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M280
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M280/Datacard_M280_cat5lowpt.txt Datacard_M280_cat5.txt
text2workspace.py Datacard_M280_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M280 -d Datacard_M280_cat5.root --run expected  --rMax 50000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M300
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M300/Datacard_M300_cat5lowpt.txt Datacard_M300_cat5.txt
text2workspace.py Datacard_M300_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M300 -d Datacard_M300_cat5.root --run expected  --rMax 50000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M320
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M320/Datacard_M320_cat5lowpt.txt Datacard_M320_cat5.txt
text2workspace.py Datacard_M320_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M320 -d Datacard_M320_cat5.root --run expected  --rMax 50000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M350
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M350/Datacard_M350_cat5lowpt.txt Datacard_M350_cat5.txt
text2workspace.py Datacard_M350_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M350 -d Datacard_M350_cat5.root --run expected  --rMax 50000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M400
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M400/Datacard_M400_cat5lowpt.txt Datacard_M400_cat5.txt
text2workspace.py Datacard_M400_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M400 -d Datacard_M400_cat5.root --run expected  --rMax 50000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M450
combineCards.py  cat5_M450=Datacard_M450_cat5highpt.txt Datacard_M450_cat5lowpt.txt > Datacard_M450_cat5.txt
text2workspace.py Datacard_M450_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M450 -d Datacard_M450_cat5.root --run expected  --rMax 50000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M500
combineCards.py  cat5_M500=Datacard_M500_cat5highpt.txt Datacard_M500_cat5lowpt.txt > Datacard_M500_cat5.txt
text2workspace.py Datacard_M500_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M500 -d Datacard_M500_cat5.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M550
combineCards.py  cat5_M550=Datacard_M550_cat5highpt.txt Datacard_M550_cat5lowpt.txt > Datacard_M550_cat5.txt
text2workspace.py Datacard_M550_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M550 -d Datacard_M550_cat5.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M600
combineCards.py  cat5_M600=Datacard_M600_cat5highpt.txt Datacard_M600_cat5lowpt.txt > Datacard_M600_cat5.txt
text2workspace.py Datacard_M600_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M600 -d Datacard_M600_cat5.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M650
combineCards.py  cat5_M650=Datacard_M650_cat5highpt.txt Datacard_M650_cat5lowpt.txt > Datacard_M650_cat5.txt
text2workspace.py Datacard_M650_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M650 -d Datacard_M650_cat5.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M700
combineCards.py  cat5_M700=Datacard_M700_cat5highpt.txt Datacard_M700_cat5lowpt.txt > Datacard_M700_cat5.txt
text2workspace.py Datacard_M700_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M700 -d Datacard_M700_cat5.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M750
combineCards.py  cat5_M750=Datacard_M750_cat5highpt.txt Datacard_M750_cat5lowpt.txt > Datacard_M750_cat5.txt
text2workspace.py Datacard_M750_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M750 -d Datacard_M750_cat5.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M800
combineCards.py  cat5_M800=Datacard_M800_cat5highpt.txt Datacard_M800_cat5lowpt.txt > Datacard_M800_cat5.txt
text2workspace.py Datacard_M800_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M800 -d Datacard_M800_cat5.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M850
combineCards.py  cat5_M850=Datacard_M850_cat5highpt.txt Datacard_M850_cat5lowpt.txt > Datacard_M850_cat5.txt
text2workspace.py Datacard_M850_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M850 -d Datacard_M850_cat5.root --run expected  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M900
combineCards.py  cat5_M900=Datacard_M900_cat5highpt.txt Datacard_M900_cat5lowpt.txt > Datacard_M900_cat5.txt
text2workspace.py Datacard_M900_cat5.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat5_M900 -d Datacard_M900_cat5.root --run expected 