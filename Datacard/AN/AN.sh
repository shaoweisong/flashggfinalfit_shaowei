# cp Datacard_MX1000_MH125_2016pre_*_cat12*.txt 2016predatacard/datacard_MX1000_MH125/
# cp Datacard_MX1000_MH125_2016post_*_cat12*.txt 2016postdatacard/datacard_MX1000_MH125/
# cp Datacard_MX1000_MH125_2017_*_cat12*.txt 2017datacard/datacard_MX1000_MH125/
# cp Datacard_MX1000_MH125_2018_*_cat12*.txt 2018datacard/datacard_MX1000_MH125/
# cp Datacard_MX1000_MH125_2016pre_*_cat34*.txt 2016predatacard/datacard_MX1000_MH125/
# cp Datacard_MX1000_MH125_2016post_*_cat34*.txt 2016postdatacard/datacard_MX1000_MH125/
# cp Datacard_MX1000_MH125_2017_*_cat34*.txt 2017datacard/datacard_MX1000_MH125/
# cp Datacard_MX1000_MH125_2018_*_cat34*.txt 2018datacard/datacard_MX1000_MH125/


# cp Datacard_MX2000_MH125_2016pre_*_cat12*.txt 2016predatacard/datacard_MX2000_MH125/
# cp Datacard_MX2000_MH125_2016post_*_cat12*.txt 2016postdatacard/datacard_MX2000_MH125/
# cp Datacard_MX2000_MH125_2017_*_cat12*.txt 2017datacard/datacard_MX2000_MH125/
# cp Datacard_MX2000_MH125_2018_*_cat12*.txt 2018datacard/datacard_MX2000_MH125/


# cp Datacard_MX3000_MH125_2016pre_*_cat12*.txt 2016predatacard/datacard_MX3000_MH125/
# cp Datacard_MX3000_MH125_2016post_*_cat12*.txt 2016postdatacard/datacard_MX3000_MH125/
# cp Datacard_MX3000_MH125_2017_*_cat12*.txt 2017datacard/datacard_MX3000_MH125/
# cp Datacard_MX3000_MH125_2018_*_cat12*.txt 2018datacard/datacard_MX3000_MH125/

# cp Datacard_MX600_MH125_2016pre_*_cat12*.txt 2016predatacard/datacard_MX600_MH125/
# cp Datacard_MX600_MH125_2016post_*_cat12*.txt 2016postdatacard/datacard_MX600_MH125/
# cp Datacard_MX600_MH125_2017_*_cat12*.txt 2017datacard/datacard_MX600_MH125/
# cp Datacard_MX600_MH125_2018_*_cat12*.txt 2018datacard/datacard_MX600_MH125/
# cp Datacard_MX600_MH125_2016pre_*_cat34*.txt 2016predatacard/datacard_MX600_MH125/
# cp Datacard_MX600_MH125_2016post_*_cat34*.txt 2016postdatacard/datacard_MX600_MH125/
# cp Datacard_MX600_MH125_2017_*_cat34*.txt 2017datacard/datacard_MX600_MH125/
# cp Datacard_MX600_MH125_2018_*_cat34*.txt 2018datacard/datacard_MX600_MH125/

