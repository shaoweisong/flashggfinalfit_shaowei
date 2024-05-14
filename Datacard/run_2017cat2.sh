cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M250
combineCards.py  Datacard_cat2_M250=Datacard_M250_SL_2017_combineFHSL_cat2highpt.txt Datacard_M250_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M250_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M250_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M250_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M250_cat2.txt
text2workspace.py Datacard_M250_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M250 -d Datacard_M250_cat2.root --run expected  --rMax 20000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M260
combineCards.py  Datacard_cat2_M260=Datacard_M260_SL_2017_combineFHSL_cat2highpt.txt Datacard_M260_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M260_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M260_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M260_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M260_cat2.txt
text2workspace.py Datacard_M260_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M260 -d Datacard_M260_cat2.root --run expected  --rMax 20000
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M270
combineCards.py  Datacard_cat2_M270=Datacard_M270_SL_2017_combineFHSL_cat2highpt.txt Datacard_M270_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M270_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M270_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M270_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M270_cat2.txt
text2workspace.py Datacard_M270_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M270 -d Datacard_M270_cat2.root --run expected  --rMax 10000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M280
combineCards.py  Datacard_cat2_M280=Datacard_M280_SL_2017_combineFHSL_cat2highpt.txt Datacard_M280_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M280_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M280_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M280_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M280_cat2.txt
text2workspace.py Datacard_M280_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M280 -d Datacard_M280_cat2.root --run expected  --rMax 10000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M300
combineCards.py  Datacard_cat2_M300=Datacard_M300_SL_2017_combineFHSL_cat2highpt.txt Datacard_M300_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M300_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M300_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M300_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M300_cat2.txt
text2workspace.py Datacard_M300_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M300 -d Datacard_M300_cat2.root --run expected  --rMax 10000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M320
combineCards.py  Datacard_cat2_M320=Datacard_M320_SL_2017_combineFHSL_cat2highpt.txt Datacard_M320_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M320_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M320_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M320_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M320_cat2.txt
text2workspace.py Datacard_M320_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M320 -d Datacard_M320_cat2.root --run expected  --rMax 10000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M350
combineCards.py  Datacard_cat2_M350=Datacard_M350_SL_2017_combineFHSL_cat2highpt.txt Datacard_M350_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M350_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M350_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M350_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M350_cat2.txt
text2workspace.py Datacard_M350_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M350 -d Datacard_M350_cat2.root --run expected  --rMax 10000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M400
combineCards.py  Datacard_cat2_M400=Datacard_M400_SL_2017_combineFHSL_cat2highpt.txt Datacard_M400_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M400_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M400_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M400_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M400_cat2.txt
text2workspace.py Datacard_M400_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M400 -d Datacard_M400_cat2.root --run expected  --rMax 10000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M450
combineCards.py  Datacard_cat2_M450=Datacard_M450_SL_2017_combineFHSL_cat2highpt.txt Datacard_M450_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M450_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M450_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M450_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M450_cat2.txt
text2workspace.py Datacard_M450_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M450 -d Datacard_M450_cat2.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M500
combineCards.py  Datacard_cat2_M500=Datacard_M500_SL_2017_combineFHSL_cat2highpt.txt Datacard_M500_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M500_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M500_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M500_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M500_cat2.txt
text2workspace.py Datacard_M500_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M500 -d Datacard_M500_cat2.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M550
combineCards.py  Datacard_cat2_M550=Datacard_M550_SL_2017_combineFHSL_cat2highpt.txt Datacard_M550_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M550_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M550_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M550_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M550_cat2.txt
text2workspace.py Datacard_M550_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M550 -d Datacard_M550_cat2.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M600
combineCards.py  Datacard_cat2_M600=Datacard_M600_SL_2017_combineFHSL_cat2highpt.txt Datacard_M600_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M600_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M600_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M600_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M600_cat2.txt
text2workspace.py Datacard_M600_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M600 -d Datacard_M600_cat2.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M650
combineCards.py  Datacard_cat2_M650=Datacard_M650_SL_2017_combineFHSL_cat2highpt.txt Datacard_M650_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M650_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M650_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M650_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M650_cat2.txt
text2workspace.py Datacard_M650_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M650 -d Datacard_M650_cat2.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M700
combineCards.py  Datacard_cat2_M700=Datacard_M700_SL_2017_combineFHSL_cat2highpt.txt Datacard_M700_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M700_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M700_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M700_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M700_cat2.txt
text2workspace.py Datacard_M700_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M700 -d Datacard_M700_cat2.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M750
combineCards.py  Datacard_cat2_M750=Datacard_M750_SL_2017_combineFHSL_cat2highpt.txt Datacard_M750_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M750_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M750_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M750_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M750_cat2.txt
text2workspace.py Datacard_M750_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M750 -d Datacard_M750_cat2.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M800
combineCards.py  Datacard_cat2_M800=Datacard_M800_SL_2017_combineFHSL_cat2highpt.txt Datacard_M800_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M800_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M800_SL_2017_combineFHSL_cat2mediumpurity.txt  > Datacard_M800_cat2.txt
text2workspace.py Datacard_M800_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M800 -d Datacard_M800_cat2.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M850
combineCards.py  Datacard_cat2_M850=Datacard_M850_SL_2017_combineFHSL_cat2highpt.txt Datacard_M850_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M850_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M850_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M850_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M850_cat2.txt
text2workspace.py Datacard_M850_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M850 -d Datacard_M850_cat2.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M900
combineCards.py  Datacard_cat2_M900=Datacard_M900_SL_2017_combineFHSL_cat2highpt.txt Datacard_M900_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M900_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M900_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M900_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M900_cat2.txt
text2workspace.py Datacard_M900_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M900 -d Datacard_M900_cat2.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1000
combineCards.py  Datacard_cat2_M1000=Datacard_M1000_SL_2017_combineFHSL_cat2highpt.txt Datacard_M1000_SL_2017_combineFHSL_cat2lowpt.txt Datacard_M1000_SL_2017_combineFHSL_cat2highpurity.txt Datacard_M1000_SL_2017_combineFHSL_cat2mediumpurity.txt Datacard_M1000_SL_2017_combineFHSL_cat2lowpurity.txt > Datacard_M1000_cat2.txt
text2workspace.py Datacard_M1000_cat2.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat2_M1000 -d Datacard_M1000_cat2.root --run expected    
