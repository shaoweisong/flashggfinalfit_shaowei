# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M250
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M250/Datacard_M250_cat3lowpt.txt Datacard_M250_cat3.txt
# text2workspace.py Datacard_M250_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M250 -d Datacard_M250_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M260
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M260/Datacard_M260_cat3lowpt.txt Datacard_M260_cat3.txt
# text2workspace.py Datacard_M260_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M260 -d Datacard_M260_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M270
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M270/Datacard_M270_cat3lowpt.txt Datacard_M270_cat3.txt
# text2workspace.py Datacard_M270_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M270 -d Datacard_M270_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M280
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M280/Datacard_M280_cat3lowpt.txt Datacard_M280_cat3.txt
# text2workspace.py Datacard_M280_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M280 -d Datacard_M280_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M300
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M300/Datacard_M300_cat3lowpt.txt Datacard_M300_cat3.txt
# text2workspace.py Datacard_M300_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M300 -d Datacard_M300_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M320
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M320/Datacard_M320_cat3lowpt.txt Datacard_M320_cat3.txt
# text2workspace.py Datacard_M320_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M320 -d Datacard_M320_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M350
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M350/Datacard_M350_cat3lowpt.txt Datacard_M350_cat3.txt
# text2workspace.py Datacard_M350_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M350 -d Datacard_M350_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M400
# combineCards.py  cat3_M400=Datacard_M400_cat3highpt.txt Datacard_M400_cat3lowpt.txt > Datacard_M400_cat3.txt
# text2workspace.py Datacard_M400_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M400 -d Datacard_M400_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M450
# combineCards.py  cat3_M450=Datacard_M450_cat3highpt.txt Datacard_M450_cat3lowpt.txt > Datacard_M450_cat3.txt
# text2workspace.py Datacard_M450_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M450 -d Datacard_M450_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M500
# combineCards.py  cat3_M500=Datacard_M500_cat3highpt.txt Datacard_M500_cat3lowpt.txt > Datacard_M500_cat3.txt
# text2workspace.py Datacard_M500_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M500 -d Datacard_M500_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M550
# combineCards.py  cat3_M550=Datacard_M550_cat3highpt.txt Datacard_M550_cat3lowpt.txt > Datacard_M550_cat3.txt
# text2workspace.py Datacard_M550_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M550 -d Datacard_M550_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M600
# combineCards.py  cat3_M600=Datacard_M600_cat3highpt.txt Datacard_M600_cat3lowpt.txt > Datacard_M600_cat3.txt
# text2workspace.py Datacard_M600_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M600 -d Datacard_M600_cat3.root --run expected    --rMax 10000
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M650
# combineCards.py  cat3_M650=Datacard_M650_cat3highpt.txt Datacard_M650_cat3lowpt.txt > Datacard_M650_cat3.txt
# text2workspace.py Datacard_M650_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M650 -d Datacard_M650_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M700
# combineCards.py  cat3_M700=Datacard_M700_cat3highpt.txt Datacard_M700_cat3lowpt.txt > Datacard_M700_cat3.txt
# text2workspace.py Datacard_M700_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M700 -d Datacard_M700_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M750
# combineCards.py  cat3_M750=Datacard_M750_cat3highpt.txt Datacard_M750_cat3lowpt.txt > Datacard_M750_cat3.txt
# text2workspace.py Datacard_M750_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M750 -d Datacard_M750_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M800
# combineCards.py  cat3_M800=Datacard_M800_cat3highpt.txt Datacard_M800_cat3lowpt.txt > Datacard_M800_cat3.txt
# text2workspace.py Datacard_M800_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M800 -d Datacard_M800_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M850
# combineCards.py  cat3_M850=Datacard_M850_cat3highpt.txt Datacard_M850_cat3lowpt.txt > Datacard_M850_cat3.txt
# text2workspace.py Datacard_M850_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M850 -d Datacard_M850_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M900
# combineCards.py  cat3_M900=Datacard_M900_cat3highpt.txt Datacard_M900_cat3lowpt.txt > Datacard_M900_cat3.txt
# text2workspace.py Datacard_M900_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M900 -d Datacard_M900_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1000
# combineCards.py  cat3_M1000=Datacard_M1000_cat3highpt.txt Datacard_M1000_cat3lowpt.txt > Datacard_M1000_cat3.txt
# text2workspace.py Datacard_M1000_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1000 -d Datacard_M1000_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1100
# combineCards.py  cat3_M1100=Datacard_M1100_cat3highpt.txt Datacard_M1100_cat3lowpt.txt > Datacard_M1100_cat3.txt
# text2workspace.py Datacard_M1100_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1100 -d Datacard_M1100_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1200
# combineCards.py  cat3_M1200=Datacard_M1200_cat3highpt.txt Datacard_M1200_cat3lowpt.txt > Datacard_M1200_cat3.txt
# text2workspace.py Datacard_M1200_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1200 -d Datacard_M1200_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1300
# combineCards.py  cat3_M1300=Datacard_M1300_cat3highpt.txt Datacard_M1300_cat3lowpt.txt > Datacard_M1300_cat3.txt
# text2workspace.py Datacard_M1300_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1300 -d Datacard_M1300_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1400
# combineCards.py  cat3_M1400=Datacard_M1400_cat3highpt.txt Datacard_M1400_cat3lowpt.txt > Datacard_M1400_cat3.txt
# text2workspace.py Datacard_M1400_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1400 -d Datacard_M1400_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1500
# combineCards.py  cat3_M1500=Datacard_M1500_cat3highpt.txt Datacard_M1500_cat3lowpt.txt > Datacard_M1500_cat3.txt
# text2workspace.py Datacard_M1500_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1500 -d Datacard_M1500_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1600
# combineCards.py  cat3_M1600=Datacard_M1600_cat3highpt.txt Datacard_M1600_cat3lowpt.txt > Datacard_M1600_cat3.txt
# text2workspace.py Datacard_M1600_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1600 -d Datacard_M1600_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1700
# combineCards.py  cat3_M1700=Datacard_M1700_cat3highpt.txt Datacard_M1700_cat3lowpt.txt > Datacard_M1700_cat3.txt
# text2workspace.py Datacard_M1700_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1700 -d Datacard_M1700_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1800
# combineCards.py  cat3_M1800=Datacard_M1800_cat3highpt.txt Datacard_M1800_cat3lowpt.txt > Datacard_M1800_cat3.txt
# text2workspace.py Datacard_M1800_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1800 -d Datacard_M1800_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1900
# combineCards.py  cat3_M1900=Datacard_M1900_cat3highpt.txt Datacard_M1900_cat3lowpt.txt > Datacard_M1900_cat3.txt
# text2workspace.py Datacard_M1900_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M1900 -d Datacard_M1900_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2000
# combineCards.py  cat3_M2000=Datacard_M2000_cat3highpt.txt Datacard_M2000_cat3lowpt.txt > Datacard_M2000_cat3.txt
# text2workspace.py Datacard_M2000_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M2000 -d Datacard_M2000_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2200
# combineCards.py  cat3_M2200=Datacard_M2200_cat3highpt.txt Datacard_M2200_cat3lowpt.txt > Datacard_M2200_cat3.txt
# text2workspace.py Datacard_M2200_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M2200 -d Datacard_M2200_cat3.root --run expected    
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2400
# combineCards.py  cat3_M2400=Datacard_M2400_cat3highpt.txt Datacard_M2400_cat3lowpt.txt > Datacard_M2400_cat3.txt
# text2workspace.py Datacard_M2400_cat3.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M2400 -d Datacard_M2400_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2600
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2600/Datacard_M2600_cat3highpt.txt Datacard_M2600_cat3.txt
text2workspace.py Datacard_M2600_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M2600 -d Datacard_M2600_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2800
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2800/Datacard_M2800_cat3highpt.txt Datacard_M2800_cat3.txt
text2workspace.py Datacard_M2800_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M2800 -d Datacard_M2800_cat3.root --run expected    
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M3000
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M3000/Datacard_M3000_cat3highpt.txt Datacard_M3000_cat3.txt
text2workspace.py Datacard_M3000_cat3.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat3_M3000 -d Datacard_M3000_cat3.root --run expected    
