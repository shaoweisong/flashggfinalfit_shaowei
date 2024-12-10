# # first step
# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX250_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX250_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX250_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX250_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX250_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX250_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX250_MH125_2017_cat34FH.txt cat34SL=Datacard_MX250_MH125_2017_cat34SL.txt > Datacard_MX250_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX250_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX250_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX250_MH125_2017_cat34 -d Datacard_MX250_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX250_MH125_2017_cat34FH -d Datacard_MX250_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX250_MH125_2017_cat34SL -d Datacard_MX250_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX260_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX260_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX260_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX260_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX260_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX260_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX260_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX260_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX260_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX260_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX260_MH125_2017_cat34FH.txt cat34SL=Datacard_MX260_MH125_2017_cat34SL.txt > Datacard_MX260_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX260_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX260_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX260_MH125_2017_cat34 -d Datacard_MX260_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX260_MH125_2017_cat34FH -d Datacard_MX260_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX260_MH125_2017_cat34SL -d Datacard_MX260_MH125_2017_cat34SL.txt
# echo "done"
# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX270_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX270_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX270_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX270_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX270_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX270_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX270_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX270_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX270_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX270_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX270_MH125_2017_cat34FH.txt cat34SL=Datacard_MX270_MH125_2017_cat34SL.txt > Datacard_MX270_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX270_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX270_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX270_MH125_2017_cat34 -d Datacard_MX270_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX270_MH125_2017_cat34FH -d Datacard_MX270_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX270_MH125_2017_cat34SL -d Datacard_MX270_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX280_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX280_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX280_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX280_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX280_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX280_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX280_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX280_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX280_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX280_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX280_MH125_2017_cat34FH.txt cat34SL=Datacard_MX280_MH125_2017_cat34SL.txt > Datacard_MX280_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX280_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX280_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX280_MH125_2017_cat34 -d Datacard_MX280_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX280_MH125_2017_cat34FH -d Datacard_MX280_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX280_MH125_2017_cat34SL -d Datacard_MX280_MH125_2017_cat34SL.txt
# echo "done"
# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX300_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX300_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX300_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX300_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX300_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX300_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX300_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX300_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX300_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX300_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX300_MH125_2017_cat34FH.txt cat34SL=Datacard_MX300_MH125_2017_cat34SL.txt > Datacard_MX300_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX300_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX300_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX300_MH125_2017_cat34 -d Datacard_MX300_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX300_MH125_2017_cat34FH -d Datacard_MX300_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX300_MH125_2017_cat34SL -d Datacard_MX300_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX320_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX320_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX320_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX320_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX320_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX320_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX320_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX320_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX320_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX320_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX320_MH125_2017_cat34FH.txt cat34SL=Datacard_MX320_MH125_2017_cat34SL.txt > Datacard_MX320_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX320_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX320_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX320_MH125_2017_cat34 -d Datacard_MX320_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX320_MH125_2017_cat34FH -d Datacard_MX320_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX320_MH125_2017_cat34SL -d Datacard_MX320_MH125_2017_cat34SL.txt
# echo "done"
# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX350_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX350_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX350_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX350_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX350_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX350_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX350_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX350_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX350_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX350_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX350_MH125_2017_cat34FH.txt cat34SL=Datacard_MX350_MH125_2017_cat34SL.txt > Datacard_MX350_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX350_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX350_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX350_MH125_2017_cat34 -d Datacard_MX350_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX350_MH125_2017_cat34FH -d Datacard_MX350_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX350_MH125_2017_cat34SL -d Datacard_MX350_MH125_2017_cat34SL.txt
# echo "done"

mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX400_MH125
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX400_MH125
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX400_MH125_2017_*_cat34FH*.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX400_MH125_2017_*_cat34SL*.txt .
combineCards.py  cat34SLlowpurity=Datacard_MX400_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX400_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX400_MH125_2017_cat34SL.txt
combineCards.py  cat34FHhowpurity=Datacard_MX400_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX400_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX400_MH125_2017_cat34FH.txt
combineCards.py  cat34FH=Datacard_MX400_MH125_2017_cat34FH.txt cat34SL=Datacard_MX400_MH125_2017_cat34SL.txt > Datacard_MX400_MH125_2017_cat34.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX400_MH125_2017_cat34*.txt
text2workspace.py Datacard_MX400_MH125_2017_cat34.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX400_MH125_2017_cat34 -d Datacard_MX400_MH125_2017_cat34.root
# combine -M AsymptoticLimits -m 125 -n MX400_MH125_2017_cat34FH -d Datacard_MX400_MH125_2017_cat34FH.txt
# combine -M AsymptoticLimits -m 125 -n MX400_MH125_2017_cat34SL -d Datacard_MX400_MH125_2017_cat34SL.txt
echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX450_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX450_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX450_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX450_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX450_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX450_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX450_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX450_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX450_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX450_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX450_MH125_2017_cat34FH.txt cat34SL=Datacard_MX450_MH125_2017_cat34SL.txt > Datacard_MX450_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX450_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX450_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX450_MH125_2017_cat34 -d Datacard_MX450_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX450_MH125_2017_cat34FH -d Datacard_MX450_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX450_MH125_2017_cat34SL -d Datacard_MX450_MH125_2017_cat34SL.txt
# echo "done"

mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX500_MH125
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX500_MH125
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX500_MH125_2017_*_cat34FH*.txt .
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX500_MH125_2017_*_cat34SL*.txt .
combineCards.py  cat34SLlowpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX500_MH125_2017_cat34SL.txt
combineCards.py  cat34FHhowpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX500_MH125_2017_cat34FH.txt
combineCards.py  cat34FH=Datacard_MX500_MH125_2017_cat34FH.txt cat34SL=Datacard_MX500_MH125_2017_cat34SL.txt > Datacard_MX500_MH125_2017_cat34.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX500_MH125_2017_cat34*.txt
text2workspace.py Datacard_MX500_MH125_2017_cat34.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017_cat34 -d Datacard_MX500_MH125_2017_cat34.root
# combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017_cat34FH -d Datacard_MX500_MH125_2017_cat34FH.txt
# combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017_cat34SL -d Datacard_MX500_MH125_2017_cat34SL.txt
echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX550_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX550_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX550_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX550_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX550_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX550_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX550_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX550_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX550_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX550_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX550_MH125_2017_cat34FH.txt cat34SL=Datacard_MX550_MH125_2017_cat34SL.txt > Datacard_MX550_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX550_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX550_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX550_MH125_2017_cat34 -d Datacard_MX550_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX550_MH125_2017_cat34FH -d Datacard_MX550_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX550_MH125_2017_cat34SL -d Datacard_MX550_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX600_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX600_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX600_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX600_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX600_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX600_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX600_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX600_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX600_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX600_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX600_MH125_2017_cat34FH.txt cat34SL=Datacard_MX600_MH125_2017_cat34SL.txt > Datacard_MX600_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX600_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX600_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX600_MH125_2017_cat34 -d Datacard_MX600_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX600_MH125_2017_cat34FH -d Datacard_MX600_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX600_MH125_2017_cat34SL -d Datacard_MX600_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX650_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX650_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX650_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX650_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX650_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX650_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX650_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX650_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX650_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX650_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX650_MH125_2017_cat34FH.txt cat34SL=Datacard_MX650_MH125_2017_cat34SL.txt > Datacard_MX650_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX650_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX650_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX650_MH125_2017_cat34 -d Datacard_MX650_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX650_MH125_2017_cat34FH -d Datacard_MX650_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX650_MH125_2017_cat34SL -d Datacard_MX650_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX700_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX700_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX700_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX700_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX700_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX700_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX700_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX700_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX700_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX700_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX700_MH125_2017_cat34FH.txt cat34SL=Datacard_MX700_MH125_2017_cat34SL.txt > Datacard_MX700_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX700_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX700_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX700_MH125_2017_cat34 -d Datacard_MX700_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX700_MH125_2017_cat34FH -d Datacard_MX700_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX700_MH125_2017_cat34SL -d Datacard_MX700_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX750_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX750_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX750_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX750_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX750_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX750_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX750_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX750_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX750_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX750_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX750_MH125_2017_cat34FH.txt cat34SL=Datacard_MX750_MH125_2017_cat34SL.txt > Datacard_MX750_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX750_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX750_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX750_MH125_2017_cat34 -d Datacard_MX750_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX750_MH125_2017_cat34FH -d Datacard_MX750_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX750_MH125_2017_cat34SL -d Datacard_MX750_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX800_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX800_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX800_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX800_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX800_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX800_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX800_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX800_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX800_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX800_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX800_MH125_2017_cat34FH.txt cat34SL=Datacard_MX800_MH125_2017_cat34SL.txt > Datacard_MX800_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX800_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX800_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX800_MH125_2017_cat34 -d Datacard_MX800_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX800_MH125_2017_cat34FH -d Datacard_MX800_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX800_MH125_2017_cat34SL -d Datacard_MX800_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX850_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX850_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX850_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX850_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX850_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX850_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX850_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX850_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX850_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX850_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX850_MH125_2017_cat34FH.txt cat34SL=Datacard_MX850_MH125_2017_cat34SL.txt > Datacard_MX850_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX850_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX850_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX850_MH125_2017_cat34 -d Datacard_MX850_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX850_MH125_2017_cat34FH -d Datacard_MX850_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX850_MH125_2017_cat34SL -d Datacard_MX850_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX900_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX900_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX900_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX900_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX900_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX900_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX900_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX900_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX900_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX900_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX900_MH125_2017_cat34FH.txt cat34SL=Datacard_MX900_MH125_2017_cat34SL.txt > Datacard_MX900_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX900_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX900_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX900_MH125_2017_cat34 -d Datacard_MX900_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX900_MH125_2017_cat34FH -d Datacard_MX900_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX900_MH125_2017_cat34SL -d Datacard_MX900_MH125_2017_cat34SL.txt
# echo "done"

