
# # # combine -M AsymptoticLimits -m 125 -n cat34_M1000 -d Datacard_MX1000_MH125_2018_cat34.root --run expected 

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX500_MH125
# combineCards.py  cat12_MX500_MH125=Datacard_MX500_MH125_cat12highpurity.txt Datacard_MX500_MH125_cat12lowpurity.txt > Datacard_MX500_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
# # cp Datacard_MX500_MH125_2016post_cat12.txt Datacard_MX500_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX500_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX500_MH125_2016post -d Datacard_MX500_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX550_MH125
# combineCards.py  cat12_MX550_MH125=Datacard_MX550_MH125_cat12highpurity.txt Datacard_MX550_MH125_cat12lowpurity.txt > Datacard_MX550_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
# # cp Datacard_MX550_MH125_2016post_cat12.txt Datacard_MX550_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX550_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX550_MH125_2016post -d Datacard_MX550_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125
# combineCards.py  cat12_MX600_MH125=Datacard_MX600_MH125_cat12highpurity.txt Datacard_MX600_MH125_cat12lowpurity.txt > Datacard_MX600_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
# # cp Datacard_MX600_MH125_2016post_cat12.txt Datacard_MX600_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX600_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX600_MH125_2016post -d Datacard_MX600_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX650_MH125
# combineCards.py  cat12_MX650_MH125=Datacard_MX650_MH125_cat12highpurity.txt Datacard_MX650_MH125_cat12lowpurity.txt > Datacard_MX650_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
# # cp Datacard_MX650_MH125_2016post_cat12.txt Datacard_MX650_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX650_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX650_MH125_2016post -d Datacard_MX650_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX700_MH125
# combineCards.py  cat12_MX700_MH125=Datacard_MX700_MH125_cat12highpurity.txt Datacard_MX700_MH125_cat12lowpurity.txt > Datacard_MX700_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
# # cp Datacard_MX700_MH125_2016post_cat12.txt Datacard_MX700_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX700_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX700_MH125_2016post -d Datacard_MX700_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX750_MH125
# combineCards.py  cat12_MX750_MH125=Datacard_MX750_MH125_cat12highpurity.txt Datacard_MX750_MH125_cat12lowpurity.txt > Datacard_MX750_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
# # cp Datacard_MX750_MH125_2016post_cat12.txt Datacard_MX750_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX750_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX750_MH125_2016post -d Datacard_MX750_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX800_MH125
# combineCards.py  cat12_MX800_MH125=Datacard_MX800_MH125_cat12highpurity.txt Datacard_MX800_MH125_cat12lowpurity.txt > Datacard_MX800_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
# # cp Datacard_MX800_MH125_2016post_cat12.txt Datacard_MX800_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX800_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX800_MH125_2016post -d Datacard_MX800_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX850_MH125
# combineCards.py  cat12_MX850_MH125=Datacard_MX850_MH125_cat12highpurity.txt Datacard_MX850_MH125_cat12lowpurity.txt > Datacard_MX850_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
# # cp Datacard_MX850_MH125_2016post_cat12.txt Datacard_MX850_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX850_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX850_MH125_2016post -d Datacard_MX850_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125
# combineCards.py  cat12_MX1000_MH125=Datacard_MX1000_MH125_cat12highpurity.txt Datacard_MX1000_MH125_cat12lowpurity.txt > Datacard_MX1000_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
# # cp Datacard_MX1000_MH125_2016post_cat12.txt Datacard_MX1000_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX1000_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1000_MH125_2016post -d Datacard_MX1000_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1100_MH125
# combineCards.py  cat12_MX1100_MH125=Datacard_MX1100_MH125_cat12highpurity.txt Datacard_MX1100_MH125_cat12lowpurity.txt > Datacard_MX1100_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX1100_MH125_2016post_cat12.txt Datacard_MX1100_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX1100_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1100_MH125_2016post -d Datacard_MX1100_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1200_MH125
# combineCards.py  cat12_MX1200_MH125=Datacard_MX1200_MH125_cat12highpurity.txt Datacard_MX1200_MH125_cat12lowpurity.txt > Datacard_MX1200_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX1200_MH125_2016post_cat12.txt Datacard_MX1200_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX1200_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1200_MH125_2016post -d Datacard_MX1200_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1300_MH125
# combineCards.py  cat12_MX1300_MH125=Datacard_MX1300_MH125_cat12highpurity.txt Datacard_MX1300_MH125_cat12lowpurity.txt > Datacard_MX1300_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX1300_MH125_2016post_cat12.txt Datacard_MX1300_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX1300_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1300_MH125_2016post -d Datacard_MX1300_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1400_MH125
# combineCards.py  cat12_MX1400_MH125=Datacard_MX1400_MH125_cat12highpurity.txt Datacard_MX1400_MH125_cat12lowpurity.txt > Datacard_MX1400_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX1400_MH125_2016post_cat12.txt Datacard_MX1400_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX1400_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1400_MH125_2016post -d Datacard_MX1400_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1500_MH125
# combineCards.py  cat12_MX1500_MH125=Datacard_MX1500_MH125_cat12highpurity.txt Datacard_MX1500_MH125_cat12lowpurity.txt > Datacard_MX1500_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX1500_MH125_2016post_cat12.txt Datacard_MX1500_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX1500_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1500_MH125_2016post -d Datacard_MX1500_MH125_2016post_cat12.root --run expected 
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1600_MH125
# combineCards.py  cat12_MX1600_MH125=Datacard_MX1600_MH125_cat12highpurity.txt Datacard_MX1600_MH125_cat12lowpurity.txt > Datacard_MX1600_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX1600_MH125_2016post_cat12.txt Datacard_MX1600_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX1600_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1600_MH125_2016post -d Datacard_MX1600_MH125_2016post_cat12.root --run expected
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1700_MH125
# combineCards.py  cat12_MX1700_MH125=Datacard_MX1700_MH125_cat12highpurity.txt Datacard_MX1700_MH125_cat12lowpurity.txt > Datacard_MX1700_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX1700_MH125_2016post_cat12.txt Datacard_MX1700_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX1700_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1700_MH125_2016post -d Datacard_MX1700_MH125_2016post_cat12.root --run expected
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1800_MH125
# combineCards.py  cat12_MX1800_MH125=Datacard_MX1800_MH125_cat12highpurity.txt Datacard_MX1800_MH125_cat12lowpurity.txt > Datacard_MX1800_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX1800_MH125_2016post_cat12.txt Datacard_MX1800_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX1800_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1800_MH125_2016post -d Datacard_MX1800_MH125_2016post_cat12.root --run expected
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1900_MH125
# combineCards.py  cat12_MX1900_MH125=Datacard_MX1900_MH125_cat12highpurity.txt Datacard_MX1900_MH125_cat12lowpurity.txt > Datacard_MX1900_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX1900_MH125_2016post_cat12.txt Datacard_MX1900_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX1900_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX1900_MH125_2016post -d Datacard_MX1900_MH125_2016post_cat12.root --run expected
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2000_MH125
# combineCards.py  cat12_MX2000_MH125=Datacard_MX2000_MH125_cat12highpurity.txt Datacard_MX2000_MH125_cat12lowpurity.txt > Datacard_MX2000_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX2000_MH125_2016post_cat12.txt Datacard_MX2000_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX2000_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX2000_MH125_2016post -d Datacard_MX2000_MH125_2016post_cat12.root --run expected
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2200_MH125
# combineCards.py  cat12_MX2200_MH125=Datacard_MX2200_MH125_cat12highpurity.txt Datacard_MX2200_MH125_cat12lowpurity.txt > Datacard_MX2200_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX2200_MH125_2016post_cat12.txt Datacard_MX2200_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX2200_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX2200_MH125_2016post -d Datacard_MX2200_MH125_2016post_cat12.root --run expected
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2400_MH125
# combineCards.py  cat12_MX2400_MH125=Datacard_MX2400_MH125_cat12highpurity.txt Datacard_MX2400_MH125_cat12lowpurity.txt > Datacard_MX2400_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX2400_MH125_2016post_cat12.txt Datacard_MX2400_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX2400_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX2400_MH125_2016post -d Datacard_MX2400_MH125_2016post_cat12.root --run expected
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2600_MH125
# combineCards.py  cat12_MX2600_MH125=Datacard_MX2600_MH125_cat12highpurity.txt Datacard_MX2600_MH125_cat12lowpurity.txt > Datacard_MX2600_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX2600_MH125_2016post_cat12.txt Datacard_MX2600_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX2600_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX2600_MH125_2016post -d Datacard_MX2600_MH125_2016post_cat12.root --run expected
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2800_MH125
# combineCards.py  cat12_MX2800_MH125=Datacard_MX2800_MH125_cat12highpurity.txt Datacard_MX2800_MH125_cat12lowpurity.txt > Datacard_MX2800_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX2800_MH125_2016post_cat12.txt Datacard_MX2800_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX2800_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX2800_MH125_2016post -d Datacard_MX2800_MH125_2016post_cat12.root --run expected
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX3000_MH125
# combineCards.py  cat12_MX3000_MH125=Datacard_MX3000_MH125_cat12highpurity.txt Datacard_MX3000_MH125_cat12lowpurity.txt > Datacard_MX3000_MH125_2016post_cat12.txt
# # grep -rl 'Combination' *cat12*.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
# # cp Datacard_MX3000_MH125_2016post_cat12.txt Datacard_MX3000_MH125_2016postallcat.txt
# text2workspace.py Datacard_MX3000_MH125_2016post_cat12.txt -m 125
# combine -M AsymptoticLimits -m 125 -n cat12_MX3000_MH125_2016post -d Datacard_MX3000_MH125_2016post_cat12.txt --run expected
# echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX500_MH125
combineCards.py  WWggcat12_MX500_MH125=Datacard_MX500_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX500_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX500_MH125_2018_cat12WWgg.txt
sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
text2workspace.py Datacard_MX500_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX500_MH125_2018 -d Datacard_MX500_MH125_2018_cat12WWgg.root --run expected 
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX550_MH125
combineCards.py  WWggcat12_MX550_MH125highpurity=Datacard_MX550_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX550_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX550_MH125_2018_cat12WWgg.txt
sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
text2workspace.py Datacard_MX550_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX550_MH125_2018 -d Datacard_MX550_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX600_MH125
combineCards.py  WWggcat12_MX600_MH125=Datacard_MX600_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX600_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX600_MH125_2018_cat12WWgg.txt
sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
text2workspace.py Datacard_MX600_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX600_MH125_2018 -d Datacard_MX600_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX650_MH125
combineCards.py  WWggcat12_MX650_MH125=Datacard_MX650_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX650_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX650_MH125_2018_cat12WWgg.txt
sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
text2workspace.py Datacard_MX650_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX650_MH125_2018 -d Datacard_MX650_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX700_MH125
combineCards.py  WWggcat12_MX700_MH125=Datacard_MX700_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX700_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX700_MH125_2018_cat12WWgg.txt
sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
text2workspace.py Datacard_MX700_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX700_MH125_2018 -d Datacard_MX700_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX750_MH125
combineCards.py  WWggcat12_MX750_MH125=Datacard_MX750_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX750_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX750_MH125_2018_cat12WWgg.txt
sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
text2workspace.py Datacard_MX750_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX750_MH125_2018 -d Datacard_MX750_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX800_MH125
combineCards.py  WWggcat12_MX800_MH125=Datacard_MX800_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX800_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX800_MH125_2018_cat12WWgg.txt
sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
text2workspace.py Datacard_MX800_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX800_MH125_2018 -d Datacard_MX800_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX850_MH125
combineCards.py  WWggcat12_MX850_MH125=Datacard_MX850_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX850_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX850_MH125_2018_cat12WWgg.txt
sed -i 's/_hgg 2 /_hgg 200 /g' *cat12*.txt
text2workspace.py Datacard_MX850_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX850_MH125_2018 -d Datacard_MX850_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1000_MH125
combineCards.py  WWggcat12_MX1000_MH125=Datacard_MX1000_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX1000_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX1000_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX1000_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX1000_MH125_2018 -d Datacard_MX1000_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1100_MH125
combineCards.py  WWggcat12_MX1100_MH125=Datacard_MX1100_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX1100_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX1100_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX1100_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX1100_MH125_2018 -d Datacard_MX1100_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1200_MH125
combineCards.py  WWggcat12_MX1200_MH125=Datacard_MX1200_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX1200_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX1200_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX1200_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX1200_MH125_2018 -d Datacard_MX1200_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1300_MH125
combineCards.py  WWggcat12_MX1300_MH125=Datacard_MX1300_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX1300_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX1300_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX1300_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX1300_MH125_2018 -d Datacard_MX1300_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1400_MH125
combineCards.py  WWggcat12_MX1400_MH125=Datacard_MX1400_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX1400_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX1400_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX1400_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX1400_MH125_2018 -d Datacard_MX1400_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1500_MH125
combineCards.py  WWggcat12_MX1500_MH125=Datacard_MX1500_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX1500_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX1500_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX1500_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX1500_MH125_2018 -d Datacard_MX1500_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1600_MH125
combineCards.py  WWggcat12_MX1600_MH125=Datacard_MX1600_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX1600_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX1600_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX1600_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX1600_MH125_2018 -d Datacard_MX1600_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1700_MH125
combineCards.py  WWggcat12_MX1700_MH125=Datacard_MX1700_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX1700_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX1700_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX1700_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX1700_MH125_2018 -d Datacard_MX1700_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1800_MH125
combineCards.py  WWggcat12_MX1800_MH125=Datacard_MX1800_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX1800_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX1800_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX1800_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX1800_MH125_2018 -d Datacard_MX1800_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1900_MH125
combineCards.py  WWggcat12_MX1900_MH125=Datacard_MX1900_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX1900_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX1900_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX1900_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX1900_MH125_2018 -d Datacard_MX1900_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2000_MH125
combineCards.py  WWggcat12_MX2000_MH125=Datacard_MX2000_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX2000_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX2000_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX2000_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX2000_MH125_2018 -d Datacard_MX2000_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2200_MH125
combineCards.py  WWggcat12_MX2200_MH125=Datacard_MX2200_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX2200_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX2200_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX2200_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX2200_MH125_2018 -d Datacard_MX2200_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2400_MH125
combineCards.py  WWggcat12_MX2400_MH125=Datacard_MX2400_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX2400_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX2400_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX2400_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX2400_MH125_2018 -d Datacard_MX2400_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2600_MH125
combineCards.py  WWggcat12_MX2600_MH125=Datacard_MX2600_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX2600_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX2600_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX2600_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX2600_MH125_2018 -d Datacard_MX2600_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2800_MH125
combineCards.py  WWggcat12_MX2800_MH125=Datacard_MX2800_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX2800_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX2800_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX2800_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX2800_MH125_2018 -d Datacard_MX2800_MH125_2018_cat12WWgg.root --run expected
echo "done"

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX3000_MH125
combineCards.py  WWggcat12_MX3000_MH125=Datacard_MX3000_MH125_2018_combineFHSL_cat12highpurity.txt Datacard_MX3000_MH125_2018_combineFHSL_cat12lowpurity.txt > Datacard_MX3000_MH125_2018_cat12WWgg.txt
text2workspace.py Datacard_MX3000_MH125_2018_cat12WWgg.txt -m 125
combine -M AsymptoticLimits -m 125 -n WWggcat12_MX3000_MH125_2018 -d Datacard_MX3000_MH125_2018_cat12WWgg.root --run expected
echo "done"