# cp Datacard_MX250_MH125_2016pre_*_cat34*.txt 2016predatacard/datacard_MX250_MH125/
# cp Datacard_MX250_MH125_2016post_*_cat34*.txt 2016postdatacard/datacard_MX250_MH125/
# cp Datacard_MX250_MH125_2017_*_cat34*.txt 2017datacard/datacard_MX250_MH125/
# cp Datacard_MX250_MH125_2018_*_cat34*.txt 2018datacard/datacard_MX250_MH125/

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX250_MH125
# combineCards.py  cat34_MX250_MH125=Datacard_MX250_MH125_cat34highpurity.txt Datacard_MX250_MH125_cat34lowpurity.txt > Datacard_MX250_MH125_2016post_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX250_MH125_2016post_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX250_MH125_2016post -d Datacard_MX250_MH125_2016post_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125
# combineCards.py  cat34_MX600_MH125=Datacard_MX600_MH125_cat34highpurity.txt Datacard_MX600_MH125_cat34lowpurity.txt > Datacard_MX600_MH125_2016post_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX600_MH125_2016post_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX600_MH125_2016post -d Datacard_MX600_MH125_2016post_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125
# combineCards.py  cat34_MX1000_MH125=Datacard_MX1000_MH125_cat34highpurity.txt Datacard_MX1000_MH125_cat34lowpurity.txt > Datacard_MX1000_MH125_2016post_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX1000_MH125_2016post_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX1000_MH125_2016post -d Datacard_MX1000_MH125_2016post_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX250_MH125
# combineCards.py  cat34_MX250_MH125=Datacard_MX250_MH125_cat34highpurity.txt Datacard_MX250_MH125_cat34lowpurity.txt > Datacard_MX250_MH125_2016pre_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX250_MH125_2016pre_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX250_MH125_2016pre -d Datacard_MX250_MH125_2016pre_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX600_MH125
# combineCards.py  cat34_MX600_MH125=Datacard_MX600_MH125_cat34highpurity.txt Datacard_MX600_MH125_cat34lowpurity.txt > Datacard_MX600_MH125_2016pre_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX600_MH125_2016pre_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX600_MH125_2016pre -d Datacard_MX600_MH125_2016pre_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1000_MH125
# combineCards.py  cat34_MX1000_MH125=Datacard_MX1000_MH125_cat34highpurity.txt Datacard_MX1000_MH125_cat34lowpurity.txt > Datacard_MX1000_MH125_2016pre_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX1000_MH125_2016pre_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX1000_MH125_2016pre -d Datacard_MX1000_MH125_2016pre_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX250_MH125
# combineCards.py  cat34_MX250_MH125=Datacard_MX250_MH125_cat34highpurity.txt Datacard_MX250_MH125_cat34lowpurity.txt > Datacard_MX250_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX250_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX250_MH125_2017 -d Datacard_MX250_MH125_2017_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX600_MH125
# combineCards.py  cat34_MX600_MH125=Datacard_MX600_MH125_cat34highpurity.txt Datacard_MX600_MH125_cat34lowpurity.txt > Datacard_MX600_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX600_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX600_MH125_2017 -d Datacard_MX600_MH125_2017_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1000_MH125
# combineCards.py  cat34_MX1000_MH125=Datacard_MX1000_MH125_cat34highpurity.txt Datacard_MX1000_MH125_cat34lowpurity.txt > Datacard_MX1000_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX1000_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX1000_MH125_2017 -d Datacard_MX1000_MH125_2017_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX250_MH125
# combineCards.py  cat34_MX250_MH125=Datacard_MX250_MH125_cat34highpurity.txt Datacard_MX250_MH125_cat34lowpurity.txt > Datacard_MX250_MH125_2018_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX250_MH125_2018_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX250_MH125_2018 -d Datacard_MX250_MH125_2018_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX600_MH125
# combineCards.py  cat34_MX600_MH125=Datacard_MX600_MH125_cat34highpurity.txt Datacard_MX600_MH125_cat34lowpurity.txt > Datacard_MX600_MH125_2018_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX600_MH125_2018_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX600_MH125_2018 -d Datacard_MX600_MH125_2018_cat34.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1000_MH125
# combineCards.py  cat34_MX1000_MH125=Datacard_MX1000_MH125_cat34highpurity.txt Datacard_MX1000_MH125_cat34lowpurity.txt > Datacard_MX1000_MH125_2018_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat34*.txt
# text2workspace.py Datacard_MX1000_MH125_2018_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat34_MX1000_MH125_2018 -d Datacard_MX1000_MH125_2018_cat34.root --run expected 
# echo "done"





# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125
# combineCards.py  cat12_MX600_MH125=Datacard_MX600_MH125_cat12highpurity.txt Datacard_MX600_MH125_cat12lowpurity.txt > Datacard_MX600_MH125_2016post_cat12.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat12*.txt
# text2workspace.py Datacard_MX600_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX600_MH125_2016post -d Datacard_MX600_MH125_2016post_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125
# combineCards.py  cat12_MX1000_MH125=Datacard_MX1000_MH125_cat12highpurity.txt Datacard_MX1000_MH125_cat12lowpurity.txt > Datacard_MX1000_MH125_2016post_cat12.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat12*.txt
# text2workspace.py Datacard_MX1000_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1000_MH125_2016post -d Datacard_MX1000_MH125_2016post_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2000_MH125
# combineCards.py  cat12_MX2000_MH125=Datacard_MX2000_MH125_cat12highpurity.txt Datacard_MX2000_MH125_cat12lowpurity.txt > Datacard_MX2000_MH125_2016post_cat12.txt
# text2workspace.py Datacard_MX2000_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX2000_MH125_2016post -d Datacard_MX2000_MH125_2016post_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX3000_MH125
# combineCards.py  cat12_MX3000_MH125=Datacard_MX3000_MH125_cat12highpurity.txt Datacard_MX3000_MH125_cat12lowpurity.txt > Datacard_MX3000_MH125_2016post_cat12.txt
# text2workspace.py Datacard_MX3000_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX3000_MH125_2016post -d Datacard_MX3000_MH125_2016post_cat12.root --run expected 
# echo "done"


# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX600_MH125
# combineCards.py  cat12_MX600_MH125=Datacard_MX600_MH125_cat12highpurity.txt Datacard_MX600_MH125_cat12lowpurity.txt > Datacard_MX600_MH125_2016pre_cat12.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat12*.txt
# text2workspace.py Datacard_MX600_MH125_2016pre_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX600_MH125_2016pre -d Datacard_MX600_MH125_2016pre_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1000_MH125
# combineCards.py  cat12_MX1000_MH125=Datacard_MX1000_MH125_cat12highpurity.txt Datacard_MX1000_MH125_cat12lowpurity.txt > Datacard_MX1000_MH125_2016pre_cat12.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat12*.txt
# text2workspace.py Datacard_MX1000_MH125_2016pre_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1000_MH125_2016pre -d Datacard_MX1000_MH125_2016pre_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2000_MH125
# combineCards.py  cat12_MX2000_MH125=Datacard_MX2000_MH125_cat12highpurity.txt Datacard_MX2000_MH125_cat12lowpurity.txt > Datacard_MX2000_MH125_2016pre_cat12.txt
# text2workspace.py Datacard_MX2000_MH125_2016pre_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX2000_MH125_2016pre -d Datacard_MX2000_MH125_2016pre_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX3000_MH125
# combineCards.py  cat12_MX3000_MH125=Datacard_MX3000_MH125_cat12highpurity.txt Datacard_MX3000_MH125_cat12lowpurity.txt > Datacard_MX3000_MH125_2016pre_cat12.txt
# text2workspace.py Datacard_MX3000_MH125_2016pre_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX3000_MH125_2016pre -d Datacard_MX3000_MH125_2016pre_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX600_MH125
# combineCards.py  cat12_MX600_MH125=Datacard_MX600_MH125_cat12highpurity.txt Datacard_MX600_MH125_cat12lowpurity.txt > Datacard_MX600_MH125_2017_cat12.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat12*.txt
# text2workspace.py Datacard_MX600_MH125_2017_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX600_MH125_2017 -d Datacard_MX600_MH125_2017_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1000_MH125
# combineCards.py  cat12_MX1000_MH125=Datacard_MX1000_MH125_cat12highpurity.txt Datacard_MX1000_MH125_cat12lowpurity.txt > Datacard_MX1000_MH125_2017_cat12.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat12*.txt
# text2workspace.py Datacard_MX1000_MH125_2017_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1000_MH125_2017 -d Datacard_MX1000_MH125_2017_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2000_MH125
# combineCards.py  cat12_MX2000_MH125=Datacard_MX2000_MH125_cat12highpurity.txt Datacard_MX2000_MH125_cat12lowpurity.txt > Datacard_MX2000_MH125_2017_cat12.txt
# text2workspace.py Datacard_MX2000_MH125_2017_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX2000_MH125_2017 -d Datacard_MX2000_MH125_2017_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX3000_MH125
# combineCards.py  cat12_MX3000_MH125=Datacard_MX3000_MH125_cat12highpurity.txt Datacard_MX3000_MH125_cat12lowpurity.txt > Datacard_MX3000_MH125_2017_cat12.txt
# text2workspace.py Datacard_MX3000_MH125_2017_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX3000_MH125_2017 -d Datacard_MX3000_MH125_2017_cat12.root --run expected 
# echo "done"


# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX600_MH125
# combineCards.py  cat12_MX600_MH125=Datacard_MX600_MH125_cat12highpurity.txt Datacard_MX600_MH125_cat12lowpurity.txt > Datacard_MX600_MH125_2018_cat12.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat12*.txt
# text2workspace.py Datacard_MX600_MH125_2018_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX600_MH125_2018 -d Datacard_MX600_MH125_2018_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1000_MH125
# combineCards.py  cat12_MX1000_MH125=Datacard_MX1000_MH125_cat12highpurity.txt Datacard_MX1000_MH125_cat12lowpurity.txt > Datacard_MX1000_MH125_2018_cat12.txt
# sed -i 's/hgg 2 /hgg 200/g' *cat12*.txt
# text2workspace.py Datacard_MX1000_MH125_2018_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1000_MH125_2018 -d Datacard_MX1000_MH125_2018_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2000_MH125
# combineCards.py  cat12_MX2000_MH125=Datacard_MX2000_MH125_cat12highpurity.txt Datacard_MX2000_MH125_cat12lowpurity.txt > Datacard_MX2000_MH125_2018_cat12.txt
# text2workspace.py Datacard_MX2000_MH125_2018_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX2000_MH125_2018 -d Datacard_MX2000_MH125_2018_cat12.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX3000_MH125
# combineCards.py  cat12_MX3000_MH125=Datacard_MX3000_MH125_cat12highpurity.txt Datacard_MX3000_MH125_cat12lowpurity.txt > Datacard_MX3000_MH125_2018_cat12.txt
# text2workspace.py Datacard_MX3000_MH125_2018_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX3000_MH125_2018 -d Datacard_MX3000_MH125_2018_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX600_MH125
# combineCards.py  cat12_MX600_MH125=Datacard_MX600_MH125_2016pre_cat12.txt cat34_MX600_MH125=Datacard_MX600_MH125_2016pre_cat34.txt > Datacard_MX600_MH125_2016pre_cat1234.txt
# text2workspace.py Datacard_MX600_MH125_2016pre_cat1234.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat1234_MX600_MH125_2016pre -d Datacard_MX600_MH125_2016pre_cat1234.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125
# combineCards.py  cat12_MX600_MH125=Datacard_MX600_MH125_2016post_cat12.txt cat34_MX600_MH125=Datacard_MX600_MH125_2016post_cat34.txt > Datacard_MX600_MH125_2016post_cat1234.txt
# text2workspace.py Datacard_MX600_MH125_2016post_cat1234.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat1234_MX600_MH125_2016post -d Datacard_MX600_MH125_2016post_cat1234.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX600_MH125
# combineCards.py  cat12_MX600_MH125=Datacard_MX600_MH125_2017_cat12.txt cat34_MX600_MH125=Datacard_MX600_MH125_2017_cat34.txt > Datacard_MX600_MH125_2017_cat1234.txt
# text2workspace.py Datacard_MX600_MH125_2017_cat1234.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat1234_MX600_MH125_2017 -d Datacard_MX600_MH125_2017_cat1234.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX600_MH125
# combineCards.py  cat12_MX600_MH125=Datacard_MX600_MH125_2018_cat12.txt cat34_MX600_MH125=Datacard_MX600_MH125_2018_cat34.txt > Datacard_MX600_MH125_2018_cat1234.txt
# text2workspace.py Datacard_MX600_MH125_2018_cat1234.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat1234_MX600_MH125_2018 -d Datacard_MX600_MH125_2018_cat1234.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1000_MH125
# combineCards.py  cat12_MX1000_MH125=Datacard_MX1000_MH125_2016pre_cat12.txt cat34_MX1000_MH125=Datacard_MX1000_MH125_2016pre_cat34.txt > Datacard_MX1000_MH125_2016pre_cat1234.txt
# text2workspace.py Datacard_MX1000_MH125_2016pre_cat1234.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat1234_MX1000_MH125_2016pre -d Datacard_MX1000_MH125_2016pre_cat1234.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125
# combineCards.py  cat12_MX1000_MH125=Datacard_MX1000_MH125_2016post_cat12.txt cat34_MX1000_MH125=Datacard_MX1000_MH125_2016post_cat34.txt > Datacard_MX1000_MH125_2016post_cat1234.txt
# text2workspace.py Datacard_MX1000_MH125_2016post_cat1234.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat1234_MX1000_MH125_2016post -d Datacard_MX1000_MH125_2016post_cat1234.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1000_MH125
# combineCards.py  cat12_MX1000_MH125=Datacard_MX1000_MH125_2017_cat12.txt cat34_MX1000_MH125=Datacard_MX1000_MH125_2017_cat34.txt > Datacard_MX1000_MH125_2017_cat1234.txt
# text2workspace.py Datacard_MX1000_MH125_2017_cat1234.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat1234_MX1000_MH125_2017 -d Datacard_MX1000_MH125_2017_cat1234.root --run expected 
# echo "done"
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1000_MH125
# combineCards.py  cat12_MX1000_MH125=Datacard_MX1000_MH125_2018_cat12.txt cat34_MX1000_MH125=Datacard_MX1000_MH125_2018_cat34.txt > Datacard_MX1000_MH125_2018_cat1234.txt
# text2workspace.py Datacard_MX1000_MH125_2018_cat1234.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat1234_MX1000_MH125_2018 -d Datacard_MX1000_MH125_2018_cat1234.root --run expected 
# echo "done"




# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX250_MH125/Datacard_MX250_MH125_2016pre_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX250_MH125/Datacard_MX250_MH125_2016post_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX250_MH125/Datacard_MX250_MH125_2017_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX250_MH125/Datacard_MX250_MH125_2018_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# combineCards.py  cat34_MX250_MH125_16pre=Datacard_MX250_MH125_2016pre_cat34.txt cat34_MX250_MH125_16post=Datacard_MX250_MH125_2016post_cat34.txt cat34_MX250_MH125_17=Datacard_MX250_MH125_2017_cat34.txt cat34_MX250_MH125_18=Datacard_MX250_MH125_2018_cat34.txt > Datacard_MX250_MH125_run2_cat34.txt
# combine -M AsymptoticLimits -m 125 -n cat34_MX250_MH125_run2 -d Datacard_MX250_MH125_run2_cat34.txt --run expected
# echo "MX250 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX600_MH125/Datacard_MX600_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125/Datacard_MX600_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX600_MH125/Datacard_MX600_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX600_MH125/Datacard_MX600_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# combineCards.py  cat1234_MX600_MH125_16pre=Datacard_MX600_MH125_2016pre_cat1234.txt cat1234_MX600_MH125_16post=Datacard_MX600_MH125_2016post_cat1234.txt cat1234_MX600_MH125_17=Datacard_MX600_MH125_2017_cat1234.txt cat1234_MX600_MH125_18=Datacard_MX600_MH125_2018_cat1234.txt > Datacard_MX600_MH125_run2_cat1234.txt
# combine -M AsymptoticLimits -m 125 -n cat1234_MX600_MH125_run2 -d Datacard_MX600_MH125_run2_cat1234.txt --run expected
# echo "MX600 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1000_MH125/Datacard_MX1000_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125/Datacard_MX1000_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1000_MH125/Datacard_MX1000_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1000_MH125/Datacard_MX1000_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# combineCards.py  cat1234_MX1000_MH125_16pre=Datacard_MX1000_MH125_2016pre_cat1234.txt cat1234_MX1000_MH125_16post=Datacard_MX1000_MH125_2016post_cat1234.txt cat1234_MX1000_MH125_17=Datacard_MX1000_MH125_2017_cat1234.txt cat1234_MX1000_MH125_18=Datacard_MX1000_MH125_2018_cat1234.txt > Datacard_MX1000_MH125_run2_cat1234.txt
# combine -M AsymptoticLimits -m 125 -n cat1234_MX1000_MH125_run2 -d Datacard_MX1000_MH125_run2_cat1234.txt --run expected
# echo "MX1000 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2000_MH125/Datacard_MX2000_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2000_MH125/Datacard_MX2000_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2000_MH125/Datacard_MX2000_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2000_MH125/Datacard_MX2000_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# combineCards.py  cat12_MX2000_MH125_16pre=Datacard_MX2000_MH125_2016pre_cat12.txt cat12_MX2000_MH125_16post=Datacard_MX2000_MH125_2016post_cat12.txt cat12_MX2000_MH125_17=Datacard_MX2000_MH125_2017_cat12.txt cat12_MX2000_MH125_18=Datacard_MX2000_MH125_2018_cat12.txt > Datacard_MX2000_MH125_run2_cat12.txt
# combine -M AsymptoticLimits -m 125 -n cat12_MX2000_MH125_run2 -d Datacard_MX2000_MH125_run2_cat12.txt --run expected
# echo "MX2000 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX3000_MH125/Datacard_MX3000_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX3000_MH125/Datacard_MX3000_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX3000_MH125/Datacard_MX3000_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX3000_MH125/Datacard_MX3000_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/AN
# combineCards.py  cat12_MX3000_MH125_16pre=Datacard_MX3000_MH125_2016pre_cat12.txt cat12_MX3000_MH125_16post=Datacard_MX3000_MH125_2016post_cat12.txt cat12_MX3000_MH125_17=Datacard_MX3000_MH125_2017_cat12.txt cat12_MX3000_MH125_18=Datacard_MX3000_MH125_2018_cat12.txt > Datacard_MX3000_MH125_run2_cat12.txt
# combine -M AsymptoticLimits -m 125 -n cat12_MX3000_MH125_run2 -d Datacard_MX3000_MH125_run2_cat12.txt --run expected
# echo "MX3000 done"

