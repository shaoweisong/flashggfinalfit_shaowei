# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX250_MH125
# cp Datacard_MX250_MH125_2017_cat34.txt Datacard_M250_2017.txt
# cp Datacard_MX250_MH125_2017_cat34wwgg.txt Datacard_M250_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M250_2017.txt
# text2workspace.py Datacard_M250_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M250_2017wwgg.txt
# text2workspace.py Datacard_M250_2017wwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M250 -d Datacard_M250_2017.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M250_2017wwgg -d Datacard_M250_2017wwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX300_MH125
# combineCards.pycp=Datacard_M300_2017cat12.txt Datacard_2017_cat34atacard_MX300_MH125_2017_cat34.txt > Datacard_M300_2017.txt
# cp Datacard_MX300_MH125_2017_cat34wwgg.txt Datacard_M300_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M300_2017.txt
# text2workspace.py Datacard_M300_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M300_2017wwgg.txt
# text2workspace.py Datacard_M300_2017wwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M300 -d Datacard_M300_2017.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M300_2017wwgg -d Datacard_M300_2017wwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX350_MH125
# cp Datacard_MX350_MH125_2017_cat34.txt Datacard_M350_2017.txt
# cp Datacard_MX350_MH125_2017_cat34wwgg.txt Datacard_M350_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M350_2017.txt
# text2workspace.py Datacard_M350_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M350_2017wwgg.txt
# text2workspace.py Datacard_M350_2017wwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M350 -d Datacard_M350_2017.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M350_2017wwgg -d Datacard_M350_2017wwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX450_MH125
# cp Datacard_MX450_MH125_2017_cat34.txt Datacard_M450_2017.txt
# cp Datacard_MX450_MH125_2017_cat34wwgg.txt Datacard_M450_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M450_2017.txt
# text2workspace.py Datacard_M450_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M450_2017wwgg.txt
# text2workspace.py Datacard_M450_2017wwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M450 -d Datacard_M450_2017.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M450_2017wwgg -d Datacard_M450_2017wwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX550_MH125
# combineCards.py  Datacard_2017_cat12=Datacard_M550_2017cat12.txt Datacard_2017_cat34=Datacard_MX550_MH125_2017_cat34.txt > Datacard_M550_2017.txt
# combineCards.py  Datacard_2017_cat12=Datacard_M550_2017cat12wwgg.txt Datacard_2017_cat34=Datacard_MX550_MH125_2017_cat34wwgg.txt > Datacard_M550_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M550_2017.txt
# text2workspace.py Datacard_M550_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M550_2017wwgg.txt
# text2workspace.py Datacard_M550_2017wwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M550 -d Datacard_M550_2017.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M550_2017wwgg -d Datacard_M550_2017wwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX600_MH125
# combineCards.py  Datacard_2017_cat12=Datacard_M600_2017cat12.txt Datacard_2017_cat34=Datacard_MX600_MH125_2017_cat34.txt > Datacard_M600_2017.txt
# combineCards.py  Datacard_2017_cat12=Datacard_M600_2017cat12wwgg.txt Datacard_2017_cat34=Datacard_MX600_MH125_2017_cat34wwgg.txt > Datacard_M600_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M600_2017.txt
# text2workspace.py Datacard_M600_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M600_2017wwgg.txt
# text2workspace.py Datacard_M600_2017wwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M600 -d Datacard_M600_2017.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M600_2017wwgg -d Datacard_M600_2017wwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX700_MH125
# combineCards.py  Datacard_2017_cat12=Datacard_M700_2017cat12.txt Datacard_2017_cat34=Datacard_MX700_MH125_2017_cat34.txt > Datacard_M700_2017.txt
# combineCards.py  Datacard_2017_cat12=Datacard_M700_2017cat12wwgg.txt Datacard_2017_cat34=Datacard_MX700_MH125_2017_cat34wwgg.txt > Datacard_M700_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M700_2017.txt
# text2workspace.py Datacard_M700_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M700_2017wwgg.txt
# text2workspace.py Datacard_M700_2017wwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M700 -d Datacard_M700_2017.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M700_2017wwgg -d Datacard_M700_2017wwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX850_MH125
# combineCards.py  Datacard_2017_cat12=Datacard_M850_2017cat12.txt Datacard_2017_cat34=Datacard_MX850_MH125_2017_cat34.txt > Datacard_M850_2017.txt
# combineCards.py  Datacard_2017_cat12=Datacard_M850_2017cat12wwgg.txt Datacard_2017_cat34=Datacard_MX850_MH125_2017_cat34wwgg.txt > Datacard_M850_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M850_2017.txt
# text2workspace.py Datacard_M850_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M850_2017wwgg.txt
# text2workspace.py Datacard_M850_2017wwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M850 -d Datacard_M850_2017.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M850_2017wwgg -d Datacard_M850_2017wwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1000_MH125
# combineCards.py  Datacard_2017_cat12=Datacard_M1000_2017cat12.txt Datacard_2017_cat34=Datacard_MX1000_MH125_2017_cat34.txt > Datacard_M1000_2017.txt
# combineCards.py  Datacard_2017_cat12=Datacard_M1000_2017cat12wwgg.txt Datacard_2017_cat34=Datacard_MX1000_MH125_2017_cat34wwgg.txt > Datacard_M1000_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1000_2017.txt
# text2workspace.py Datacard_M1000_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1000_2017wwgg.txt
# text2workspace.py Datacard_M1000_2017wwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M1000 -d Datacard_M1000_2017.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M1000_2017wwgg -d Datacard_M1000_2017wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1200_MH125
cp Datacard_M1200_2017cat12.txt  Datacard_M1200_2017.txt
cp Datacard_M1200_2017cat12wwgg.txt  Datacard_M1200_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1200_2017.txt
text2workspace.py Datacard_M1200_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1200_2017wwgg.txt
text2workspace.py Datacard_M1200_2017wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M1200 -d Datacard_M1200_2017.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M1200_2017wwgg -d Datacard_M1200_2017wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1400_MH125
cp Datacard_M1400_2017cat12.txt  Datacard_M1400_2017.txt
cp Datacard_M1400_2017cat12wwgg.txt  Datacard_M1400_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1400_2017.txt
text2workspace.py Datacard_M1400_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1400_2017wwgg.txt
text2workspace.py Datacard_M1400_2017wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M1400 -d Datacard_M1400_2017.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M1400_2017wwgg -d Datacard_M1400_2017wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1600_MH125
cp Datacard_M1600_2017cat12.txt  Datacard_M1600_2017.txt
cp Datacard_M1600_2017cat12wwgg.txt  Datacard_M1600_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1600_2017.txt
text2workspace.py Datacard_M1600_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1600_2017wwgg.txt
text2workspace.py Datacard_M1600_2017wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M1600 -d Datacard_M1600_2017.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M1600_2017wwgg -d Datacard_M1600_2017wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1800_MH125
cp Datacard_M1800_2017cat12.txt  Datacard_M1800_2017.txt
cp Datacard_M1800_2017cat12wwgg.txt  Datacard_M1800_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1800_2017.txt
text2workspace.py Datacard_M1800_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1800_2017wwgg.txt
text2workspace.py Datacard_M1800_2017wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M1800 -d Datacard_M1800_2017.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M1800_2017wwgg -d Datacard_M1800_2017wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2000_MH125
cp Datacard_M2000_2017cat12.txt  Datacard_M2000_2017.txt
cp Datacard_M2000_2017cat12wwgg.txt  Datacard_M2000_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2000_2017.txt
text2workspace.py Datacard_M2000_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2000_2017wwgg.txt
text2workspace.py Datacard_M2000_2017wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M2000 -d Datacard_M2000_2017.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M2000_2017wwgg -d Datacard_M2000_2017wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2200_MH125
cp Datacard_M2200_2017cat12.txt  Datacard_M2200_2017.txt
cp Datacard_M2200_2017cat12wwgg.txt  Datacard_M2200_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2200_2017.txt
text2workspace.py Datacard_M2200_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2200_2017wwgg.txt
text2workspace.py Datacard_M2200_2017wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M2200 -d Datacard_M2200_2017.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M2200_2017wwgg -d Datacard_M2200_2017wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2400_MH125
cp Datacard_M2400_2017cat12.txt  Datacard_M2400_2017.txt
cp Datacard_M2400_2017cat12wwgg.txt  Datacard_M2400_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2400_2017.txt
text2workspace.py Datacard_M2400_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2400_2017wwgg.txt
text2workspace.py Datacard_M2400_2017wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M2400 -d Datacard_M2400_2017.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M2400_2017wwgg -d Datacard_M2400_2017wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2600_MH125
cp Datacard_M2600_2017cat12.txt  Datacard_M2600_2017.txt
cp Datacard_M2600_2017cat12wwgg.txt  Datacard_M2600_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2600_2017.txt
text2workspace.py Datacard_M2600_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2600_2017wwgg.txt
text2workspace.py Datacard_M2600_2017wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M2600 -d Datacard_M2600_2017.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M2600_2017wwgg -d Datacard_M2600_2017wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX3000_MH125
cp Datacard_M3000_2017cat12.txt  Datacard_M3000_2017.txt
cp Datacard_M3000_2017cat12wwgg.txt  Datacard_M3000_2017wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M3000_2017.txt
text2workspace.py Datacard_M3000_2017.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M3000_2017wwgg.txt
text2workspace.py Datacard_M3000_2017wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2017_M3000 -d Datacard_M3000_2017.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M3000_2017wwgg -d Datacard_M3000_2017wwgg.root --run expected    
