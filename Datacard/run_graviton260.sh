# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34FHlowpurity/
# python RunYields_18resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_2018_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX250_MH125_2018_cat34FHlowpurity
# python makeDatacard_18resolved_combined.py --years 2018 --doSystematics --prune --ext MX250_MH125_2018_cat34FHlowpurity --output MX250_MH125_2018_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX250_MH125_2018_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2018_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2018_cat34FHlowpurity.txt'
# done
# sed -i 's/2018=//g' MX250_MH125_2018_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34FHlowpurity
# text2workspace.py MX250_MH125_2018_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34FHhighpurity/
# python RunYields_18resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH,gghhVH --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_2018_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX250_MH125_2018_cat34FHhighpurity
# python makeDatacard_18resolved_combined.py --years 2018 --doSystematics --prune --ext MX250_MH125_2018_cat34FHhighpurity --output MX250_MH125_2018_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX250_MH125_2018_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2018_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2018_cat34FHhighpurity.txt'
# done
# sed -i 's/2018=//g' MX250_MH125_2018_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34FHhighpurity
# text2workspace.py MX250_MH125_2018_cat34FHhighpurity.txt -m 125 
 
# cp Datacard_MX250_MH125_2018_wwgg_cat34SLhighpurity.txt MX250_MH125_2018_cat34SLhighpurity.txt
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34SLlowpurity/
# python RunYields_18resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34SLlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_2018_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX250_MH125_2018_cat34SLlowpurity
# python makeDatacard_18resolved_combined.py --years 2018 --doSystematics --prune --ext MX250_MH125_2018_cat34SLlowpurity --output MX250_MH125_2018_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX250_MH125_2018_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2018_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2018_cat34SLlowpurity.txt'
# done
# sed -i 's/2018=//g' MX250_MH125_2018_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX250_MH125/ws_gghhcombine_MX250_MH125_2018_cat34SLlowpurity
# text2workspace.py MX250_MH125_2018_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2018=MX250_MH125_2018_cat34SLlowpurity.txt cat34SLhighpurity_2018=MX250_MH125_2018_cat34SLhighpurity.txt cat34FHlowpurity_2018=MX250_MH125_2018_cat34FHlowpurity.txt cat34FHhighpurity_2018=MX250_MH125_2018_cat34FHhighpurity.txt > MX250_MH125_2018_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX250_MH125_2018_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34FHlowpurity/
# python RunYields_18resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_2018_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX260_MH125_2018_cat34FHlowpurity
# python makeDatacard_18resolved_combined.py --years 2018 --doSystematics --prune --ext MX260_MH125_2018_cat34FHlowpurity --output MX260_MH125_2018_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX260_MH125_2018_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX260_MH125_2018_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX260_MH125_2018_cat34FHlowpurity.txt'
# done
# sed -i 's/2018=//g' MX260_MH125_2018_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34FHlowpurity
# text2workspace.py MX260_MH125_2018_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34FHhighpurity/
# python RunYields_18resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH,gghhVH --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_2018_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX260_MH125_2018_cat34FHhighpurity
# python makeDatacard_18resolved_combined.py --years 2018 --doSystematics --prune --ext MX260_MH125_2018_cat34FHhighpurity --output MX260_MH125_2018_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX260_MH125_2018_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX260_MH125_2018_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX260_MH125_2018_cat34FHhighpurity.txt'
# done
# sed -i 's/2018=//g' MX260_MH125_2018_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34FHhighpurity
# text2workspace.py MX260_MH125_2018_cat34FHhighpurity.txt -m 125 
 
# cp Datacard_MX260_MH125_2018_wwgg_cat34SLhighpurity.txt MX260_MH125_2018_cat34SLhighpurity.txt
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34SLlowpurity/
# python RunYields_18resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34SLlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_2018_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX260_MH125_2018_cat34SLlowpurity
# python makeDatacard_18resolved_combined.py --years 2018 --doSystematics --prune --ext MX260_MH125_2018_cat34SLlowpurity --output MX260_MH125_2018_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX260_MH125_2018_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX260_MH125_2018_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX260_MH125_2018_cat34SLlowpurity.txt'
# done
# sed -i 's/2018=//g' MX260_MH125_2018_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2018/MX260_MH125/ws_gghhcombine_MX260_MH125_2018_cat34SLlowpurity
# text2workspace.py MX260_MH125_2018_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2018=MX260_MH125_2018_cat34SLlowpurity.txt cat34SLhighpurity_2018=MX260_MH125_2018_cat34SLhighpurity.txt cat34FHlowpurity_2018=MX260_MH125_2018_cat34FHlowpurity.txt cat34FHhighpurity_2018=MX260_MH125_2018_cat34FHhighpurity.txt > MX260_MH125_2018_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX260_MH125_2018_cat34.txt
 

# echo 'MX250_MH125_2016pre_cat34.txt'
# combine -M AsymptoticLimits -m 125 -n MX250_MH125_2016pre_cat34 -d MX250_MH125_2016pre_cat34.txt --freezeParameters MH --setParameters MH=125.38

# echo 'MX260_MH125_2016pre_cat34.txt'
# combine -M AsymptoticLimits -m 125 -n MX260_MH125_2016pre_cat34 -d MX260_MH125_2016pre_cat34.txt --freezeParameters MH --setParameters MH=125.38


