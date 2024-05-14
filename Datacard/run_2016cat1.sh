# cp Datacard_M250_SL_2016post_cat1.txt 2016postdatacard/datacard_M250/Datacard_M250_cat1.txt
# cp Datacard_M260_SL_2016post_cat1.txt 2016postdatacard/datacard_M260/Datacard_M260_cat1.txt
# cp Datacard_M270_SL_2016post_cat1.txt 2016postdatacard/datacard_M270/Datacard_M270_cat1.txt
# cp Datacard_M280_SL_2016post_cat1.txt 2016postdatacard/datacard_M280/Datacard_M280_cat1.txt
# cp Datacard_M300_SL_2016post_cat1.txt 2016postdatacard/datacard_M300/Datacard_M300_cat1.txt
# cp Datacard_M320_SL_2016post_cat1.txt 2016postdatacard/datacard_M320/Datacard_M320_cat1.txt
# cp Datacard_M350_SL_2016post_cat1.txt 2016postdatacard/datacard_M350/Datacard_M350_cat1.txt
# cp Datacard_M450_SL_2016post_cat1.txt 2016postdatacard/datacard_M450/Datacard_M450_cat1.txt
# cp Datacard_M550_SL_2016post_cat1.txt 2016postdatacard/datacard_M550/Datacard_M550_cat1.txt
# cp Datacard_M650_SL_2016post_cat1.txt 2016postdatacard/datacard_M650/Datacard_M650_cat1.txt
# cp Datacard_M750_SL_2016post_cat1.txt 2016postdatacard/datacard_M750/Datacard_M750_cat1.txt
# cp Datacard_M850_SL_2016post_cat1.txt 2016postdatacard/datacard_M850/Datacard_M850_cat1.txt
# cp Datacard_M400_SL_2016post_cat1.txt 2016postdatacard/datacard_M400/Datacard_M400_cat1.txt
# cp Datacard_M500_SL_2016post_cat1.txt 2016postdatacard/datacard_M500/Datacard_M500_cat1.txt
# cp Datacard_M600_SL_2016post_cat1.txt 2016postdatacard/datacard_M600/Datacard_M600_cat1.txt
# cp Datacard_M700_SL_2016post_cat1.txt 2016postdatacard/datacard_M700/Datacard_M700_cat1.txt
# cp Datacard_M800_SL_2016post_cat1.txt 2016postdatacard/datacard_M800/Datacard_M800_cat1.txt
# cp Datacard_M900_SL_2016post_cat1.txt 2016postdatacard/datacard_M900/Datacard_M900_cat1.txt  
# cp Datacard_M1000_SL_2016post_cat1.txt 2016postdatacard/datacard_M1000/Datacard_M1000_cat1.txt
# cp Datacard_M1100_SL_2016post_cat1.txt 2016postdatacard/datacard_M1100/Datacard_M1100_cat1.txt
# cp Datacard_M1200_SL_2016post_cat1.txt 2016postdatacard/datacard_M1200/Datacard_M1200_cat1.txt
# cp Datacard_M1300_SL_2016post_cat1.txt 2016postdatacard/datacard_M1300/Datacard_M1300_cat1.txt
# cp Datacard_M1400_SL_2016post_cat1.txt 2016postdatacard/datacard_M1400/Datacard_M1400_cat1.txt
# cp Datacard_M1500_SL_2016post_cat1.txt 2016postdatacard/datacard_M1500/Datacard_M1500_cat1.txt
# cp Datacard_M1600_SL_2016post_cat1.txt 2016postdatacard/datacard_M1600/Datacard_M1600_cat1.txt
# cp Datacard_M1700_SL_2016post_cat1.txt 2016postdatacard/datacard_M1700/Datacard_M1700_cat1.txt
# cp Datacard_M1800_SL_2016post_cat1.txt 2016postdatacard/datacard_M1800/Datacard_M1800_cat1.txt
# cp Datacard_M1900_SL_2016post_cat1.txt 2016postdatacard/datacard_M1900/Datacard_M1900_cat1.txt
# cp Datacard_M2000_SL_2016post_cat1.txt 2016postdatacard/datacard_M2000/Datacard_M2000_cat1.txt
# cp Datacard_M2200_SL_2016post_cat1.txt 2016postdatacard/datacard_M2200/Datacard_M2200_cat1.txt
# cp Datacard_M2400_SL_2016post_cat1.txt 2016postdatacard/datacard_M2400/Datacard_M2400_cat1.txt
# cp Datacard_M2600_SL_2016post_cat1.txt 2016postdatacard/datacard_M2600/Datacard_M2600_cat1.txt
# cp Datacard_M2800_SL_2016post_cat1.txt 2016postdatacard/datacard_M2800/Datacard_M2800_cat1.txt
# cp Datacard_M3000_SL_2016post_cat1.txt 2016postdatacard/datacard_M3000/Datacard_M3000_cat1.txt

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M250
# text2workspace.py Datacard_M250_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M250 -d Datacard_M250_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M260
# text2workspace.py Datacard_M260_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M260 -d Datacard_M260_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M270
# text2workspace.py Datacard_M270_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M270 -d Datacard_M270_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M280
# text2workspace.py Datacard_M280_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M280 -d Datacard_M280_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M300
# text2workspace.py Datacard_M300_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M300 -d Datacard_M300_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M320
# text2workspace.py Datacard_M320_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M320 -d Datacard_M320_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M350
# text2workspace.py Datacard_M350_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M350 -d Datacard_M350_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M400
# text2workspace.py Datacard_M400_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M400 -d Datacard_M400_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M450
# text2workspace.py Datacard_M450_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M450 -d Datacard_M450_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M500
# text2workspace.py Datacard_M500_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M500 -d Datacard_M500_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M550
# text2workspace.py Datacard_M550_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M550 -d Datacard_M550_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M600
# text2workspace.py Datacard_M600_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M600 -d Datacard_M600_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M650
# text2workspace.py Datacard_M650_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M650 -d Datacard_M650_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M700
# text2workspace.py Datacard_M700_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M700 -d Datacard_M700_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M750
# text2workspace.py Datacard_M750_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M750 -d Datacard_M750_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M800
# text2workspace.py Datacard_M800_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M800 -d Datacard_M800_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M850
# text2workspace.py Datacard_M850_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M850 -d Datacard_M850_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M900
# text2workspace.py Datacard_M900_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M900 -d Datacard_M900_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1000
  
   
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1100
# text2workspace.py Datacard_M1100_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1100 -d Datacard_M1100_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1200
# text2workspace.py Datacard_M1200_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1200 -d Datacard_M1200_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1300
# text2workspace.py Datacard_M1300_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1300 -d Datacard_M1300_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1400
# text2workspace.py Datacard_M1400_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1400 -d Datacard_M1400_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1500
# text2workspace.py Datacard_M1500_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1500 -d Datacard_M1500_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1600
# text2workspace.py Datacard_M1600_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1600 -d Datacard_M1600_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1700
# text2workspace.py Datacard_M1700_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1700 -d Datacard_M1700_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1800
# text2workspace.py Datacard_M1800_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1800 -d Datacard_M1800_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M1900
# text2workspace.py Datacard_M1900_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1900 -d Datacard_M1900_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M2000
# text2workspace.py Datacard_M2000_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2000 -d Datacard_M2000_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M2200
# text2workspace.py Datacard_M2200_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2200 -d Datacard_M2200_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M2400
# text2workspace.py Datacard_M2400_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2400 -d Datacard_M2400_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M2600
# text2workspace.py Datacard_M2600_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2600 -d Datacard_M2600_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M2800
# text2workspace.py Datacard_M2800_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2800 -d Datacard_M2800_cat1.root --run expected  --rMax 30000  
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_M3000
# text2workspace.py Datacard_M3000_cat1.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M3000 -d Datacard_M3000_cat1.root --run expected  --rMax 30000  

