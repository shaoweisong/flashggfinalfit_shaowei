cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX550_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX550_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX550_MH125_cat12highpurity.txt > Datacard_M550_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX550_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX550_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M550_2016postcat12wwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M550_2016postcat12.txt
text2workspace.py Datacard_M550_2016postcat12.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M550_2016postcat12wwgg.txt
text2workspace.py Datacard_M550_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M550 -d Datacard_M550_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M550_2016postcat12wwgg -d Datacard_M550_2016postcat12wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX600_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX600_MH125_cat12highpurity.txt > Datacard_M600_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX600_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX600_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M600_2016postcat12wwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M600_2016postcat12.txt
text2workspace.py Datacard_M600_2016postcat12.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M600_2016postcat12wwgg.txt
text2workspace.py Datacard_M600_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M600 -d Datacard_M600_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M600_2016postcat12wwgg -d Datacard_M600_2016postcat12wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX650_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX650_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX650_MH125_cat12highpurity.txt > Datacard_M650_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX650_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX650_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M650_2016postcat12wwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M650_2016postcat12.txt
text2workspace.py Datacard_M650_2016postcat12.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M650_2016postcat12wwgg.txt
text2workspace.py Datacard_M650_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M650 -d Datacard_M650_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M650_2016postcat12wwgg -d Datacard_M650_2016postcat12wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX700_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX700_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX700_MH125_cat12highpurity.txt > Datacard_M700_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX700_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX700_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M700_2016postcat12wwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M700_2016postcat12.txt
text2workspace.py Datacard_M700_2016postcat12.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M700_2016postcat12wwgg.txt
text2workspace.py Datacard_M700_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M700 -d Datacard_M700_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M700_2016postcat12wwgg -d Datacard_M700_2016postcat12wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX750_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX750_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX750_MH125_cat12highpurity.txt > Datacard_M750_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX750_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX750_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M750_2016postcat12wwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M750_2016postcat12.txt
text2workspace.py Datacard_M750_2016postcat12.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M750_2016postcat12wwgg.txt
text2workspace.py Datacard_M750_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M750 -d Datacard_M750_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M750_2016postcat12wwgg -d Datacard_M750_2016postcat12wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX800_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX800_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX800_MH125_cat12highpurity.txt > Datacard_M800_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX800_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX800_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M800_2016postcat12wwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M800_2016postcat12.txt
text2workspace.py Datacard_M800_2016postcat12.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M800_2016postcat12wwgg.txt
text2workspace.py Datacard_M800_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M800 -d Datacard_M800_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M800_2016postcat12wwgg -d Datacard_M800_2016postcat12wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX850_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX850_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX850_MH125_cat12highpurity.txt > Datacard_M850_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX850_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX850_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M850_2016postcat12wwgg.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_M850_2016postcat12.txt
text2workspace.py Datacard_M850_2016postcat12.txt -m 125
sed -i 's/hgg 2 /hgg 200/g' Datacard_M850_2016postcat12wwgg.txt
text2workspace.py Datacard_M850_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M850 -d Datacard_M850_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M850_2016postcat12wwgg -d Datacard_M850_2016postcat12wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX1000_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX1000_MH125_cat12highpurity.txt > Datacard_M1000_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX1000_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX1000_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M1000_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1000_2016postcat12.txt
text2workspace.py Datacard_M1000_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1000_2016postcat12wwgg.txt
text2workspace.py Datacard_M1000_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M1000 -d Datacard_M1000_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M1000_2016postcat12wwgg -d Datacard_M1000_2016postcat12wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1100_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX1100_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX1100_MH125_cat12highpurity.txt > Datacard_M1100_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX1100_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX1100_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M1100_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1100_2016postcat12.txt
text2workspace.py Datacard_M1100_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1100_2016postcat12wwgg.txt
text2workspace.py Datacard_M1100_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M1100 -d Datacard_M1100_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M1100_2016postcat12wwgg -d Datacard_M1100_2016postcat12wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1200_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX1200_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX1200_MH125_cat12highpurity.txt > Datacard_M1200_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX1200_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX1200_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M1200_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1200_2016postcat12.txt
text2workspace.py Datacard_M1200_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1200_2016postcat12wwgg.txt
text2workspace.py Datacard_M1200_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M1200 -d Datacard_M1200_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M1200_2016postcat12wwgg -d Datacard_M1200_2016postcat12wwgg.root --run expected    

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1300_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX1300_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX1300_MH125_cat12highpurity.txt > Datacard_M1300_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX1300_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX1300_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M1300_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1300_2016postcat12.txt
text2workspace.py Datacard_M1300_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1300_2016postcat12wwgg.txt
text2workspace.py Datacard_M1300_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M1300 -d Datacard_M1300_2016postcat12.root --run expected    
combine -M AsymptoticLimits -m 125 -n Datacard_M1300_2016postcat12wwgg -d Datacard_M1300_2016postcat12wwgg.root --run expected   

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1400_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX1400_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX1400_MH125_cat12highpurity.txt > Datacard_M1400_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX1400_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX1400_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M1400_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1400_2016postcat12.txt
text2workspace.py Datacard_M1400_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1400_2016postcat12wwgg.txt
text2workspace.py Datacard_M1400_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M1400 -d Datacard_M1400_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M1400_2016postcat12wwgg -d Datacard_M1400_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1500_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX1500_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX1500_MH125_cat12highpurity.txt > Datacard_M1500_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX1500_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX1500_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M1500_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1500_2016postcat12.txt
text2workspace.py Datacard_M1500_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1500_2016postcat12wwgg.txt
text2workspace.py Datacard_M1500_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M1500 -d Datacard_M1500_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M1500_2016postcat12wwgg -d Datacard_M1500_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1600_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX1600_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX1600_MH125_cat12highpurity.txt > Datacard_M1600_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX1600_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX1600_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M1600_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1600_2016postcat12.txt
text2workspace.py Datacard_M1600_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1600_2016postcat12wwgg.txt
text2workspace.py Datacard_M1600_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M1600 -d Datacard_M1600_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M1600_2016postcat12wwgg -d Datacard_M1600_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1700_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX1700_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX1700_MH125_cat12highpurity.txt > Datacard_M1700_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX1700_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX1700_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M1700_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1700_2016postcat12.txt
text2workspace.py Datacard_M1700_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1700_2016postcat12wwgg.txt
text2workspace.py Datacard_M1700_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M1700 -d Datacard_M1700_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M1700_2016postcat12wwgg -d Datacard_M1700_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1800_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX1800_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX1800_MH125_cat12highpurity.txt > Datacard_M1800_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX1800_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX1800_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M1800_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1800_2016postcat12.txt
text2workspace.py Datacard_M1800_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1800_2016postcat12wwgg.txt
text2workspace.py Datacard_M1800_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M1800 -d Datacard_M1800_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M1800_2016postcat12wwgg -d Datacard_M1800_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1900_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX1900_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX1900_MH125_cat12highpurity.txt > Datacard_M1900_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX1900_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX1900_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M1900_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1900_2016postcat12.txt
text2workspace.py Datacard_M1900_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M1900_2016postcat12wwgg.txt
text2workspace.py Datacard_M1900_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M1900 -d Datacard_M1900_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M1900_2016postcat12wwgg -d Datacard_M1900_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2000_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX2000_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX2000_MH125_cat12highpurity.txt > Datacard_M2000_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX2000_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX2000_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M2000_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2000_2016postcat12.txt
text2workspace.py Datacard_M2000_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2000_2016postcat12wwgg.txt
text2workspace.py Datacard_M2000_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M2000 -d Datacard_M2000_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M2000_2016postcat12wwgg -d Datacard_M2000_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2200_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX2200_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX2200_MH125_cat12highpurity.txt > Datacard_M2200_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX2200_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX2200_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M2200_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2200_2016postcat12.txt
text2workspace.py Datacard_M2200_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2200_2016postcat12wwgg.txt
text2workspace.py Datacard_M2200_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M2200 -d Datacard_M2200_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M2200_2016postcat12wwgg -d Datacard_M2200_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2400_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX2400_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX2400_MH125_cat12highpurity.txt > Datacard_M2400_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX2400_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX2400_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M2400_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2400_2016postcat12.txt
text2workspace.py Datacard_M2400_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2400_2016postcat12wwgg.txt
text2workspace.py Datacard_M2400_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M2400 -d Datacard_M2400_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M2400_2016postcat12wwgg -d Datacard_M2400_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2600_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX2600_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX2600_MH125_cat12highpurity.txt > Datacard_M2600_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX2600_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX2600_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M2600_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2600_2016postcat12.txt
text2workspace.py Datacard_M2600_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2600_2016postcat12wwgg.txt
text2workspace.py Datacard_M2600_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M2600 -d Datacard_M2600_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M2600_2016postcat12wwgg -d Datacard_M2600_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2800_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX2800_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX2800_MH125_cat12highpurity.txt > Datacard_M2800_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX2800_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX2800_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M2800_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2800_2016postcat12.txt
text2workspace.py Datacard_M2800_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M2800_2016postcat12wwgg.txt
text2workspace.py Datacard_M2800_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M2800 -d Datacard_M2800_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M2800_2016postcat12wwgg -d Datacard_M2800_2016postcat12wwgg.root --run expected

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX3000_MH125
combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX3000_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX3000_MH125_cat12highpurity.txt > Datacard_M3000_2016postcat12.txt
combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX3000_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX3000_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M3000_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M3000_2016postcat12.txt
text2workspace.py Datacard_M3000_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M3000_2016postcat12wwgg.txt
text2workspace.py Datacard_M3000_2016postcat12wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M3000 -d Datacard_M3000_2016postcat12.root --run expected
combine -M AsymptoticLimits -m 125 -n Datacard_M3000_2016postcat12wwgg -d Datacard_M3000_2016postcat12wwgg.root --run expected


# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX500_MH125
# combineCards.py  Datacard_2016post_cat12lowpurity=Datacard_MX500_MH125_cat12lowpurity.txt Datacard_2016post_cat12highpurity=Datacard_MX500_MH125_cat12highpurity.txt > Datacard_M500_2016postcat12.txt
# combineCards.py  Datacard_2016post_cat12cat12wwgghighpurity=Datacard_MX500_MH125_2016post_combineFHSL_cat12highpurity.txt Datacard_2016post_cat12cat12wwgglowpurity=Datacard_MX500_MH125_2016post_combineFHSL_cat12lowpurity.txt > Datacard_M500_2016postcat12wwgg.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M500_2016postcat12.txt
# text2workspace.py Datacard_M500_2016postcat12.txt -m 125
# sed -i 's/hgg 2 /hgg 200/g' Datacard_M500_2016postcat12wwgg.txt
# text2workspace.py Datacard_M500_2016postcat12wwgg.txt -m 125
# combine -M AsymptoticLimits -m 125 -n combineFHSL_2016postcat12_M500 -d Datacard_M500_2016postcat12.root --run expected    
# combine -M AsymptoticLimits -m 125 -n Datacard_M500_2016postcat12wwgg -d Datacard_M500_2016postcat12wwgg.root --run expected    
