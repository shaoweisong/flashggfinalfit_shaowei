cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX250_MH125/Datacard_M250_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX250_MH125/Datacard_M250_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX250_MH125/Datacard_M250_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX250_MH125/Datacard_M250_2016post.txt .

combineCards.py 2016post=Datacard_M250_2016post.txt 2016pre=Datacard_M250_2016pre.txt 2017=Datacard_M250_2017.txt 2018=Datacard_M250_2018.txt > datacard_M250.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M250.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M250 -d datacard_M250.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX350_MH125/Datacard_M350_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX350_MH125/Datacard_M350_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX350_MH125/Datacard_M350_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX350_MH125/Datacard_M350_2016post.txt .

combineCards.py 2016pre=Datacard_M350_2016pre.txt 2016post=Datacard_M350_2016post.txt 2017=Datacard_M350_2017.txt 2018=Datacard_M350_2018.txt  >   datacard_M350.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M350.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M350 -d datacard_M350.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX450_MH125/Datacard_M450_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX450_MH125/Datacard_M450_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX450_MH125/Datacard_M450_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX450_MH125/Datacard_M450_2016post.txt .

combineCards.py 2016pre=Datacard_M450_2016pre.txt 2016post=Datacard_M450_2016post.txt 2017=Datacard_M450_2017.txt 2018=Datacard_M450_2018.txt  >   datacard_M450.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M450.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M450 -d datacard_M450.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX550_MH125/Datacard_M550_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX550_MH125/Datacard_M550_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX550_MH125/Datacard_M550_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX550_MH125/Datacard_M550_2016post.txt .

combineCards.py 2016pre=Datacard_M550_2016pre.txt 2016post=Datacard_M550_2016post.txt 2017=Datacard_M550_2017.txt 2018=Datacard_M550_2018.txt  >   datacard_M550.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M550.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M550 -d datacard_M550.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX600_MH125/Datacard_M600_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX600_MH125/Datacard_M600_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX600_MH125/Datacard_M600_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125/Datacard_M600_2016post.txt .

combineCards.py 2016pre=Datacard_M600_2016pre.txt 2016post=Datacard_M600_2016post.txt 2017=Datacard_M600_2017.txt 2018=Datacard_M600_2018.txt  >   datacard_M600.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M600.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M600 -d datacard_M600.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX700_MH125/Datacard_M700_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX700_MH125/Datacard_M700_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX700_MH125/Datacard_M700_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX700_MH125/Datacard_M700_2016post.txt .

combineCards.py 2016pre=Datacard_M700_2016pre.txt 2016post=Datacard_M700_2016post.txt 2017=Datacard_M700_2017.txt 2018=Datacard_M700_2018.txt  >   datacard_M700.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M700.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M700 -d datacard_M700.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX850_MH125/Datacard_M850_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX850_MH125/Datacard_M850_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX850_MH125/Datacard_M850_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX850_MH125/Datacard_M850_2016post.txt .

combineCards.py 2016pre=Datacard_M850_2016pre.txt 2016post=Datacard_M850_2016post.txt 2017=Datacard_M850_2017.txt 2018=Datacard_M850_2018.txt  >   datacard_M850.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M850.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M850 -d datacard_M850.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1000_MH125/Datacard_M1000_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1000_MH125/Datacard_M1000_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1000_MH125/Datacard_M1000_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125/Datacard_M1000_2016post.txt .

combineCards.py 2016pre=Datacard_M1000_2016pre.txt 2016post=Datacard_M1000_2016post.txt 2017=Datacard_M1000_2017.txt 2018=Datacard_M1000_2018.txt  >   datacard_M1000.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M1000.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M1000 -d datacard_M1000.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1200_MH125/Datacard_M1200_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1200_MH125/Datacard_M1200_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1200_MH125/Datacard_M1200_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1200_MH125/Datacard_M1200_2016post.txt .

