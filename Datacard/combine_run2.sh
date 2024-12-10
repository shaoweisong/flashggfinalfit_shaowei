
# # # mkdir run2datacard
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard

# # # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX250_MH125/Datacard_MX250_MH125_2016pre_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX250_MH125/Datacard_MX250_MH125_2016post_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX250_MH125/Datacard_MX250_MH125_2017_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # # sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX250_MH125_2017_cat34.txt
# # # sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX250_MH125_2017_cat34.txt
# # # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX250_MH125/Datacard_MX250_MH125_2018_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # # sed -i 's/100000  /1000  /g' Datacard_MX250*.txt
# # # combineCards.py  cat34_MX250_MH125_16pre=Datacard_MX250_MH125_2016pre_cat34.txt cat34_MX250_MH125_16post=Datacard_MX250_MH125_2016post_cat34.txt cat34_MX250_MH125_17=Datacard_MX250_MH125_2017_cat34.txt cat34_MX250_MH125_18=Datacard_MX250_MH125_2018_cat34.txt > Datacard_MX250_MH125_run2_cat34.txt
# # # combine -M AsymptoticLimits -m 125 -n cat34_MX250_MH125_run2 -d Datacard_MX250_MH125_run2_cat34.txt --run expected --freezeParameters allConstrainedNuisances
# # # echo "MX250 done"

# # for mass in 250 260 280 300 320 350 400 450
# # do
# #     cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX${mass}_MH125/Datacard_MX${mass}_MH125_2016pre_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# #     cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX${mass}_MH125/Datacard_MX${mass}_MH125_2016post_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# #     cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX${mass}_MH125/Datacard_MX${mass}_MH125_2017_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# #     sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX${mass}_MH125_2017_cat34.txt
# #     sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX${mass}_MH125_2017_cat34.txt
# #     cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX${mass}_MH125/Datacard_MX${mass}_MH125_2018_cat34.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# #     sed -i 's/100000  /1000  /g' Datacard_MX${mass}*.txt
# #     combineCards.py  cat34_MX${mass}_MH125_16pre=Datacard_MX${mass}_MH125_2016pre_cat34.txt cat34_MX${mass}_MH125_16post=Datacard_MX${mass}_MH125_2016post_cat34.txt cat34_MX${mass}_MH125_17=Datacard_MX${mass}_MH125_2017_cat34.txt cat34_MX${mass}_MH125_18=Datacard_MX${mass}_MH125_2018_cat34.txt > Datacard_MX${mass}_MH125_run2_cat34.txt
# #     combine -M AsymptoticLimits -m 125 -n cat34_MX${mass}_MH125_run2 -d Datacard_MX${mass}_MH125_run2_cat34.txt --run expected --freezeParameters allConstrainedNuisances
# #     echo "MX${mass} done"
# # done

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX500_MH125/Datacard_MX500_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX500_MH125/Datacard_MX500_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX500_MH125/Datacard_MX500_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX500_MH125_2017_cat1234.txt
# sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX500_MH125_2017_cat1234.txt
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX500_MH125/Datacard_MX500_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/100000  /1000  /g' Datacard_MX500*.txt
# combineCards.py  cat1234_MX500_MH125_16pre=Datacard_MX500_MH125_2016pre_cat1234.txt cat1234_MX500_MH125_16post=Datacard_MX500_MH125_2016post_cat1234.txt cat1234_MX500_MH125_17=Datacard_MX500_MH125_2017_cat1234.txt cat1234_MX500_MH125_18=Datacard_MX500_MH125_2018_cat1234.txt > Datacard_MX500_MH125_run2_cat1234.txt
# combine -M AsymptoticLimits -m 125 -n cat1234_MX500_MH125_run2 -d Datacard_MX500_MH125_run2_cat1234.txt --run expected --freezeParameters allConstrainedNuisances
# echo "MX500 done"

# # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX550_MH125/Datacard_MX550_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX550_MH125/Datacard_MX550_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX550_MH125/Datacard_MX550_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX550_MH125_2017_cat1234.txt
# # sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX550_MH125_2017_cat1234.txt
# # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX550_MH125/Datacard_MX550_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # sed -i 's/100000  /1000  /g' Datacard_MX550*.txt
# # combineCards.py  cat1234_MX550_MH125_16pre=Datacard_MX550_MH125_2016pre_cat1234.txt cat1234_MX550_MH125_16post=Datacard_MX550_MH125_2016post_cat1234.txt cat1234_MX550_MH125_17=Datacard_MX550_MH125_2017_cat1234.txt cat1234_MX550_MH125_18=Datacard_MX550_MH125_2018_cat1234.txt > Datacard_MX550_MH125_run2_cat1234.txt
# # combine -M AsymptoticLimits -m 125 -n cat1234_MX550_MH125_run2 -d Datacard_MX550_MH125_run2_cat1234.txt --run expected --freezeParameters allConstrainedNuisances
# # echo "MX550 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX600_MH125/Datacard_MX600_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX600_MH125/Datacard_MX600_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX600_MH125/Datacard_MX600_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX600_MH125_2017_cat1234.txt
# sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX600_MH125_2017_cat1234.txt
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX600_MH125/Datacard_MX600_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/100000  /1000  /g' Datacard_MX600*.txt
# combineCards.py  cat1234_MX600_MH125_16pre=Datacard_MX600_MH125_2016pre_cat1234.txt cat1234_MX600_MH125_16post=Datacard_MX600_MH125_2016post_cat1234.txt cat1234_MX600_MH125_17=Datacard_MX600_MH125_2017_cat1234.txt cat1234_MX600_MH125_18=Datacard_MX600_MH125_2018_cat1234.txt > Datacard_MX600_MH125_run2_cat1234.txt
# combine -M AsymptoticLimits -m 125 -n cat1234_MX600_MH125_run2 -d Datacard_MX600_MH125_run2_cat1234.txt --run expected --freezeParameters allConstrainedNuisances
# echo "MX600 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX650_MH125/Datacard_MX650_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX650_MH125/Datacard_MX650_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX650_MH125/Datacard_MX650_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX650_MH125_2017_cat1234.txt
# sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX650_MH125_2017_cat1234.txt
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX650_MH125/Datacard_MX650_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/100000  /1000  /g' Datacard_MX650*.txt
# combineCards.py  cat1234_MX650_MH125_16pre=Datacard_MX650_MH125_2016pre_cat1234.txt cat1234_MX650_MH125_16post=Datacard_MX650_MH125_2016post_cat1234.txt cat1234_MX650_MH125_17=Datacard_MX650_MH125_2017_cat1234.txt cat1234_MX650_MH125_18=Datacard_MX650_MH125_2018_cat1234.txt > Datacard_MX650_MH125_run2_cat1234.txt
# combine -M AsymptoticLimits -m 125 -n cat1234_MX650_MH125_run2 -d Datacard_MX650_MH125_run2_cat1234.txt --run expected --freezeParameters allConstrainedNuisances
# echo "MX650 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX700_MH125/Datacard_MX700_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX700_MH125/Datacard_MX700_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX700_MH125/Datacard_MX700_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX700_MH125_2017_cat1234.txt
# sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX700_MH125_2017_cat1234.txt
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX700_MH125/Datacard_MX700_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/100000  /1000  /g' Datacard_MX700*.txt
# combineCards.py  cat1234_MX700_MH125_16pre=Datacard_MX700_MH125_2016pre_cat1234.txt cat1234_MX700_MH125_16post=Datacard_MX700_MH125_2016post_cat1234.txt cat1234_MX700_MH125_17=Datacard_MX700_MH125_2017_cat1234.txt cat1234_MX700_MH125_18=Datacard_MX700_MH125_2018_cat1234.txt > Datacard_MX700_MH125_run2_cat1234.txt
# combine -M AsymptoticLimits -m 125 -n cat1234_MX700_MH125_run2 -d Datacard_MX700_MH125_run2_cat1234.txt --run expected --freezeParameters allConstrainedNuisances
# echo "MX700 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX750_MH125/Datacard_MX750_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX750_MH125/Datacard_MX750_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX750_MH125/Datacard_MX750_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX750_MH125_2017_cat1234.txt
# sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX750_MH125_2017_cat1234.txt
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX750_MH125/Datacard_MX750_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/100000  /1000  /g' Datacard_MX750*.txt
# combineCards.py  cat1234_MX750_MH125_16pre=Datacard_MX750_MH125_2016pre_cat1234.txt cat1234_MX750_MH125_16post=Datacard_MX750_MH125_2016post_cat1234.txt cat1234_MX750_MH125_17=Datacard_MX750_MH125_2017_cat1234.txt cat1234_MX750_MH125_18=Datacard_MX750_MH125_2018_cat1234.txt > Datacard_MX750_MH125_run2_cat1234.txt
# combine -M AsymptoticLimits -m 125 -n cat1234_MX750_MH125_run2 -d Datacard_MX750_MH125_run2_cat1234.txt --run expected --freezeParameters allConstrainedNuisances
# echo "MX750 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX800_MH125/Datacard_MX800_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX800_MH125/Datacard_MX800_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX800_MH125/Datacard_MX800_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX800_MH125_2017_cat1234.txt
# sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX800_MH125_2017_cat1234.txt
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX800_MH125/Datacard_MX800_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/100000  /1000  /g' Datacard_MX800*.txt
# combineCards.py  cat1234_MX800_MH125_16pre=Datacard_MX800_MH125_2016pre_cat1234.txt cat1234_MX800_MH125_16post=Datacard_MX800_MH125_2016post_cat1234.txt cat1234_MX800_MH125_17=Datacard_MX800_MH125_2017_cat1234.txt cat1234_MX800_MH125_18=Datacard_MX800_MH125_2018_cat1234.txt > Datacard_MX800_MH125_run2_cat1234.txt
# combine -M AsymptoticLimits -m 125 -n cat1234_MX800_MH125_run2 -d Datacard_MX800_MH125_run2_cat1234.txt --run expected --freezeParameters allConstrainedNuisances
# echo "MX800 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX850_MH125/Datacard_MX850_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX850_MH125/Datacard_MX850_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX850_MH125/Datacard_MX850_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX850_MH125_2017_cat1234.txt
# sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX850_MH125_2017_cat1234.txt
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX850_MH125/Datacard_MX850_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/100000  /1000  /g' Datacard_MX850*.txt
# combineCards.py  cat1234_MX850_MH125_16pre=Datacard_MX850_MH125_2016pre_cat1234.txt cat1234_MX850_MH125_16post=Datacard_MX850_MH125_2016post_cat1234.txt cat1234_MX850_MH125_17=Datacard_MX850_MH125_2017_cat1234.txt cat1234_MX850_MH125_18=Datacard_MX850_MH125_2018_cat1234.txt > Datacard_MX850_MH125_run2_cat1234.txt
# combine -M AsymptoticLimits -m 125 -n cat1234_MX850_MH125_run2 -d Datacard_MX850_MH125_run2_cat1234.txt --run expected --freezeParameters allConstrainedNuisances
# echo "MX850 done"

# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1000_MH125/Datacard_MX1000_MH125_2016pre_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1000_MH125/Datacard_MX1000_MH125_2016post_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1000_MH125/Datacard_MX1000_MH125_2017_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/2017_hgg 200 /2017_hgg 2 /g' Datacard_MX1000_MH125_2017_cat1234.txt
# sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX1000_MH125_2017_cat1234.txt
# cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1000_MH125/Datacard_MX1000_MH125_2018_cat1234.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/100000  /1000  /g' Datacard_MX1000*.txt
# combineCards.py  cat1234_MX1000_MH125_16pre=Datacard_MX1000_MH125_2016pre_cat1234.txt cat1234_MX1000_MH125_16post=Datacard_MX1000_MH125_2016post_cat1234.txt cat1234_MX1000_MH125_17=Datacard_MX1000_MH125_2017_cat1234.txt cat1234_MX1000_MH125_18=Datacard_MX1000_MH125_2018_cat1234.txt > Datacard_MX1000_MH125_run2_cat1234.txt
# combine -M AsymptoticLimits -m 125 -n cat1234_MX1000_MH125_run2 -d Datacard_MX1000_MH125_run2_cat1234.txt --run expected --freezeParameters allConstrainedNuisances
# echo "MX1000 done"

# # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1100_MH125/Datacard_MX1100_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1100_MH125/Datacard_MX1100_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1100_MH125/Datacard_MX1100_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX1100_MH125_2017_cat12.txt
# # sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX1100_MH125_2017_cat12.txt
# # cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1100_MH125/Datacard_MX1100_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# # sed -i 's/100000  /1000  /g' Datacard_MX1100*.txt
# # combineCards.py  cat12_MX1100_MH125_16pre=Datacard_MX1100_MH125_2016pre_cat12.txt cat12_MX1100_MH125_16post=Datacard_MX1100_MH125_2016post_cat12.txt cat12_MX1100_MH125_17=Datacard_MX1100_MH125_2017_cat12.txt cat12_MX1100_MH125_18=Datacard_MX1100_MH125_2018_cat12.txt > Datacard_MX1100_MH125_run2_cat12.txt
# # combine -M AsymptoticLimits -m 125 -n cat12_MX1100_MH125_run2 -d Datacard_MX1100_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
# # echo "MX1100 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1200_MH125/Datacard_MX1200_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1200_MH125/Datacard_MX1200_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1200_MH125/Datacard_MX1200_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX1200_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX1200_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1200_MH125/Datacard_MX1200_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX1200*.txt
combineCards.py  cat12_MX1200_MH125_16pre=Datacard_MX1200_MH125_2016pre_cat12.txt cat12_MX1200_MH125_16post=Datacard_MX1200_MH125_2016post_cat12.txt cat12_MX1200_MH125_17=Datacard_MX1200_MH125_2017_cat12.txt cat12_MX1200_MH125_18=Datacard_MX1200_MH125_2018_cat12.txt > Datacard_MX1200_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX1200_MH125_run2 -d Datacard_MX1200_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX1200 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1300_MH125/Datacard_MX1300_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1300_MH125/Datacard_MX1300_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1300_MH125/Datacard_MX1300_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX1300_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX1300_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1300_MH125/Datacard_MX1300_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX1300*.txt
combineCards.py  cat12_MX1300_MH125_16pre=Datacard_MX1300_MH125_2016pre_cat12.txt cat12_MX1300_MH125_16post=Datacard_MX1300_MH125_2016post_cat12.txt cat12_MX1300_MH125_17=Datacard_MX1300_MH125_2017_cat12.txt cat12_MX1300_MH125_18=Datacard_MX1300_MH125_2018_cat12.txt > Datacard_MX1300_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX1300_MH125_run2 -d Datacard_MX1300_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX1300 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1400_MH125/Datacard_MX1400_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1400_MH125/Datacard_MX1400_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1400_MH125/Datacard_MX1400_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX1400_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX1400_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1400_MH125/Datacard_MX1400_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX1400*.txt
combineCards.py  cat12_MX1400_MH125_16pre=Datacard_MX1400_MH125_2016pre_cat12.txt cat12_MX1400_MH125_16post=Datacard_MX1400_MH125_2016post_cat12.txt cat12_MX1400_MH125_17=Datacard_MX1400_MH125_2017_cat12.txt cat12_MX1400_MH125_18=Datacard_MX1400_MH125_2018_cat12.txt > Datacard_MX1400_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX1400_MH125_run2 -d Datacard_MX1400_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX1400 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1500_MH125/Datacard_MX1500_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1500_MH125/Datacard_MX1500_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1500_MH125/Datacard_MX1500_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX1500_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX1500_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1500_MH125/Datacard_MX1500_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX1500*.txt
combineCards.py  cat12_MX1500_MH125_16pre=Datacard_MX1500_MH125_2016pre_cat12.txt cat12_MX1500_MH125_16post=Datacard_MX1500_MH125_2016post_cat12.txt cat12_MX1500_MH125_17=Datacard_MX1500_MH125_2017_cat12.txt cat12_MX1500_MH125_18=Datacard_MX1500_MH125_2018_cat12.txt > Datacard_MX1500_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX1500_MH125_run2 -d Datacard_MX1500_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX1500 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1600_MH125/Datacard_MX1600_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1600_MH125/Datacard_MX1600_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1600_MH125/Datacard_MX1600_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX1600_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX1600_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1600_MH125/Datacard_MX1600_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX1600*.txt
combineCards.py  cat12_MX1600_MH125_16pre=Datacard_MX1600_MH125_2016pre_cat12.txt cat12_MX1600_MH125_16post=Datacard_MX1600_MH125_2016post_cat12.txt cat12_MX1600_MH125_17=Datacard_MX1600_MH125_2017_cat12.txt cat12_MX1600_MH125_18=Datacard_MX1600_MH125_2018_cat12.txt > Datacard_MX1600_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX1600_MH125_run2 -d Datacard_MX1600_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX1600 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1700_MH125/Datacard_MX1700_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1700_MH125/Datacard_MX1700_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1700_MH125/Datacard_MX1700_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX1700_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX1700_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1700_MH125/Datacard_MX1700_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX1700*.txt
combineCards.py  cat12_MX1700_MH125_16pre=Datacard_MX1700_MH125_2016pre_cat12.txt cat12_MX1700_MH125_16post=Datacard_MX1700_MH125_2016post_cat12.txt cat12_MX1700_MH125_17=Datacard_MX1700_MH125_2017_cat12.txt cat12_MX1700_MH125_18=Datacard_MX1700_MH125_2018_cat12.txt > Datacard_MX1700_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX1700_MH125_run2 -d Datacard_MX1700_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX1700 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1800_MH125/Datacard_MX1800_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1800_MH125/Datacard_MX1800_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1800_MH125/Datacard_MX1800_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX1800_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX1800_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1800_MH125/Datacard_MX1800_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX1800*.txt
combineCards.py  cat12_MX1800_MH125_16pre=Datacard_MX1800_MH125_2016pre_cat12.txt cat12_MX1800_MH125_16post=Datacard_MX1800_MH125_2016post_cat12.txt cat12_MX1800_MH125_17=Datacard_MX1800_MH125_2017_cat12.txt cat12_MX1800_MH125_18=Datacard_MX1800_MH125_2018_cat12.txt > Datacard_MX1800_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX1800_MH125_run2 -d Datacard_MX1800_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX1800 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX1900_MH125/Datacard_MX1900_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX1900_MH125/Datacard_MX1900_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX1900_MH125/Datacard_MX1900_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX1900_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX1900_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX1900_MH125/Datacard_MX1900_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX1900*.txt
combineCards.py  cat12_MX1900_MH125_16pre=Datacard_MX1900_MH125_2016pre_cat12.txt cat12_MX1900_MH125_16post=Datacard_MX1900_MH125_2016post_cat12.txt cat12_MX1900_MH125_17=Datacard_MX1900_MH125_2017_cat12.txt cat12_MX1900_MH125_18=Datacard_MX1900_MH125_2018_cat12.txt > Datacard_MX1900_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX1900_MH125_run2 -d Datacard_MX1900_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX1900 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2000_MH125/Datacard_MX2000_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2000_MH125/Datacard_MX2000_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2000_MH125/Datacard_MX2000_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX2000_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX2000_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2000_MH125/Datacard_MX2000_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX2000*.txt
combineCards.py  cat12_MX2000_MH125_16pre=Datacard_MX2000_MH125_2016pre_cat12.txt cat12_MX2000_MH125_16post=Datacard_MX2000_MH125_2016post_cat12.txt cat12_MX2000_MH125_17=Datacard_MX2000_MH125_2017_cat12.txt cat12_MX2000_MH125_18=Datacard_MX2000_MH125_2018_cat12.txt > Datacard_MX2000_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX2000_MH125_run2 -d Datacard_MX2000_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX2000 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2200_MH125/Datacard_MX2200_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2200_MH125/Datacard_MX2200_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2200_MH125/Datacard_MX2200_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX2200_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX2200_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2200_MH125/Datacard_MX2200_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX2200*.txt
combineCards.py  cat12_MX2200_MH125_16pre=Datacard_MX2200_MH125_2016pre_cat12.txt cat12_MX2200_MH125_16post=Datacard_MX2200_MH125_2016post_cat12.txt cat12_MX2200_MH125_17=Datacard_MX2200_MH125_2017_cat12.txt cat12_MX2200_MH125_18=Datacard_MX2200_MH125_2018_cat12.txt > Datacard_MX2200_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX2200_MH125_run2 -d Datacard_MX2200_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX2200 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2400_MH125/Datacard_MX2400_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2400_MH125/Datacard_MX2400_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2400_MH125/Datacard_MX2400_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX2400_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX2400_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2400_MH125/Datacard_MX2400_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX2400*.txt
combineCards.py  cat12_MX2400_MH125_16pre=Datacard_MX2400_MH125_2016pre_cat12.txt cat12_MX2400_MH125_16post=Datacard_MX2400_MH125_2016post_cat12.txt cat12_MX2400_MH125_17=Datacard_MX2400_MH125_2017_cat12.txt cat12_MX2400_MH125_18=Datacard_MX2400_MH125_2018_cat12.txt > Datacard_MX2400_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX2400_MH125_run2 -d Datacard_MX2400_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX2400 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2600_MH125/Datacard_MX2600_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2600_MH125/Datacard_MX2600_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2600_MH125/Datacard_MX2600_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX2600_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX2600_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2600_MH125/Datacard_MX2600_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX2600*.txt
combineCards.py  cat12_MX2600_MH125_16pre=Datacard_MX2600_MH125_2016pre_cat12.txt cat12_MX2600_MH125_16post=Datacard_MX2600_MH125_2016post_cat12.txt cat12_MX2600_MH125_17=Datacard_MX2600_MH125_2017_cat12.txt cat12_MX2600_MH125_18=Datacard_MX2600_MH125_2018_cat12.txt > Datacard_MX2600_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX2600_MH125_run2 -d Datacard_MX2600_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX2600 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX2800_MH125/Datacard_MX2800_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX2800_MH125/Datacard_MX2800_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX2800_MH125/Datacard_MX2800_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX2800_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX2800_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX2800_MH125/Datacard_MX2800_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX2800*.txt
combineCards.py  cat12_MX2800_MH125_16pre=Datacard_MX2800_MH125_2016pre_cat12.txt cat12_MX2800_MH125_16post=Datacard_MX2800_MH125_2016post_cat12.txt cat12_MX2800_MH125_17=Datacard_MX2800_MH125_2017_cat12.txt cat12_MX2800_MH125_18=Datacard_MX2800_MH125_2018_cat12.txt > Datacard_MX2800_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX2800_MH125_run2 -d Datacard_MX2800_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX2800 done"

cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard/datacard_MX3000_MH125/Datacard_MX3000_MH125_2016pre_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard/datacard_MX3000_MH125/Datacard_MX3000_MH125_2016post_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard/datacard_MX3000_MH125/Datacard_MX3000_MH125_2017_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
# sed -i 's/2017_hgg 2 /2017_hgg 0.02 /g' Datacard_MX3000_MH125_2017_cat12.txt
sed -i 's/CMS_wwgg_br_HH_WWgg/CMS_wwgg_br_HH_WWgg_2017/g' Datacard_MX3000_MH125_2017_cat12.txt
cp /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2018datacard/datacard_MX3000_MH125/Datacard_MX3000_MH125_2018_cat12.txt /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/run2datacard
sed -i 's/100000  /1000  /g' Datacard_MX3000*.txt
combineCards.py  cat12_MX3000_MH125_16pre=Datacard_MX3000_MH125_2016pre_cat12.txt cat12_MX3000_MH125_16post=Datacard_MX3000_MH125_2016post_cat12.txt cat12_MX3000_MH125_17=Datacard_MX3000_MH125_2017_cat12.txt cat12_MX3000_MH125_18=Datacard_MX3000_MH125_2018_cat12.txt > Datacard_MX3000_MH125_run2_cat12.txt
combine -M AsymptoticLimits -m 125 -n cat12_MX3000_MH125_run2 -d Datacard_MX3000_MH125_run2_cat12.txt --run expected --freezeParameters allConstrainedNuisances
echo "MX3000 done"
