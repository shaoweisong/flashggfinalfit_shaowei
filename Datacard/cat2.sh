# combineCards.py  cat2_M250=Datacard_M250_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M250_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M250_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M250_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M250_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M250_cat2.txt
# mv  Datacard_M250_cat2.txt datacard_M250
# cd  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M250
# combine -M AsymptoticLimits -m 125 -n Datacard_M250_cat2 -d Datacard_M250_cat2.txt --run expected --rMax 50000 
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/
# combineCards.py  cat2_M300=Datacard_M300_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M300_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M300_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M300_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M300_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M300_cat2.txt
# mv  Datacard_M300_cat2.txt datacard_M300
# cd  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M300
# combine -M AsymptoticLimits -m 125 -n Datacard_M300_cat2 -d Datacard_M300_cat2.txt --run expected --rMax 50000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/

combineCards.py  cat2_M400=Datacard_M400_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M400_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M400_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M400_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M400_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M400_cat2.txt
mv  Datacard_M400_cat2.txt datacard_M400
cd  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M400
combine -M AsymptoticLimits -m 125 -n Datacard_M400_cat2 -d Datacard_M400_cat2.txt --run expected --rMax 20000 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/

combineCards.py  cat2_M500=Datacard_M500_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M500_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M500_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M500_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M500_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M500_cat2.txt
mv  Datacard_M500_cat2.txt datacard_M500
cd  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M500
combine -M AsymptoticLimits -m 125 -n Datacard_M500_cat2 -d Datacard_M500_cat2.txt --run expected 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/

combineCards.py  cat2_M600=Datacard_M600_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M600_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M600_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M600_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M600_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M600_cat2.txt
mv  Datacard_M600_cat2.txt datacard_M600
cd  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M600
combine -M AsymptoticLimits -m 125 -n Datacard_M600_cat2 -d Datacard_M600_cat2.txt --run expected 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/

combineCards.py  cat2_M700=Datacard_M700_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M700_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M700_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M700_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M700_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M700_cat2.txt
mv  Datacard_M700_cat2.txt datacard_M700
cd  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M700
combine -M AsymptoticLimits -m 125 -n Datacard_M700_cat2 -d Datacard_M700_cat2.txt --run expected 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/

combineCards.py  cat2_M800=Datacard_M800_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M800_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M800_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M800_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M800_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M800_cat2.txt
mv  Datacard_M800_cat2.txt datacard_M800
cd  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M800
combine -M AsymptoticLimits -m 125 -n Datacard_M800_cat2 -d Datacard_M800_cat2.txt --run expected 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/

combineCards.py  cat2_M900=Datacard_M900_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M900_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M900_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M900_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M900_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M900_cat2.txt
mv  Datacard_M900_cat2.txt datacard_M900
cd  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M900
combine -M AsymptoticLimits -m 125 -n Datacard_M900_cat2 -d Datacard_M900_cat2.txt --run expected 
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/

combineCards.py  cat2_M1000=Datacard_M1000_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M1000_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M1000_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M1000_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M1000_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M1000_cat2.txt
mv  Datacard_M1000_cat2.txt datacard_M1000
cd  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/datacard_M1000
combine -M AsymptoticLimits -m 125 -n Datacard_M1000_cat2 -d Datacard_M1000_cat2.txt --run expected 