combineCards.py 2016pre=Datacard_M1200_2016pre.txt 2016post=Datacard_M1200_2016post.txt 2017=Datacard_M1200_2017.txt 2018=Datacard_M1200_2018.txt  >   datacard_M1200.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M1200.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M1200 -d datacard_M1200.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1400_MH125/Datacard_M1400_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1400_MH125/Datacard_M1400_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1400_MH125/Datacard_M1400_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1400_MH125/Datacard_M1400_2016post.txt .

combineCards.py 2016pre=Datacard_M1400_2016pre.txt 2016post=Datacard_M1400_2016post.txt 2017=Datacard_M1400_2017.txt 2018=Datacard_M1400_2018.txt  >   datacard_M1400.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M1400.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M1400 -d datacard_M1400.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1600_MH125/Datacard_M1600_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1600_MH125/Datacard_M1600_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1600_MH125/Datacard_M1600_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1600_MH125/Datacard_M1600_2016post.txt .

combineCards.py 2016pre=Datacard_M1600_2016pre.txt 2016post=Datacard_M1600_2016post.txt 2017=Datacard_M1600_2017.txt 2018=Datacard_M1600_2018.txt  >   datacard_M1600.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M1600.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M1600 -d datacard_M1600.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1800_MH125/Datacard_M1800_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1800_MH125/Datacard_M1800_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1800_MH125/Datacard_M1800_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1800_MH125/Datacard_M1800_2016post.txt .

combineCards.py 2016pre=Datacard_M1800_2016pre.txt 2016post=Datacard_M1800_2016post.txt 2017=Datacard_M1800_2017.txt 2018=Datacard_M1800_2018.txt  >   datacard_M1800.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M1800.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M1800 -d datacard_M1800.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2000_MH125/Datacard_M2000_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2000_MH125/Datacard_M2000_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2000_MH125/Datacard_M2000_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2000_MH125/Datacard_M2000_2016post.txt .

combineCards.py 2016pre=Datacard_M2000_2016pre.txt 2016post=Datacard_M2000_2016post.txt 2017=Datacard_M2000_2017.txt 2018=Datacard_M2000_2018.txt  >   datacard_M2000.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M2000.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M2000 -d datacard_M2000.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2200_MH125/Datacard_M2200_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2200_MH125/Datacard_M2200_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2200_MH125/Datacard_M2200_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2200_MH125/Datacard_M2200_2016post.txt .

combineCards.py 2016pre=Datacard_M2200_2016pre.txt 2016post=Datacard_M2200_2016post.txt 2017=Datacard_M2200_2017.txt 2018=Datacard_M2200_2018.txt  >   datacard_M2200.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M2200.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M2200 -d datacard_M2200.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2400_MH125/Datacard_M2400_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2400_MH125/Datacard_M2400_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2400_MH125/Datacard_M2400_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2400_MH125/Datacard_M2400_2016post.txt .

combineCards.py 2016pre=Datacard_M2400_2016pre.txt 2016post=Datacard_M2400_2016post.txt 2017=Datacard_M2400_2017.txt 2018=Datacard_M2400_2018.txt  >   datacard_M2400.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M2400.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M2400 -d datacard_M2400.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2600_MH125/Datacard_M2600_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2600_MH125/Datacard_M2600_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2600_MH125/Datacard_M2600_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2600_MH125/Datacard_M2600_2016post.txt .

combineCards.py 2016pre=Datacard_M2600_2016pre.txt 2016post=Datacard_M2600_2016post.txt 2017=Datacard_M2600_2017.txt 2018=Datacard_M2600_2018.txt  >   datacard_M2600.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M2600.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M2600 -d datacard_M2600.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX3000_MH125/Datacard_M3000_2017.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX3000_MH125/Datacard_M3000_2018.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX3000_MH125/Datacard_M3000_2016pre.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX3000_MH125/Datacard_M3000_2016post.txt .

combineCards.py 2016pre=Datacard_M3000_2016pre.txt 2016post=Datacard_M3000_2016post.txt 2017=Datacard_M3000_2017.txt 2018=Datacard_M3000_2018.txt  >   datacard_M3000.txt
find . -name "*.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M3000.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M3000 -d datacard_M3000.root --run expected    


cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX250_MH125/Datacard_M250_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX250_MH125/Datacard_M250_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX250_MH125/Datacard_M250_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX250_MH125/Datacard_M250_2016postwwgg.txt .

combineCards.py 2016post=Datacard_M250_2016postwwgg.txt 2016pre=Datacard_M250_2016prewwgg.txt 2017=Datacard_M250_2017wwgg.txt 2018=Datacard_M250_2018wwgg.txt > datacard_M250wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M250wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M250wwgg -d datacard_M250wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX350_MH125/Datacard_M350_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX350_MH125/Datacard_M350_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX350_MH125/Datacard_M350_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX350_MH125/Datacard_M350_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M350_2016prewwgg.txt 2016post=Datacard_M350_2016postwwgg.txt 2017=Datacard_M350_2017wwgg.txt 2018=Datacard_M350_2018wwgg.txt  >   datacard_M350wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M350wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M350wwgg -d datacard_M350wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX450_MH125/Datacard_M450_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX450_MH125/Datacard_M450_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX450_MH125/Datacard_M450_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX450_MH125/Datacard_M450_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M450_2016prewwgg.txt 2016post=Datacard_M450_2016postwwgg.txt 2017=Datacard_M450_2017wwgg.txt 2018=Datacard_M450_2018wwgg.txt  >   datacard_M450wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M450wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M450wwgg -d datacard_M450wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX550_MH125/Datacard_M550_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX550_MH125/Datacard_M550_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX550_MH125/Datacard_M550_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX550_MH125/Datacard_M550_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M550_2016prewwgg.txt 2016post=Datacard_M550_2016postwwgg.txt 2017=Datacard_M550_2017wwgg.txt 2018=Datacard_M550_2018wwgg.txt  >   datacard_M550wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M550wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M550wwgg -d datacard_M550wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX600_MH125/Datacard_M600_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX600_MH125/Datacard_M600_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX600_MH125/Datacard_M600_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125/Datacard_M600_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M600_2016prewwgg.txt 2016post=Datacard_M600_2016postwwgg.txt 2017=Datacard_M600_2017wwgg.txt 2018=Datacard_M600_2018wwgg.txt  >   datacard_M600wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M600wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M600wwgg -d datacard_M600wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX700_MH125/Datacard_M700_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX700_MH125/Datacard_M700_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX700_MH125/Datacard_M700_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX700_MH125/Datacard_M700_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M700_2016prewwgg.txt 2016post=Datacard_M700_2016postwwgg.txt 2017=Datacard_M700_2017wwgg.txt 2018=Datacard_M700_2018wwgg.txt  >   datacard_M700wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M700wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M700wwgg -d datacard_M700wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX850_MH125/Datacard_M850_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX850_MH125/Datacard_M850_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX850_MH125/Datacard_M850_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX850_MH125/Datacard_M850_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M850_2016prewwgg.txt 2016post=Datacard_M850_2016postwwgg.txt 2017=Datacard_M850_2017wwgg.txt 2018=Datacard_M850_2018wwgg.txt  >   datacard_M850wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M850wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M850wwgg -d datacard_M850wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1000_MH125/Datacard_M1000_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1000_MH125/Datacard_M1000_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1000_MH125/Datacard_M1000_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125/Datacard_M1000_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M1000_2016prewwgg.txt 2016post=Datacard_M1000_2016postwwgg.txt 2017=Datacard_M1000_2017wwgg.txt 2018=Datacard_M1000_2018wwgg.txt  >   datacard_M1000wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M1000wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M1000wwgg -d datacard_M1000wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1200_MH125/Datacard_M1200_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1200_MH125/Datacard_M1200_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1200_MH125/Datacard_M1200_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1200_MH125/Datacard_M1200_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M1200_2016prewwgg.txt 2016post=Datacard_M1200_2016postwwgg.txt 2017=Datacard_M1200_2017wwgg.txt 2018=Datacard_M1200_2018wwgg.txt  >   datacard_M1200wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M1200wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M1200wwgg -d datacard_M1200wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1400_MH125/Datacard_M1400_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1400_MH125/Datacard_M1400_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1400_MH125/Datacard_M1400_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1400_MH125/Datacard_M1400_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M1400_2016prewwgg.txt 2016post=Datacard_M1400_2016postwwgg.txt 2017=Datacard_M1400_2017wwgg.txt 2018=Datacard_M1400_2018wwgg.txt  >   datacard_M1400wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M1400wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M1400wwgg -d datacard_M1400wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1600_MH125/Datacard_M1600_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1600_MH125/Datacard_M1600_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1600_MH125/Datacard_M1600_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1600_MH125/Datacard_M1600_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M1600_2016prewwgg.txt 2016post=Datacard_M1600_2016postwwgg.txt 2017=Datacard_M1600_2017wwgg.txt 2018=Datacard_M1600_2018wwgg.txt  >   datacard_M1600wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M1600wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M1600wwgg -d datacard_M1600wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1800_MH125/Datacard_M1800_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1800_MH125/Datacard_M1800_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1800_MH125/Datacard_M1800_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1800_MH125/Datacard_M1800_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M1800_2016prewwgg.txt 2016post=Datacard_M1800_2016postwwgg.txt 2017=Datacard_M1800_2017wwgg.txt 2018=Datacard_M1800_2018wwgg.txt  >   datacard_M1800wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M1800wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M1800wwgg -d datacard_M1800wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2000_MH125/Datacard_M2000_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2000_MH125/Datacard_M2000_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2000_MH125/Datacard_M2000_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2000_MH125/Datacard_M2000_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M2000_2016prewwgg.txt 2016post=Datacard_M2000_2016postwwgg.txt 2017=Datacard_M2000_2017wwgg.txt 2018=Datacard_M2000_2018wwgg.txt  >   datacard_M2000wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M2000wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M2000wwgg -d datacard_M2000wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2200_MH125/Datacard_M2200_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2200_MH125/Datacard_M2200_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2200_MH125/Datacard_M2200_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2200_MH125/Datacard_M2200_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M2200_2016prewwgg.txt 2016post=Datacard_M2200_2016postwwgg.txt 2017=Datacard_M2200_2017wwgg.txt 2018=Datacard_M2200_2018wwgg.txt  >   datacard_M2200wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M2200wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M2200wwgg -d datacard_M2200wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2400_MH125/Datacard_M2400_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2400_MH125/Datacard_M2400_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2400_MH125/Datacard_M2400_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2400_MH125/Datacard_M2400_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M2400_2016prewwgg.txt 2016post=Datacard_M2400_2016postwwgg.txt 2017=Datacard_M2400_2017wwgg.txt 2018=Datacard_M2400_2018wwgg.txt  >   datacard_M2400wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M2400wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M2400wwgg -d datacard_M2400wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2600_MH125/Datacard_M2600_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2600_MH125/Datacard_M2600_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2600_MH125/Datacard_M2600_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2600_MH125/Datacard_M2600_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M2600_2016prewwgg.txt 2016post=Datacard_M2600_2016postwwgg.txt 2017=Datacard_M2600_2017wwgg.txt 2018=Datacard_M2600_2018wwgg.txt  >   datacard_M2600wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M2600wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M2600wwgg -d datacard_M2600wwgg.root --run expected    

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX3000_MH125/Datacard_M3000_2017wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX3000_MH125/Datacard_M3000_2018wwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX3000_MH125/Datacard_M3000_2016prewwgg.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX3000_MH125/Datacard_M3000_2016postwwgg.txt .

combineCards.py 2016pre=Datacard_M3000_2016prewwgg.txt 2016post=Datacard_M3000_2016postwwgg.txt 2017=Datacard_M3000_2017wwgg.txt 2018=Datacard_M3000_2018wwgg.txt  >   datacard_M3000wwgg.txt
find . -name "*wwgg.txt" -exec sed -i 's/ 201/ year201/g' {} +
text2workspace.py datacard_M3000wwgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n datacard_M3000wwgg -d datacard_M3000wwgg.root --run expected    