text2workspace.py Datacard_MX250_MH125_run2_cat34.txt -m 125
combineTool.py -M Impacts -d Datacard_MX250_MH125_run2_cat34.root -t -1 --toysFrequentist -m 125 --setParameterRanges r=-400.0,400.0 --freezeParameters MH   --setParameters r=58.2500 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doInitialFit --task-name initialFit 
combineTool.py -M Impacts -d Datacard_MX250_MH125_run2_cat34.root -t -1 -m 125 --setParameterRanges r=-400.0,400.0 --freezeParameters MH   --setParameters r=58.2500 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doFits  2>&1 | tee Fit250.log
combineTool.py -M Impacts -d Datacard_MX250_MH125_run2_cat34.root -t -1 -m 125 --setParameterRanges r=-400.0,400.0 --freezeParameters MH   --setParameters r=58.2500 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --output impacts_250.json
plotImpacts.py -i impacts_250.json -o impacts_250 --blind

text2workspace.py Datacard_MX600_MH125_run2_cat1234.txt -m 125
combineTool.py -M Impacts -d Datacard_MX600_MH125_run2_cat1234.root -t -1 --toysFrequentist -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH   --setParameters r=7.43 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doInitialFit --task-name initialFit 
combineTool.py -M Impacts -d Datacard_MX600_MH125_run2_cat1234.root -t -1 -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH   --setParameters r=7.43 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doFits  2>&1 | tee Fit600.log
combineTool.py -M Impacts -d Datacard_MX600_MH125_run2_cat1234.root -t -1 -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH   --setParameters r=7.43 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --output impacts_600.json
plotImpacts.py -i impacts_600.json -o impacts_600 --blind

text2workspace.py Datacard_MX1000_MH125_run2_cat1234.txt -m 125
combineTool.py -M Impacts -d Datacard_MX1000_MH125_run2_cat1234.root -t -1 --toysFrequentist -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH,env_pdf_0_2016post_13TeV_exp3_p1,env_pdf_0_2016post_13TeV_exp3_p2   --setParameters r=2.47 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doInitialFit --task-name initialFit 
combineTool.py -M Impacts -d Datacard_MX1000_MH125_run2_cat1234.root -t -1 -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH,env_pdf_0_2016post_13TeV_exp3_p1,env_pdf_0_2016post_13TeV_exp3_p2   --setParameters r=2.47 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doFits  2>&1 | tee Fit1000.log
combineTool.py -M Impacts -d Datacard_MX1000_MH125_run2_cat1234.root -t -1 -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH,env_pdf_0_2016post_13TeV_exp3_p1,env_pdf_0_2016post_13TeV_exp3_p2   --setParameters r=2.47 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --output impacts_1000.json
plotImpacts.py -i impacts_1000.json -o impacts_1000 --blind

