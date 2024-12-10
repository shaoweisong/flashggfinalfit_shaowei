cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX500_MH125
combineCards.py  cat1234_MX500_MH125=Datacard_MX500_MH125_2016post_cat34.txt Datacard_MX500_MH125_2016post_cat12.txt > Datacard_MX500_MH125_2016post_cat1234.txt
# sed -i 's/hgg 200 /hgg 2 /g' *cat1234.txt
# sed -i 's/ 100000 / 1000 /g' *cat1234.txt
# sed -i 's/hgg 2 /hgg 200 /g' *cat1234.txt
text2workspace.py Datacard_MX500_MH125_2016post_cat1234.txt -m 125
combine -M AsymptoticLimits -m 125 -n cat1234_MX500_MH125_2016post -d Datacard_MX500_MH125_2016post_cat1234.root --run expected 
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX550_MH125
combineCards.py  cat1234_MX550_MH125=Datacard_MX550_MH125_2016post_cat12.txt Datacard_MX550_MH125_2016post_cat34.txt > Datacard_MX550_MH125_2016post_cat1234.txt
# sed -i 's/hgg 200 /hgg 2 /g' *cat1234.txt
# sed -i 's/ 100000 / 1000 /g' *cat1234.txt
# sed -i 's/hgg 2 /hgg 200 /g' *cat1234.txt
text2workspace.py Datacard_MX550_MH125_2016post_cat1234.txt -m 125
combine -M AsymptoticLimits -m 125 -n cat1234_MX550_MH125_2016post -d Datacard_MX550_MH125_2016post_cat1234.root --run expected 
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125
combineCards.py  cat1234_MX600_MH125=Datacard_MX600_MH125_2016post_cat12.txt Datacard_MX600_MH125_2016post_cat34.txt > Datacard_MX600_MH125_2016post_cat1234.txt
# sed -i 's/hgg 200 /hgg 2 /g' *cat1234.txt
# sed -i 's/ 100000 / 1000 /g' *cat1234.txt
# sed -i 's/hgg 2 /hgg 200 /g' *cat1234.txt
text2workspace.py Datacard_MX600_MH125_2016post_cat1234.txt -m 125
combine -M AsymptoticLimits -m 125 -n cat1234_MX600_MH125_2016post -d Datacard_MX600_MH125_2016post_cat1234.root --run expected 
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX650_MH125
combineCards.py  cat1234_MX650_MH125=Datacard_MX650_MH125_2016post_cat12.txt Datacard_MX650_MH125_2016post_cat34.txt > Datacard_MX650_MH125_2016post_cat1234.txt
# sed -i 's/hgg 200 /hgg 2 /g' *cat1234.txt
# sed -i 's/ 100000 / 1000 /g' *cat1234.txt
# sed -i 's/hgg 2 /hgg 200 /g' *cat1234.txt
text2workspace.py Datacard_MX650_MH125_2016post_cat1234.txt -m 125
combine -M AsymptoticLimits -m 125 -n cat1234_MX650_MH125_2016post -d Datacard_MX650_MH125_2016post_cat1234.root --run expected 
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX700_MH125
combineCards.py  cat1234_MX700_MH125=Datacard_MX700_MH125_2016post_cat12.txt Datacard_MX700_MH125_2016post_cat34.txt > Datacard_MX700_MH125_2016post_cat1234.txt
# sed -i 's/hgg 200 /hgg 2 /g' *cat1234.txt
# sed -i 's/ 100000 / 1000 /g' *cat1234.txt
# sed -i 's/hgg 2 /hgg 200 /g' *cat1234.txt
text2workspace.py Datacard_MX700_MH125_2016post_cat1234.txt -m 125
combine -M AsymptoticLimits -m 125 -n cat1234_MX700_MH125_2016post -d Datacard_MX700_MH125_2016post_cat1234.root --run expected 
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX750_MH125
combineCards.py  cat1234_MX750_MH125=Datacard_MX750_MH125_2016post_cat12.txt Datacard_MX750_MH125_2016post_cat34.txt > Datacard_MX750_MH125_2016post_cat1234.txt
# sed -i 's/hgg 200 /hgg 2 /g' *cat1234.txt
# sed -i 's/ 100000 / 1000 /g' *cat1234.txt
# sed -i 's/hgg 2 /hgg 200 /g' *cat1234.txt
text2workspace.py Datacard_MX750_MH125_2016post_cat1234.txt -m 125
combine -M AsymptoticLimits -m 125 -n cat1234_MX750_MH125_2016post -d Datacard_MX750_MH125_2016post_cat1234.root --run expected 
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX800_MH125
combineCards.py  cat1234_MX800_MH125=Datacard_MX800_MH125_2016post_cat12.txt Datacard_MX800_MH125_2016post_cat34.txt > Datacard_MX800_MH125_2016post_cat1234.txt
# sed -i 's/hgg 200 /hgg 2 /g' *cat1234.txt
# sed -i 's/ 100000 / 1000 /g' *cat1234.txt
# sed -i 's/hgg 2 /hgg 200 /g' *cat1234.txt
text2workspace.py Datacard_MX800_MH125_2016post_cat1234.txt -m 125
combine -M AsymptoticLimits -m 125 -n cat1234_MX800_MH125_2016post -d Datacard_MX800_MH125_2016post_cat1234.root --run expected 
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX850_MH125
combineCards.py  cat1234_MX850_MH125=Datacard_MX850_MH125_2016post_cat12.txt Datacard_MX850_MH125_2016post_cat34.txt > Datacard_MX850_MH125_2016post_cat1234.txt
# sed -i 's/hgg 200 /hgg 2 /g' *cat1234.txt
# sed -i 's/ 100000 / 1000 /g' *cat1234.txt
# sed -i 's/hgg 2 /hgg 200 /g' *cat1234.txt
text2workspace.py Datacard_MX850_MH125_2016post_cat1234.txt -m 125
combine -M AsymptoticLimits -m 125 -n cat1234_MX850_MH125_2016post -d Datacard_MX850_MH125_2016post_cat1234.root --run expected 
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125
combineCards.py  cat1234_MX1000_MH125=Datacard_MX1000_MH125_2016post_cat12.txt Datacard_MX1000_MH125_2016post_cat34.txt > Datacard_MX1000_MH125_2016post_cat1234.txt
# sed -i 's/hgg 200 /hgg 2 /g' *cat1234.txt
# sed -i 's/ 100000 / 1000 /g' *cat1234.txt
sed -i 's/hgg 2 /hgg 200 /g' *cat1234.txt
text2workspace.py Datacard_MX1000_MH125_2016post_cat1234.txt -m 125
combine -M AsymptoticLimits -m 125 -n cat1234_MX1000_MH125_2016post -d Datacard_MX1000_MH125_2016post_cat1234.root --run expected 
echo "done"
