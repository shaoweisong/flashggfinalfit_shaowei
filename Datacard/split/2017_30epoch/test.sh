cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017/MX500_MH125
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX500_MH125_2017_combineFHSL_cat34FH*.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX500_MH125_2017_combineFHSL_cat34SL*.txt .
combineCards.py  cat34SLlowpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX500_MH125_2017_cat34SL.txt
combineCards.py  cat34FHhowpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX500_MH125_2017_cat34FH.txt
combineCards.py  cat34FH=Datacard_MX500_MH125_2017_cat34FH.txt cat34SL=Datacard_MX500_MH125_2017_cat34SL.txt > Datacard_MX500_MH125_2017_cat34.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX500_MH125_2017_cat34*.txt
text2workspace.py Datacard_MX500_MH125_2017_cat34.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017_cat34 -d Datacard_MX500_MH125_2017_cat34.root
combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017_cat34FH -d Datacard_MX500_MH125_2017_cat34FH.txt
combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017_cat34SL -d Datacard_MX500_MH125_2017_cat34SL.txt
echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017/MX250_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX250_MH125_2017_combineFHSL_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX250_MH125_2017_combineFHSL_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX250_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX250_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX250_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34SL=Datacard_MX250_MH125_2017_cat34SL.txt > Datacard_MX250_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX250_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX250_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX250_MH125_2017_cat34 -d Datacard_MX250_MH125_2017_cat34.root
# echo "done"

# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017/MX1000_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX1000_MH125_2017_combineFHSL_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX1000_MH125_2017_combineFHSL_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX1000_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX1000_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX1000_MH125_2017_cat34FH.txt cat34SL=Datacard_MX1000_MH125_2017_cat34SL.txt > Datacard_MX1000_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX1000_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX1000_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX1000_MH125_2017_cat34 -d Datacard_MX1000_MH125_2017_cat34.root
# echo "done"

# combineCards.py  cat34FH=Datacard_MX500_MH125_2017_combineFHSL_cat34highpurity.txt cat34SL=Datacard_MX500_MH125_2017_combineFHSL_cat34lowpurity.txt > Datacard_MX250_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX250_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX250_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX250_MH125_2017_cat34 -d Datacard_MX250_MH125_2017_cat34.root
# echo "done"
