cp Datacard_M250_FH_2018_cat7.txt 2018datacard/datacard_M250/Datacard_M250_cat7.txt
cp Datacard_M260_FH_2018_cat7.txt 2018datacard/datacard_M260/Datacard_M260_cat7.txt
cp Datacard_M270_FH_2018_cat7.txt 2018datacard/datacard_M270/Datacard_M270_cat7.txt
cp Datacard_M280_FH_2018_cat7.txt 2018datacard/datacard_M280/Datacard_M280_cat7.txt
cp Datacard_M300_FH_2018_cat7.txt 2018datacard/datacard_M300/Datacard_M300_cat7.txt
cp Datacard_M320_FH_2018_cat7.txt 2018datacard/datacard_M320/Datacard_M320_cat7.txt
cp Datacard_M350_FH_2018_cat7.txt 2018datacard/datacard_M350/Datacard_M350_cat7.txt
cp Datacard_M450_FH_2018_cat7.txt 2018datacard/datacard_M450/Datacard_M450_cat7.txt
cp Datacard_M550_FH_2018_cat7.txt 2018datacard/datacard_M550/Datacard_M550_cat7.txt
cp Datacard_M650_FH_2018_cat7.txt 2018datacard/datacard_M650/Datacard_M650_cat7.txt
cp Datacard_M750_FH_2018_cat7.txt 2018datacard/datacard_M750/Datacard_M750_cat7.txt
cp Datacard_M850_FH_2018_cat7.txt 2018datacard/datacard_M850/Datacard_M850_cat7.txt
cp Datacard_M400_FH_2018_cat7.txt 2018datacard/datacard_M400/Datacard_M400_cat7.txt
cp Datacard_M500_FH_2018_cat7.txt 2018datacard/datacard_M500/Datacard_M500_cat7.txt
cp Datacard_M600_FH_2018_cat7.txt 2018datacard/datacard_M600/Datacard_M600_cat7.txt
cp Datacard_M700_FH_2018_cat7.txt 2018datacard/datacard_M700/Datacard_M700_cat7.txt
cp Datacard_M800_FH_2018_cat7.txt 2018datacard/datacard_M800/Datacard_M800_cat7.txt
cp Datacard_M900_FH_2018_cat7.txt 2018datacard/datacard_M900/Datacard_M900_cat7.txt  
cp Datacard_M1000_FH_2018_cat7.txt 2018datacard/datacard_M1000/Datacard_M1000_cat7.txt
cp Datacard_M1100_FH_2018_cat7.txt 2018datacard/datacard_M1100/Datacard_M1100_cat7.txt
cp Datacard_M1200_FH_2018_cat7.txt 2018datacard/datacard_M1200/Datacard_M1200_cat7.txt
cp Datacard_M1300_FH_2018_cat7.txt 2018datacard/datacard_M1300/Datacard_M1300_cat7.txt
cp Datacard_M1400_FH_2018_cat7.txt 2018datacard/datacard_M1400/Datacard_M1400_cat7.txt
cp Datacard_M1500_FH_2018_cat7.txt 2018datacard/datacard_M1500/Datacard_M1500_cat7.txt
cp Datacard_M1600_FH_2018_cat7.txt 2018datacard/datacard_M1600/Datacard_M1600_cat7.txt
cp Datacard_M1700_FH_2018_cat7.txt 2018datacard/datacard_M1700/Datacard_M1700_cat7.txt
cp Datacard_M1800_FH_2018_cat7.txt 2018datacard/datacard_M1800/Datacard_M1800_cat7.txt
cp Datacard_M1900_FH_2018_cat7.txt 2018datacard/datacard_M1900/Datacard_M1900_cat7.txt
cp Datacard_M2000_FH_2018_cat7.txt 2018datacard/datacard_M2000/Datacard_M2000_cat7.txt
cp Datacard_M2200_FH_2018_cat7.txt 2018datacard/datacard_M2200/Datacard_M2200_cat7.txt
cp Datacard_M2400_FH_2018_cat7.txt 2018datacard/datacard_M2400/Datacard_M2400_cat7.txt
cp Datacard_M2600_FH_2018_cat7.txt 2018datacard/datacard_M2600/Datacard_M2600_cat7.txt
cp Datacard_M2800_FH_2018_cat7.txt 2018datacard/datacard_M2800/Datacard_M2800_cat7.txt
cp Datacard_M3000_FH_2018_cat7.txt 2018datacard/datacard_M3000/Datacard_M3000_cat7.txt

#no datacard
#no datacard
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M250
   
  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M260
   
  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M270
   
  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M280
text2workspace.py Datacard_M280_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M280 -d Datacard_M280_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M300
   
  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M320
text2workspace.py Datacard_M320_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M320 -d Datacard_M320_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M350
text2workspace.py Datacard_M350_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M350 -d Datacard_M350_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M400
text2workspace.py Datacard_M400_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M400 -d Datacard_M400_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M450
text2workspace.py Datacard_M450_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M450 -d Datacard_M450_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M500
text2workspace.py Datacard_M500_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M500 -d Datacard_M500_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M550
text2workspace.py Datacard_M550_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M550 -d Datacard_M550_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M600
   
  
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M650
text2workspace.py Datacard_M650_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M650 -d Datacard_M650_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M700
text2workspace.py Datacard_M700_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M700 -d Datacard_M700_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M750
text2workspace.py Datacard_M750_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M750 -d Datacard_M750_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M800
text2workspace.py Datacard_M800_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M800 -d Datacard_M800_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M850
text2workspace.py Datacard_M850_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M850 -d Datacard_M850_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M900
text2workspace.py Datacard_M900_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M900 -d Datacard_M900_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M1000
text2workspace.py Datacard_M1000_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M1000 -d Datacard_M1000_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M1100
text2workspace.py Datacard_M1100_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M1100 -d Datacard_M1100_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M1200
text2workspace.py Datacard_M1200_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M1200 -d Datacard_M1200_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M1300
text2workspace.py Datacard_M1300_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M1300 -d Datacard_M1300_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M1400
text2workspace.py Datacard_M1400_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M1400 -d Datacard_M1400_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M1500
text2workspace.py Datacard_M1500_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M1500 -d Datacard_M1500_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M1600
text2workspace.py Datacard_M1600_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M1600 -d Datacard_M1600_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M1800
text2workspace.py Datacard_M1800_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M1800 -d Datacard_M1800_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M1900
text2workspace.py Datacard_M1900_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M1900 -d Datacard_M1900_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M2000
text2workspace.py Datacard_M2000_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M2000 -d Datacard_M2000_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M2200
text2workspace.py Datacard_M2200_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M2200 -d Datacard_M2200_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M2400
text2workspace.py Datacard_M2400_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M2400 -d Datacard_M2400_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M2600
text2workspace.py Datacard_M2600_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M2600 -d Datacard_M2600_cat7.root --run expected --rMax 50000   
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_M2800
text2workspace.py Datacard_M2800_cat7.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_cat7_M2800 -d Datacard_M2800_cat7.root --run expected --rMax 50000   

