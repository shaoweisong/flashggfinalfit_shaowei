cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M250
combineCards.py  Datacard_cat8_M250=Datacard_M250_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M250_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M250_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M250_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M250_cat8.txt
text2workspace.py Datacard_M250_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M250 -d Datacard_M250_cat8.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M260
combineCards.py  Datacard_cat8_M260=Datacard_M260_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M260_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M260_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M260_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M260_cat8.txt
text2workspace.py Datacard_M260_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M260 -d Datacard_M260_cat8.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M270
combineCards.py  Datacard_cat8_M270=Datacard_M270_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M270_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M270_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M270_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M270_cat8.txt
text2workspace.py Datacard_M270_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M270 -d Datacard_M270_cat8.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M280
combineCards.py  Datacard_cat8_M280=Datacard_M280_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M280_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M280_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M280_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M280_cat8.txt
text2workspace.py Datacard_M280_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M280 -d Datacard_M280_cat8.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M300
combineCards.py  Datacard_cat8_M300=Datacard_M300_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M300_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M300_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M300_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M300_cat8.txt
text2workspace.py Datacard_M300_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M300 -d Datacard_M300_cat8.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M320
combineCards.py  Datacard_cat8_M320=Datacard_M320_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M320_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M320_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M320_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M320_cat8.txt
text2workspace.py Datacard_M320_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M320 -d Datacard_M320_cat8.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M350
combineCards.py  Datacard_cat8_M350=Datacard_M350_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M350_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M350_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M350_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M350_cat8.txt
text2workspace.py Datacard_M350_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M350 -d Datacard_M350_cat8.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M400
combineCards.py  Datacard_cat8_M400=Datacard_M400_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M400_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M400_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M400_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M400_cat8.txt
text2workspace.py Datacard_M400_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M400 -d Datacard_M400_cat8.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M450
combineCards.py  Datacard_cat8_M450=Datacard_M450_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M450_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M450_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M450_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M450_cat8.txt
text2workspace.py Datacard_M450_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M450 -d Datacard_M450_cat8.root --run expected    --rMax 10000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M500
combineCards.py  Datacard_cat8_M500=Datacard_M500_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M500_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M500_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M500_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M500_cat8.txt
text2workspace.py Datacard_M500_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M500 -d Datacard_M500_cat8.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M550
combineCards.py  Datacard_cat8_M550=Datacard_M550_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M550_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M550_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M550_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M550_cat8.txt
text2workspace.py Datacard_M550_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M550 -d Datacard_M550_cat8.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M600
combineCards.py  Datacard_cat8_M600=Datacard_M600_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M600_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M600_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M600_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M600_cat8.txt
text2workspace.py Datacard_M600_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M600 -d Datacard_M600_cat8.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M650
combineCards.py  Datacard_cat8_M650=Datacard_M650_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M650_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M650_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M650_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M650_cat8.txt
text2workspace.py Datacard_M650_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M650 -d Datacard_M650_cat8.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M700
combineCards.py  Datacard_cat8_M700=Datacard_M700_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M700_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M700_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M700_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M700_cat8.txt
text2workspace.py Datacard_M700_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M700 -d Datacard_M700_cat8.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M750
combineCards.py  Datacard_cat8_M750=Datacard_M750_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M750_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M750_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M750_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M750_cat8.txt
text2workspace.py Datacard_M750_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M750 -d Datacard_M750_cat8.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M800
combineCards.py  Datacard_cat8_M800=Datacard_M800_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M800_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M800_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M800_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M800_cat8.txt
text2workspace.py Datacard_M800_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M800 -d Datacard_M800_cat8.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M850
combineCards.py  Datacard_cat8_M850=Datacard_M850_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M850_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M850_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M850_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M850_cat8.txt
text2workspace.py Datacard_M850_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M850 -d Datacard_M850_cat8.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M900
combineCards.py  Datacard_cat8_M900=Datacard_M900_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M900_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M900_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M900_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M900_cat8.txt
text2workspace.py Datacard_M900_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M900 -d Datacard_M900_cat8.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M1000
combineCards.py  Datacard_cat8_M1000=Datacard_M1000_FH_2018_combineFHSL_cat8highpurity.txt Datacard_M1000_FH_2018_combineFHSL_cat8lowestpurity.txt Datacard_M1000_FH_2018_combineFHSL_cat8mediumpurity.txt Datacard_M1000_FH_2018_combineFHSL_cat8lowpurity.txt > Datacard_M1000_cat8.txt
text2workspace.py Datacard_M1000_cat8.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat8_M1000 -d Datacard_M1000_cat8.root --run expected    
