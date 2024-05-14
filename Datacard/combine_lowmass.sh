# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M250
# combineCards.py  cat1357_M250=Datacard_M250_cat1.txt Datacard_M250_cat2.txt  Datacard_M250_cat7.txt Datacard_M250_cat8.txt > Datacard_M250_cat123578.txt
# combine -M AsymptoticLimits -m 125 -n combine_M250 -d Datacard_M250_cat123578.txt --run expected --rMax 50000

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M300
# combineCards.py  cat1357_M300=Datacard_M300_cat1.txt Datacard_M300_cat2.txt Datacard_M300_cat3.txt  Datacard_M300_cat7.txt Datacard_M300_cat8.txt > Datacard_M300_cat12378.txt
# combine -M AsymptoticLimits -m 125 -n combine_M300 -d Datacard_M300_cat12378.txt --run expected --rMax 50000

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M400
# combineCards.py  cat1357_M400=Datacard_M400_cat1.txt Datacard_M400_cat2.txt Datacard_M400_cat3.txt  Datacard_M400_cat7.txt Datacard_M400_cat8.txt > Datacard_M400_cat12378.txt
# combine -M AsymptoticLimits -m 125 -n combine_M400 -d Datacard_M400_cat12378.txt --run expected 

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M500
# combineCards.py  cat1357_M500=Datacard_M500_cat1.txt Datacard_M500_cat2.txt Datacard_M500_cat3.txt  Datacard_M500_cat7.txt Datacard_M500_cat8.txt > Datacard_M500_cat12378.txt
# combine -M AsymptoticLimits -m 125 -n combine_M500 -d Datacard_M500_cat12378.txt --run expected 

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M600
combineCards.py  cat1357_M600=Datacard_M600_cat1.txt Datacard_M600_cat2.txt Datacard_M600_cat3.txt Datacard_M600_cat5.txt Datacard_M600_cat7.txt Datacard_M600_cat8.txt > Datacard_M600_cat123578.txt
combine -M AsymptoticLimits -m 125 -n combine_M600 -d Datacard_M600_cat123578.txt --run expected  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M700
combineCards.py  cat1357_M700=Datacard_M700_cat1.txt Datacard_M700_cat2.txt Datacard_M700_cat3.txt Datacard_M700_cat5.txt Datacard_M700_cat7.txt Datacard_M700_cat8.txt > Datacard_M700_cat123578.txt
combine -M AsymptoticLimits -m 125 -n combine_M700 -d Datacard_M700_cat123578.txt --run expected  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M800
combineCards.py  cat1357_M800=Datacard_M800_cat1.txt Datacard_M800_cat2.txt Datacard_M800_cat3.txt Datacard_M800_cat5.txt Datacard_M800_cat7.txt Datacard_M800_cat8.txt > Datacard_M800_cat123578.txt
combine -M AsymptoticLimits -m 125 -n combine_M800 -d Datacard_M800_cat123578.txt --run expected  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M900
combineCards.py  cat1357_M900=Datacard_M900_cat1.txt Datacard_M900_cat2.txt Datacard_M900_cat3.txt Datacard_M900_cat5.txt Datacard_M900_cat7.txt Datacard_M900_cat8.txt > Datacard_M900_cat123578.txt
combine -M AsymptoticLimits -m 125 -n combine_M900 -d Datacard_M900_cat123578.txt --run expected  

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1000
# combineCards.py  cat1357_M1000=Datacard_M1000_cat1.txt Datacard_M1000_cat2.txt Datacard_M1000_cat3.txt Datacard_M1000_cat5.txt Datacard_M1000_cat7.txt Datacard_M1000_cat8.txt > test.txt
combineCards.py  cat1357_M1000=Datacard_M1000_cat1.txt Datacard_M1000_cat2.txt Datacard_M1000_cat3.txt Datacard_M1000_cat5.txt Datacard_M1000_cat7.txt Datacard_M1000_cat8.txt > Datacard_M1000_cat123578.txt
combine -M AsymptoticLimits -m 125 -n combine_M1000 -d Datacard_M1000_cat123578.txt --run expected  