# echo 'MX250_MH125_2016post_cat34.txt'
# combine -M AsymptoticLimits -m 125 -n MX250_MH125_2016post_cat34 -d MX250_MH125_2016post_cat34.txt --freezeParameters MH --setParameters MH=125.38

# echo 'MX260_MH125_2016post_cat34.txt'
# combine -M AsymptoticLimits -m 125 -n MX260_MH125_2016post_cat34 -d MX260_MH125_2016post_cat34.txt --freezeParameters MH --setParameters MH=125.38

# echo 'MX250_MH125_2017_cat34.txt'
# combine -M AsymptoticLimits -m 125 -n MX250_MH125_2017_cat34 -d MX250_MH125_2017_cat34.txt --freezeParameters MH --setParameters MH=125.38

# echo 'MX260_MH125_2017_cat34.txt'
# combine -M AsymptoticLimits -m 125 -n MX260_MH125_2017_cat34 -d MX260_MH125_2017_cat34.txt --freezeParameters MH --setParameters MH=125.38

# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX250_MH125_2018_cat34.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX250_MH125_2018_cat34.txt
# echo 'MX250_MH125_2018_cat34.txt'
# combine -M AsymptoticLimits -m 125 -n MX250_MH125_2018_cat34 -d MX250_MH125_2018_cat34.txt --freezeParameters MH --setParameters MH=125.38

# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX260_MH125_2018_cat34.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX260_MH125_2018_cat34.txt
# echo 'MX260_MH125_2018_cat34.txt'
# combine -M AsymptoticLimits -m 125 -n MX260_MH125_2018_cat34 -d MX260_MH125_2018_cat34.txt --freezeParameters MH --setParameters MH=125.38



combineCards.py  cat34_2018=MX250_MH125_2018_cat34.txt cat34_2017=MX250_MH125_2017_cat34.txt  cat34_2016pre=MX250_MH125_2016pre_cat34.txt cat34_2016post=MX250_MH125_2016post_cat34.txt > MX250_MH125_cat34.txt
combine -M AsymptoticLimits -m 125 -n MX250_MH125_cat34 -d MX250_MH125_cat34.txt --freezeParameters MH --setParameters MH=125.38

combineCards.py  cat34_2018=MX260_MH125_2018_cat34.txt cat34_2017=MX260_MH125_2017_cat34.txt  cat34_2016pre=MX260_MH125_2016pre_cat34.txt cat34_2016post=MX260_MH125_2016post_cat34.txt > MX260_MH125_cat34.txt
combine -M AsymptoticLimits -m 125 -n MX260_MH125_cat34 -d MX260_MH125_cat34.txt --freezeParameters MH --setParameters MH=125.38

combineCards.py  cat34_2018=MX260_MH125_2018_cat34.txt  cat34_2016pre=MX260_MH125_2016pre_cat34.txt cat34_2016post=MX260_MH125_2016post_cat34.txt > MX260_MH125_cat34.txt
combine -M AsymptoticLimits -m 125 -n MX260_MH125_cat34 -d MX260_MH125_cat34.txt --freezeParameters MH --setParameters MH=125.38

 -- AsymptoticLimits ( CLs ) --
Observed Limit: r < 13.2958
Expected  2.5%: r < 6.3809
Expected 16.0%: r < 7.2812
Expected 50.0%: r < 9.0000
Expected 84.0%: r < 11.9058
Expected 97.5%: r < 15.8317

combineCards.py  cat34_2017=MX260_MH125_2017_cat34.txt  cat34_2016pre=MX260_MH125_2016pre_cat34.txt cat34_2016post=MX260_MH125_2016post_cat34.txt > MX260_MH125_cat34.txt
combine -M AsymptoticLimits -m 125 -n MX260_MH125_cat34 -d MX260_MH125_cat34.txt --freezeParameters MH --setParameters MH=125.38
Observed Limit: r < 10.6581
Expected  2.5%: r < 3.7383
Expected 16.0%: r < 5.0826
Expected 50.0%: r < 7.2500
Expected 84.0%: r < 10.6023
Expected 97.5%: r < 15.0278


combineCards.py  cat34_2018=MX260_MH125_2018_cat34.txt cat34_2017=MX260_MH125_2017_cat34.txt  cat34_2016post=MX260_MH125_2016post_cat34.txt > MX260_MH125_cat34.txt
combine -M AsymptoticLimits -m 125 -n MX260_MH125_cat34 -d MX260_MH125_cat34.txt --freezeParameters MH --setParameters MH=125.38
 -- AsymptoticLimits ( CLs ) --
Observed Limit: r < 4.2878
Expected  2.5%: r < 5.8208
Expected 16.0%: r < 6.6528
Expected 50.0%: r < 8.1875
Expected 84.0%: r < 10.7657
Expected 97.5%: r < 14.2433


combineCards.py  cat34_2018=MX260_MH125_2018_cat34.txt cat34_2017=MX260_MH125_2017_cat34.txt  cat34_2016pre=MX260_MH125_2016pre_cat34.txt > MX260_MH125_cat34.txt
combine -M AsymptoticLimits -m 125 -n MX260_MH125_cat34 -d MX260_MH125_cat34.txt --freezeParameters MH --setParameters MH=125.38
 -- AsymptoticLimits ( CLs ) --
Observed Limit: r < 12.4567
Expected  2.5%: r < 5.5472
Expected 16.0%: r < 6.3326
Expected 50.0%: r < 7.7812
Expected 84.0%: r < 10.2315
Expected 97.5%: r < 13.6415