# mkdir /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX1000_MH125
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX1000_MH125
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX1000_MH125_2017_*_cat34FH*.txt .
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/Datacard_MX1000_MH125_2017_*_cat34SL*.txt .
# combineCards.py  cat34SLlowpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX1000_MH125_2017_cat34SL.txt
# combineCards.py  cat34FHhowpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX1000_MH125_2017_cat34FH.txt
# combineCards.py  cat34FH=Datacard_MX1000_MH125_2017_cat34FH.txt cat34SL=Datacard_MX1000_MH125_2017_cat34SL.txt > Datacard_MX1000_MH125_2017_cat34.txt
# sed -i 's/hgg 2 /hgg 200/g' Datacard_MX1000_MH125_2017_cat34*.txt
# text2workspace.py Datacard_MX1000_MH125_2017_cat34.txt -m 125
# combine -M AsymptoticLimits -m 125 -n MX1000_MH125_2017_cat34 -d Datacard_MX1000_MH125_2017_cat34.root
# # combine -M AsymptoticLimits -m 125 -n MX1000_MH125_2017_cat34FH -d Datacard_MX1000_MH125_2017_cat34FH.txt
# # combine -M AsymptoticLimits -m 125 -n MX1000_MH125_2017_cat34SL -d Datacard_MX1000_MH125_2017_cat34SL.txt
# echo "done"


#second step, after run the jupyter notebook, run the following command to get combine bbgg zzgg wwgg limit
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX250_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX250_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX250_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX250_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX250_MH125_cat34FHhighpurity.txt  > Datacard_MX250_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX250_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX250_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX250_MH125_2017_cat34all -d Datacard_MX250_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX260_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX260_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX260_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX260_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX260_MH125_cat34FHhighpurity.txt  > Datacard_MX260_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX260_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX260_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX260_MH125_2017_cat34all -d Datacard_MX260_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX270_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX270_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX270_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX270_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX270_MH125_cat34FHhighpurity.txt  > Datacard_MX270_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX270_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX270_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX270_MH125_2017_cat34all -d Datacard_MX270_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX280_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX280_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX280_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX280_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX280_MH125_cat34FHhighpurity.txt  > Datacard_MX280_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX280_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX280_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX280_MH125_2017_cat34all -d Datacard_MX280_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX300_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX300_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX300_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX300_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX300_MH125_cat34FHhighpurity.txt  > Datacard_MX300_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX300_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX300_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX300_MH125_2017_cat34all -d Datacard_MX300_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX320_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX320_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX320_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX320_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX320_MH125_cat34FHhighpurity.txt  > Datacard_MX320_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX320_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX320_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX320_MH125_2017_cat34all -d Datacard_MX320_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX350_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX350_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX350_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX350_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX350_MH125_cat34FHhighpurity.txt  > Datacard_MX350_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX350_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX350_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX350_MH125_2017_cat34all -d Datacard_MX350_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX400_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX400_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX400_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX400_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX400_MH125_cat34FHhighpurity.txt  > Datacard_MX400_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX400_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX400_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX400_MH125_2017_cat34all -d Datacard_MX400_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX450_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX450_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX450_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX450_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX450_MH125_cat34FHhighpurity.txt  > Datacard_MX450_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX450_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX450_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX450_MH125_2017_cat34all -d Datacard_MX450_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX500_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX500_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX500_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX500_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX500_MH125_cat34FHhighpurity.txt  > Datacard_MX500_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX500_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX500_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017_cat34all -d Datacard_MX500_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX550_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX550_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX550_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX550_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX550_MH125_cat34FHhighpurity.txt  > Datacard_MX550_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX550_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX550_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX550_MH125_2017_cat34all -d Datacard_MX550_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX600_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX600_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX600_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX600_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX600_MH125_cat34FHhighpurity.txt  > Datacard_MX600_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX600_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX600_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX600_MH125_2017_cat34all -d Datacard_MX600_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX650_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX650_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX650_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX650_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX650_MH125_cat34FHhighpurity.txt  > Datacard_MX650_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX650_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX650_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX650_MH125_2017_cat34all -d Datacard_MX650_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX700_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX700_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX700_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX700_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX700_MH125_cat34FHhighpurity.txt  > Datacard_MX700_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX700_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX700_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX700_MH125_2017_cat34all -d Datacard_MX700_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX750_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX750_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX750_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX750_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX750_MH125_cat34FHhighpurity.txt  > Datacard_MX750_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX750_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX750_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX750_MH125_2017_cat34all -d Datacard_MX750_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX800_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX800_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX800_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX800_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX800_MH125_cat34FHhighpurity.txt  > Datacard_MX800_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX800_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX800_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX800_MH125_2017_cat34all -d Datacard_MX800_MH125_2017_cat34all.root


cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX850_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX850_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX850_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX850_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX850_MH125_cat34FHhighpurity.txt  > Datacard_MX850_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX850_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX850_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX850_MH125_2017_cat34all -d Datacard_MX850_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX900_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX900_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX900_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX900_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX900_MH125_cat34FHhighpurity.txt  > Datacard_MX900_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX900_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX900_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX900_MH125_2017_cat34all -d Datacard_MX900_MH125_2017_cat34all.root

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/split/2017fixbbgg/MX1000_MH125
combineCards.py  cat34SLlowpurityall=Datacard_MX1000_MH125_cat34SLlowpurity.txt cat34SLhighpurityall=Datacard_MX1000_MH125_cat34SLhighpurity.txt cat34FHlowpurityall=Datacard_MX1000_MH125_cat34FHlowpurity.txt cat34FHhighpurityall=Datacard_MX1000_MH125_cat34FHhighpurity.txt  > Datacard_MX1000_MH125_2017_cat34all.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX1000_MH125_2017_cat34all.txt
text2workspace.py Datacard_MX1000_MH125_2017_cat34all.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX1000_MH125_2017_cat34all -d Datacard_MX1000_MH125_2017_cat34all.root









combineCards.py  cat34SLlowpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX500_MH125_2017_cat34SL.txt
combineCards.py  cat34FHhowpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX500_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX500_MH125_2017_cat34FH.txt
combineCards.py  cat34FH=Datacard_MX500_MH125_2017_cat34FH.txt cat34SL=Datacard_MX500_MH125_2017_cat34SL.txt > Datacard_MX500_MH125_2017_cat34.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX500_MH125_2017_cat34*.txt
text2workspace.py Datacard_MX500_MH125_2017_cat34.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017_cat34 -d Datacard_MX500_MH125_2017_cat34.root

combineCards.py  cat34SLlowpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX250_MH125_2017_cat34SL.txt
combineCards.py  cat34FHhowpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX250_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX250_MH125_2017_cat34FH.txt
combineCards.py  cat34FH=Datacard_MX250_MH125_2017_cat34FH.txt cat34SL=Datacard_MX250_MH125_2017_cat34SL.txt > Datacard_MX250_MH125_2017_cat34.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX250_MH125_2017_cat34*.txt
text2workspace.py Datacard_MX250_MH125_2017_cat34.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX250_MH125_2017_cat34 -d Datacard_MX250_MH125_2017_cat34.root

combineCards.py  cat34SLlowpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34SLlowpurity.txt cat34SLhighpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34SLhighpurity.txt > Datacard_MX1000_MH125_2017_cat34SL.txt
combineCards.py  cat34FHhowpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34FHlowpurity.txt cat34FHhighpurity=Datacard_MX1000_MH125_2017_combineFHSL_cat34FHhighpurity.txt > Datacard_MX1000_MH125_2017_cat34FH.txt
combineCards.py  cat34FH=Datacard_MX1000_MH125_2017_cat34FH.txt cat34SL=Datacard_MX1000_MH125_2017_cat34SL.txt > Datacard_MX1000_MH125_2017_cat34.txt
sed -i 's/hgg 2 /hgg 200/g' Datacard_MX1000_MH125_2017_cat34*.txt
text2workspace.py Datacard_MX1000_MH125_2017_cat34.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX1000_MH125_2017_cat34 -d Datacard_MX1000_MH125_2017_cat34.root