cp Datacard_M250_SL_2016pre_cat1.txt 2016predatacard/datacard_M250/Datacard_M250_cat1.txt
cp Datacard_M260_SL_2016pre_cat1.txt 2016predatacard/datacard_M260/Datacard_M260_cat1.txt
cp Datacard_M270_SL_2016pre_cat1.txt 2016predatacard/datacard_M270/Datacard_M270_cat1.txt
cp Datacard_M280_SL_2016pre_cat1.txt 2016predatacard/datacard_M280/Datacard_M280_cat1.txt
cp Datacard_M300_SL_2016pre_cat1.txt 2016predatacard/datacard_M300/Datacard_M300_cat1.txt
cp Datacard_M320_SL_2016pre_cat1.txt 2016predatacard/datacard_M320/Datacard_M320_cat1.txt
cp Datacard_M350_SL_2016pre_cat1.txt 2016predatacard/datacard_M350/Datacard_M350_cat1.txt
cp Datacard_M450_SL_2016pre_cat1.txt 2016predatacard/datacard_M450/Datacard_M450_cat1.txt
cp Datacard_M550_SL_2016pre_cat1.txt 2016predatacard/datacard_M550/Datacard_M550_cat1.txt
cp Datacard_M650_SL_2016pre_cat1.txt 2016predatacard/datacard_M650/Datacard_M650_cat1.txt
cp Datacard_M750_SL_2016pre_cat1.txt 2016predatacard/datacard_M750/Datacard_M750_cat1.txt
cp Datacard_M850_SL_2016pre_cat1.txt 2016predatacard/datacard_M850/Datacard_M850_cat1.txt
cp Datacard_M400_SL_2016pre_cat1.txt 2016predatacard/datacard_M400/Datacard_M400_cat1.txt
cp Datacard_M500_SL_2016pre_cat1.txt 2016predatacard/datacard_M500/Datacard_M500_cat1.txt
cp Datacard_M600_SL_2016pre_cat1.txt 2016predatacard/datacard_M600/Datacard_M600_cat1.txt
cp Datacard_M700_SL_2016pre_cat1.txt 2016predatacard/datacard_M700/Datacard_M700_cat1.txt
cp Datacard_M800_SL_2016pre_cat1.txt 2016predatacard/datacard_M800/Datacard_M800_cat1.txt
cp Datacard_M900_SL_2016pre_cat1.txt 2016predatacard/datacard_M900/Datacard_M900_cat1.txt  
cp Datacard_M1000_SL_2016pre_cat1.txt 2016predatacard/datacard_M1000/Datacard_M1000_cat1.txt
cp Datacard_M1100_SL_2016pre_cat1.txt 2016predatacard/datacard_M1100/Datacard_M1100_cat1.txt
cp Datacard_M1200_SL_2016pre_cat1.txt 2016predatacard/datacard_M1200/Datacard_M1200_cat1.txt
cp Datacard_M1300_SL_2016pre_cat1.txt 2016predatacard/datacard_M1300/Datacard_M1300_cat1.txt
cp Datacard_M1400_SL_2016pre_cat1.txt 2016predatacard/datacard_M1400/Datacard_M1400_cat1.txt
cp Datacard_M1500_SL_2016pre_cat1.txt 2016predatacard/datacard_M1500/Datacard_M1500_cat1.txt
cp Datacard_M1600_SL_2016pre_cat1.txt 2016predatacard/datacard_M1600/Datacard_M1600_cat1.txt
cp Datacard_M1700_SL_2016pre_cat1.txt 2016predatacard/datacard_M1700/Datacard_M1700_cat1.txt
cp Datacard_M1800_SL_2016pre_cat1.txt 2016predatacard/datacard_M1800/Datacard_M1800_cat1.txt
cp Datacard_M1900_SL_2016pre_cat1.txt 2016predatacard/datacard_M1900/Datacard_M1900_cat1.txt
cp Datacard_M2000_SL_2016pre_cat1.txt 2016predatacard/datacard_M2000/Datacard_M2000_cat1.txt
cp Datacard_M2200_SL_2016pre_cat1.txt 2016predatacard/datacard_M2200/Datacard_M2200_cat1.txt
cp Datacard_M2400_SL_2016pre_cat1.txt 2016predatacard/datacard_M2400/Datacard_M2400_cat1.txt
cp Datacard_M2600_SL_2016pre_cat1.txt 2016predatacard/datacard_M2600/Datacard_M2600_cat1.txt
cp Datacard_M2800_SL_2016pre_cat1.txt 2016predatacard/datacard_M2800/Datacard_M2800_cat1.txt
cp Datacard_M3000_SL_2016pre_cat1.txt 2016predatacard/datacard_M3000/Datacard_M3000_cat1.txt

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M250
text2workspace.py Datacard_M250_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M250 -d Datacard_M250_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M260
text2workspace.py Datacard_M260_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M260 -d Datacard_M260_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M270
text2workspace.py Datacard_M270_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M270 -d Datacard_M270_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M280
text2workspace.py Datacard_M280_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M280 -d Datacard_M280_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M300
text2workspace.py Datacard_M300_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M300 -d Datacard_M300_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M320
text2workspace.py Datacard_M320_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M320 -d Datacard_M320_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M350
text2workspace.py Datacard_M350_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M350 -d Datacard_M350_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M400
text2workspace.py Datacard_M400_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M400 -d Datacard_M400_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M450
text2workspace.py Datacard_M450_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M450 -d Datacard_M450_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M500
text2workspace.py Datacard_M500_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M500 -d Datacard_M500_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M550
text2workspace.py Datacard_M550_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M550 -d Datacard_M550_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M600
text2workspace.py Datacard_M600_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M600 -d Datacard_M600_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M650
text2workspace.py Datacard_M650_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M650 -d Datacard_M650_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M700
text2workspace.py Datacard_M700_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M700 -d Datacard_M700_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M750
text2workspace.py Datacard_M750_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M750 -d Datacard_M750_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M800
text2workspace.py Datacard_M800_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M800 -d Datacard_M800_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M850
text2workspace.py Datacard_M850_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M850 -d Datacard_M850_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M900
text2workspace.py Datacard_M900_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M900 -d Datacard_M900_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1000
text2workspace.py Datacard_M1000_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1000 -d Datacard_M1000_cat1.root --run expected  --rMax 30000     
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1100
text2workspace.py Datacard_M1100_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1100 -d Datacard_M1100_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1200
text2workspace.py Datacard_M1200_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1200 -d Datacard_M1200_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1300
text2workspace.py Datacard_M1300_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1300 -d Datacard_M1300_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1400
text2workspace.py Datacard_M1400_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1400 -d Datacard_M1400_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1500
text2workspace.py Datacard_M1500_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1500 -d Datacard_M1500_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1600
text2workspace.py Datacard_M1600_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1600 -d Datacard_M1600_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1700
text2workspace.py Datacard_M1700_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1700 -d Datacard_M1700_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1800
text2workspace.py Datacard_M1800_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1800 -d Datacard_M1800_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M1900
text2workspace.py Datacard_M1900_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M1900 -d Datacard_M1900_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2000
text2workspace.py Datacard_M2000_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2000 -d Datacard_M2000_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2200
text2workspace.py Datacard_M2200_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2200 -d Datacard_M2200_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2400
text2workspace.py Datacard_M2400_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2400 -d Datacard_M2400_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2600
text2workspace.py Datacard_M2600_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2600 -d Datacard_M2600_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M2800
text2workspace.py Datacard_M2800_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M2800 -d Datacard_M2800_cat1.root --run expected  --rMax 30000  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_M3000
text2workspace.py Datacard_M3000_cat1.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat1_M3000 -d Datacard_M3000_cat1.root --run expected  --rMax 30000  