text2workspace.py Datacard_MX2000_MH125_run2_cat12.txt -m 125
combineTool.py -M Impacts -d Datacard_MX2000_MH125_run2_cat12.root -t -1 --toysFrequentist -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH,env_pdf_0_2016pre_13TeV_pow1_p1,env_pdf_0_2016post_13TeV_exp3_p1,env_pdf_0_2016post_13TeV_exp3_p2,env_pdf_0_2017_13TeV_exp3_p1,env_pdf_0_2017_13TeV_exp3_p2,env_pdf_0_2018_13TeV_exp3_p1,env_pdf_0_2018_13TeV_exp3_p2   --setParameters r=81.25 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doInitialFit --task-name initialFit 
combineTool.py -M Impacts -d Datacard_MX2000_MH125_run2_cat12.root -t -1 -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH,env_pdf_0_2016pre_13TeV_pow1_p1,env_pdf_0_2016post_13TeV_exp3_p1,env_pdf_0_2016post_13TeV_exp3_p2,env_pdf_0_2017_13TeV_exp3_p1,env_pdf_0_2017_13TeV_exp3_p2,env_pdf_0_2018_13TeV_exp3_p1,env_pdf_0_2018_13TeV_exp3_p2   --setParameters r=81.25 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doFits  2>&1 | tee Fit2000.log
combineTool.py -M Impacts -d Datacard_MX2000_MH125_run2_cat12.root -t -1 -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH,env_pdf_0_2016pre_13TeV_pow1_p1,env_pdf_0_2016post_13TeV_exp3_p1,env_pdf_0_2016post_13TeV_exp3_p2,env_pdf_0_2017_13TeV_exp3_p1,env_pdf_0_2017_13TeV_exp3_p2,env_pdf_0_2018_13TeV_exp3_p1,env_pdf_0_2018_13TeV_exp3_p2   --setParameters r=81.25 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --output impacts_2000.json
plotImpacts.py -i impacts_2000.json -o impacts_2000 --blind

text2workspace.py Datacard_MX3000_MH125_run2_cat12.txt -m 125
combineTool.py -M Impacts -d Datacard_MX3000_MH125_run2_cat12.root -t -1 --toysFrequentist -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH,env_pdf_0_2016post_13TeV_exp3_p1,env_pdf_0_2016post_13TeV_exp3_p2,env_pdf_0_2017_13TeV_exp3_p1,env_pdf_0_2017_13TeV_exp3_p2   --setParameters r=50.25 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doInitialFit --task-name initialFit 
combineTool.py -M Impacts -d Datacard_MX3000_MH125_run2_cat12.root -t -1 -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH,env_pdf_0_2016post_13TeV_exp3_p1,env_pdf_0_2016post_13TeV_exp3_p2,env_pdf_0_2017_13TeV_exp3_p1,env_pdf_0_2017_13TeV_exp3_p2   --setParameters r=50.25 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doFits  2>&1 | tee Fit3000.log
combineTool.py -M Impacts -d Datacard_MX3000_MH125_run2_cat12.root -t -1 -m 125 --setParameterRanges r=-200.0,200.0 --freezeParameters MH,env_pdf_0_2016post_13TeV_exp3_p1,env_pdf_0_2016post_13TeV_exp3_p2,env_pdf_0_2017_13TeV_exp3_p1,env_pdf_0_2017_13TeV_exp3_p2   --setParameters r=50.25 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --output impacts_3000.json
plotImpacts.py -i impacts_3000.json -o impacts_3000 --blind
plotImpacts.py -i impacts_250_nounconstrained.json -o impacts_250 --blind
plotImpacts.py -i impacts_600_nounconstrained.json -o impacts_600 --blind
plotImpacts.py -i impacts_1000_nounconstrained.json -o impacts_1000 --blind
plotImpacts.py -i impacts_2000_nounconstrained.json -o impacts_2000 --blind
plotImpacts.py -i impacts_3000_nounconstrained.json -o impacts_3000 --blind
