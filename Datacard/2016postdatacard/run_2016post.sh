cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX250_MH125
cp Datacard_MX250_MH125_2016post_cat34.txt Datacard_M250_2016post.txt
cp Datacard_MX250_MH125_2016post_cat34wwgg.txt Datacard_M250_2016postwwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M250_2016post.txt
text2workspace.py Datacard_M250_2016post.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M250_2016postwwgg.txt
text2workspace.py Datacard_M250_2016postwwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M250 -d Datacard_M250_2016post.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M250_2016postwwgg -d Datacard_M250_2016postwwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX300_MH125
combineCards.pycp=Datacard_M300_2016postcat12.txt Datacard_2016post_cat34atacard_MX300_MH125_2016post_cat34.txt > Datacard_M300_2016post.txt
cp Datacard_MX300_MH125_2016post_cat34wwgg.txt Datacard_M300_2016postwwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M300_2016post.txt
text2workspace.py Datacard_M300_2016post.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M300_2016postwwgg.txt
text2workspace.py Datacard_M300_2016postwwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M300 -d Datacard_M300_2016post.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M300_2016postwwgg -d Datacard_M300_2016postwwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX350_MH125
cp Datacard_MX350_MH125_2016post_cat34.txt Datacard_M350_2016post.txt
cp Datacard_MX350_MH125_2016post_cat34wwgg.txt Datacard_M350_2016postwwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M350_2016post.txt
text2workspace.py Datacard_M350_2016post.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M350_2016postwwgg.txt
text2workspace.py Datacard_M350_2016postwwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M350 -d Datacard_M350_2016post.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M350_2016postwwgg -d Datacard_M350_2016postwwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX450_MH125
cp Datacard_MX450_MH125_2016post_cat34.txt Datacard_M450_2016post.txt
cp Datacard_MX450_MH125_2016post_cat34wwgg.txt Datacard_M450_2016postwwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M450_2016post.txt
text2workspace.py Datacard_M450_2016post.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M450_2016postwwgg.txt
text2workspace.py Datacard_M450_2016postwwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M450 -d Datacard_M450_2016post.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M450_2016postwwgg -d Datacard_M450_2016postwwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX550_MH125
combineCards.py  Datacard_2016post_cat12=Datacard_M550_2016postcat12.txt Datacard_2016post_cat34=Datacard_MX550_MH125_2016post_cat34.txt > Datacard_M550_2016post.txt
combineCards.py  Datacard_2016post_cat12=Datacard_M550_2016postcat12wwgg.txt Datacard_2016post_cat34=Datacard_MX550_MH125_2016post_cat34wwgg.txt > Datacard_M550_2016postwwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M550_2016post.txt
text2workspace.py Datacard_M550_2016post.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M550_2016postwwgg.txt
text2workspace.py Datacard_M550_2016postwwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M550 -d Datacard_M550_2016post.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M550_2016postwwgg -d Datacard_M550_2016postwwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125
combineCards.py  Datacard_2016post_cat12=Datacard_M600_2016postcat12.txt Datacard_2016post_cat34=Datacard_MX600_MH125_2016post_cat34.txt > Datacard_M600_2016post.txt
combineCards.py  Datacard_2016post_cat12=Datacard_M600_2016postcat12wwgg.txt Datacard_2016post_cat34=Datacard_MX600_MH125_2016post_cat34wwgg.txt > Datacard_M600_2016postwwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M600_2016post.txt
text2workspace.py Datacard_M600_2016post.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M600_2016postwwgg.txt
text2workspace.py Datacard_M600_2016postwwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M600 -d Datacard_M600_2016post.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M600_2016postwwgg -d Datacard_M600_2016postwwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX700_MH125
combineCards.py  Datacard_2016post_cat12=Datacard_M700_2016postcat12.txt Datacard_2016post_cat34=Datacard_MX700_MH125_2016post_cat34.txt > Datacard_M700_2016post.txt
combineCards.py  Datacard_2016post_cat12=Datacard_M700_2016postcat12wwgg.txt Datacard_2016post_cat34=Datacard_MX700_MH125_2016post_cat34wwgg.txt > Datacard_M700_2016postwwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M700_2016post.txt
text2workspace.py Datacard_M700_2016post.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M700_2016postwwgg.txt
text2workspace.py Datacard_M700_2016postwwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M700 -d Datacard_M700_2016post.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M700_2016postwwgg -d Datacard_M700_2016postwwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX850_MH125
combineCards.py  Datacard_2016post_cat12=Datacard_M850_2016postcat12.txt Datacard_2016post_cat34=Datacard_MX850_MH125_2016post_cat34.txt > Datacard_M850_2016post.txt
combineCards.py  Datacard_2016post_cat12=Datacard_M850_2016postcat12wwgg.txt Datacard_2016post_cat34=Datacard_MX850_MH125_2016post_cat34wwgg.txt > Datacard_M850_2016postwwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M850_2016post.txt
text2workspace.py Datacard_M850_2016post.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M850_2016postwwgg.txt
text2workspace.py Datacard_M850_2016postwwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M850 -d Datacard_M850_2016post.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M850_2016postwwgg -d Datacard_M850_2016postwwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125
combineCards.py  Datacard_2016post_cat12=Datacard_M1000_2016postcat12.txt Datacard_2016post_cat34=Datacard_MX1000_MH125_2016post_cat34.txt > Datacard_M1000_2016post.txt
combineCards.py  Datacard_2016post_cat12=Datacard_M1000_2016postcat12wwgg.txt Datacard_2016post_cat34=Datacard_MX1000_MH125_2016post_cat34wwgg.txt > Datacard_M1000_2016postwwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M1000_2016post.txt
text2workspace.py Datacard_M1000_2016post.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M1000_2016postwwgg.txt
text2workspace.py Datacard_M1000_2016postwwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M1000 -d Datacard_M1000_2016post.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M1000_2016postwwgg -d Datacard_M1000_2016postwwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1200_MH125
# cp Datacard_M1200_2016postcat12.txt  Datacard_M1200_2016post.txt
# cp Datacard_M1200_2016postcat12wwgg.txt  Datacard_M1200_2016postwwgg.txt
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M1200_2016post.txt
# text2workspace.py Datacard_M1200_2016post.txt -m 125
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M1200_2016postwwgg.txt
# text2workspace.py Datacard_M1200_2016postwwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M1200 -d Datacard_M1200_2016post.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M1200_2016postwwgg -d Datacard_M1200_2016postwwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1400_MH125
# cp Datacard_M1400_2016postcat12.txt  Datacard_M1400_2016post.txt
# cp Datacard_M1400_2016postcat12wwgg.txt  Datacard_M1400_2016postwwgg.txt
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M1400_2016post.txt
# text2workspace.py Datacard_M1400_2016post.txt -m 125
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M1400_2016postwwgg.txt
# text2workspace.py Datacard_M1400_2016postwwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M1400 -d Datacard_M1400_2016post.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M1400_2016postwwgg -d Datacard_M1400_2016postwwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1600_MH125
# cp Datacard_M1600_2016postcat12.txt  Datacard_M1600_2016post.txt
# cp Datacard_M1600_2016postcat12wwgg.txt  Datacard_M1600_2016postwwgg.txt
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M1600_2016post.txt
# text2workspace.py Datacard_M1600_2016post.txt -m 125
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M1600_2016postwwgg.txt
# text2workspace.py Datacard_M1600_2016postwwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M1600 -d Datacard_M1600_2016post.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M1600_2016postwwgg -d Datacard_M1600_2016postwwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1800_MH125
# cp Datacard_M1800_2016postcat12.txt  Datacard_M1800_2016post.txt
# cp Datacard_M1800_2016postcat12wwgg.txt  Datacard_M1800_2016postwwgg.txt
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M1800_2016post.txt
# text2workspace.py Datacard_M1800_2016post.txt -m 125
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M1800_2016postwwgg.txt
# text2workspace.py Datacard_M1800_2016postwwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M1800 -d Datacard_M1800_2016post.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M1800_2016postwwgg -d Datacard_M1800_2016postwwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2000_MH125
# cp Datacard_M2000_2016postcat12.txt  Datacard_M2000_2016post.txt
# cp Datacard_M2000_2016postcat12wwgg.txt  Datacard_M2000_2016postwwgg.txt
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M2000_2016post.txt
# text2workspace.py Datacard_M2000_2016post.txt -m 125
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M2000_2016postwwgg.txt
# text2workspace.py Datacard_M2000_2016postwwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M2000 -d Datacard_M2000_2016post.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M2000_2016postwwgg -d Datacard_M2000_2016postwwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2200_MH125
# cp Datacard_M2200_2016postcat12.txt  Datacard_M2200_2016post.txt
# cp Datacard_M2200_2016postcat12wwgg.txt  Datacard_M2200_2016postwwgg.txt
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M2200_2016post.txt
# text2workspace.py Datacard_M2200_2016post.txt -m 125
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M2200_2016postwwgg.txt
# text2workspace.py Datacard_M2200_2016postwwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M2200 -d Datacard_M2200_2016post.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M2200_2016postwwgg -d Datacard_M2200_2016postwwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2400_MH125
# cp Datacard_M2400_2016postcat12.txt  Datacard_M2400_2016post.txt
# cp Datacard_M2400_2016postcat12wwgg.txt  Datacard_M2400_2016postwwgg.txt
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M2400_2016post.txt
# text2workspace.py Datacard_M2400_2016post.txt -m 125
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M2400_2016postwwgg.txt
# text2workspace.py Datacard_M2400_2016postwwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M2400 -d Datacard_M2400_2016post.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M2400_2016postwwgg -d Datacard_M2400_2016postwwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2600_MH125
# cp Datacard_M2600_2016postcat12.txt  Datacard_M2600_2016post.txt
# cp Datacard_M2600_2016postcat12wwgg.txt  Datacard_M2600_2016postwwgg.txt
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M2600_2016post.txt
# text2workspace.py Datacard_M2600_2016post.txt -m 125
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M2600_2016postwwgg.txt
# text2workspace.py Datacard_M2600_2016postwwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M2600 -d Datacard_M2600_2016post.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M2600_2016postwwgg -d Datacard_M2600_2016postwwgg.root --run expected    

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX3000_MH125
# cp Datacard_M3000_2016postcat12.txt  Datacard_M3000_2016post.txt
# cp Datacard_M3000_2016postcat12wwgg.txt  Datacard_M3000_2016postwwgg.txt
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M3000_2016post.txt
# text2workspace.py Datacard_M3000_2016post.txt -m 125
# # sed -i 's/hgg 2 /hgg 200/g' Datacard_M3000_2016postwwgg.txt
# text2workspace.py Datacard_M3000_2016postwwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2016post_M3000 -d Datacard_M3000_2016post.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M3000_2016postwwgg -d Datacard_M3000_2016postwwgg.root --run expected    
