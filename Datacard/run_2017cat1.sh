cp Datacard_M250_SL_2017_cat1.txt datacard_M250/Datacard_M250_cat1.txt
cp Datacard_M260_SL_2017_cat1.txt datacard_M260/Datacard_M260_cat1.txt
cp Datacard_M270_SL_2017_cat1.txt datacard_M270/Datacard_M270_cat1.txt
cp Datacard_M280_SL_2017_cat1.txt datacard_M280/Datacard_M280_cat1.txt
cp Datacard_M300_SL_2017_cat1.txt datacard_M300/Datacard_M300_cat1.txt
cp Datacard_M320_SL_2017_cat1.txt datacard_M320/Datacard_M320_cat1.txt
cp Datacard_M350_SL_2017_cat1.txt datacard_M350/Datacard_M350_cat1.txt
cp Datacard_M450_SL_2017_cat1.txt datacard_M450/Datacard_M450_cat1.txt
cp Datacard_M550_SL_2017_cat1.txt datacard_M550/Datacard_M550_cat1.txt
cp Datacard_M650_SL_2017_cat1.txt datacard_M650/Datacard_M650_cat1.txt
cp Datacard_M750_SL_2017_cat1.txt datacard_M750/Datacard_M750_cat1.txt
cp Datacard_M850_SL_2017_cat1.txt datacard_M850/Datacard_M850_cat1.txt
cp Datacard_M400_SL_2017_cat1.txt datacard_M400/Datacard_M400_cat1.txt
cp Datacard_M500_SL_2017_cat1.txt datacard_M500/Datacard_M500_cat1.txt
cp Datacard_M600_SL_2017_cat1.txt datacard_M600/Datacard_M600_cat1.txt
cp Datacard_M700_SL_2017_cat1.txt datacard_M700/Datacard_M700_cat1.txt
cp Datacard_M800_SL_2017_cat1.txt datacard_M800/Datacard_M800_cat1.txt
cp Datacard_M900_SL_2017_cat1.txt datacard_M900/Datacard_M900_cat1.txt  
cp Datacard_M1000_SL_2017_cat1.txt datacard_M1000/Datacard_M1000_cat1.txt
cp Datacard_M1100_SL_2017_cat1.txt datacard_M1100/Datacard_M1100_cat1.txt
cp Datacard_M1200_SL_2017_cat1.txt datacard_M1200/Datacard_M1200_cat1.txt
cp Datacard_M1300_SL_2017_cat1.txt datacard_M1300/Datacard_M1300_cat1.txt
cp Datacard_M1400_SL_2017_cat1.txt datacard_M1400/Datacard_M1400_cat1.txt
cp Datacard_M1500_SL_2017_cat1.txt datacard_M1500/Datacard_M1500_cat1.txt
cp Datacard_M1600_SL_2017_cat1.txt datacard_M1600/Datacard_M1600_cat1.txt
cp Datacard_M1700_SL_2017_cat1.txt datacard_M1700/Datacard_M1700_cat1.txt
cp Datacard_M1800_SL_2017_cat1.txt datacard_M1800/Datacard_M1800_cat1.txt
cp Datacard_M1900_SL_2017_cat1.txt datacard_M1900/Datacard_M1900_cat1.txt
cp Datacard_M2000_SL_2017_cat1.txt datacard_M2000/Datacard_M2000_cat1.txt
cp Datacard_M2200_SL_2017_cat1.txt datacard_M2200/Datacard_M2200_cat1.txt
cp Datacard_M2400_SL_2017_cat1.txt datacard_M2400/Datacard_M2400_cat1.txt
cp Datacard_M2600_SL_2017_cat1.txt datacard_M2600/Datacard_M2600_cat1.txt
cp Datacard_M2800_SL_2017_cat1.txt datacard_M2800/Datacard_M2800_cat1.txt
cp Datacard_M3000_SL_2017_cat1.txt datacard_M3000/Datacard_M3000_cat1.txt

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M250 
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M250 -d Datacard_M250_cat1.txt --run expected  --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M260
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M260 -d Datacard_M260_cat1.txt --run expected  --rMax 50000

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M270
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M270 -d Datacard_M270_cat1.txt --run expected  --rMax 50000

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M280
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M280 -d Datacard_M280_cat1.txt --run expected  --rMax 50000

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M300
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M300 -d Datacard_M300_cat1.txt --run expected  --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M320
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M320 -d Datacard_M320_cat1.txt --run expected  --rMax 50000

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M350
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M350 -d Datacard_M350_cat1.txt --run expected  --rMax 50000

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M400
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M400 -d Datacard_M400_cat1.txt --run expected --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M450
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M450 -d Datacard_M450_cat1.txt --run expected --rMax 50000

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M500
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M500 -d Datacard_M500_cat1.txt --run expected --rMax 50000   

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M550
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M550 -d Datacard_M550_cat1.txt --run expected --rMax 50000

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M600
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M600 -d Datacard_M600_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M650
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M650 -d Datacard_M650_cat1.txt --run expected    --rMax 50000

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M700
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M700 -d Datacard_M700_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M750
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M750 -d Datacard_M750_cat1.txt --run expected    --rMax 50000

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M800
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M800 -d Datacard_M800_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M850
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M850 -d Datacard_M850_cat1.txt --run expected    --rMax 50000

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M900
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M900 -d Datacard_M900_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1000
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1000 -d Datacard_M1000_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1100
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1100 -d Datacard_M1100_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1200
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1200 -d Datacard_M1200_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1300
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1300 -d Datacard_M1300_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1400
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1400 -d Datacard_M1400_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1500
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1500 -d Datacard_M1500_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1600
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1600 -d Datacard_M1600_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1700
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1700 -d Datacard_M1700_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1800
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1800 -d Datacard_M1800_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1900
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1900 -d Datacard_M1900_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2000
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2000 -d Datacard_M2000_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2200
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2200 -d Datacard_M2200_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2400
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2400 -d Datacard_M2400_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2600
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2600 -d Datacard_M2600_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M2800
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2800 -d Datacard_M2800_cat1.txt --run expected    --rMax 50000  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M3000
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M3000 -d Datacard_M3000_cat1.txt --run expected    --rMax 50000  


