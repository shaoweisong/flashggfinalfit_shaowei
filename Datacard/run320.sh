# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX320_MH125_2016pre_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX320_MH125_2016pre_cat34FHlowpurity --output MX320_MH125_2016pre_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016pre_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016pre_cat34FHlowpurity.txt'
# done
# sed -i 's/2016pre=//g' MX320_MH125_2016pre_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHlowpurity
# text2workspace.py MX320_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX320_MH125_2016pre_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX320_MH125_2016pre_cat34FHhighpurity --output MX320_MH125_2016pre_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016pre_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016pre_cat34FHhighpurity.txt'
# done
# sed -i 's/2016pre=//g' MX320_MH125_2016pre_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHhighpurity
# text2workspace.py MX320_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_2016pre_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX320_MH125_2016pre_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX320_MH125_2016pre_cat34SLhighpurity --output MX320_MH125_2016pre_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016pre_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016pre_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016pre_cat34SLhighpurity.txt'
# done
# sed -i 's/2016pre=//g' MX320_MH125_2016pre_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLhighpurity
# text2workspace.py MX320_MH125_2016pre_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX320_MH125_2016pre_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX320_MH125_2016pre_cat34SLlowpurity --output MX320_MH125_2016pre_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016pre_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016pre_cat34SLlowpurity.txt'
# done
# sed -i 's/2016pre=//g' MX320_MH125_2016pre_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLlowpurity
# text2workspace.py MX320_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016pre=MX320_MH125_2016pre_cat34SLlowpurity.txt cat34SLhighpurity_2016pre=MX320_MH125_2016pre_cat34SLhighpurity.txt cat34FHlowpurity_2016pre=MX320_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX320_MH125_2016pre_cat34FHhighpurity.txt > MX320_MH125_2016pre_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX320_MH125_2016pre_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX320_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX320_MH125_2016post_cat34FHlowpurity --output MX320_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX320_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX320_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX320_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX320_MH125_2016post_cat34FHhighpurity --output MX320_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX320_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX320_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX320_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX320_MH125_2016post_cat34SLhighpurity --output MX320_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX320_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX320_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX320_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX320_MH125_2016post_cat34SLlowpurity --output MX320_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX320_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX320_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX320_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX320_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX320_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX320_MH125_2016post_cat34FHhighpurity.txt > MX320_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX320_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34FHlowpurity/
# python RunYields_17resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_2017_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX320_MH125_2017_cat34FHlowpurity
# python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX320_MH125_2017_cat34FHlowpurity --output MX320_MH125_2017_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2017_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2017_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2017_cat34FHlowpurity.txt'
# done
# sed -i 's/2017=//g' MX320_MH125_2017_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34FHlowpurity
# text2workspace.py MX320_MH125_2017_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34FHhighpurity/
# python RunYields_17resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH,gghhVH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_2017_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX320_MH125_2017_cat34FHhighpurity
# python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX320_MH125_2017_cat34FHhighpurity --output MX320_MH125_2017_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2017_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2017_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2017_cat34FHhighpurity.txt'
# done
# sed -i 's/2017=//g' MX320_MH125_2017_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34FHhighpurity
# text2workspace.py MX320_MH125_2017_cat34FHhighpurity.txt -m 125 
 
# cp Datacard_MX320_MH125_2017_wwgg_cat34SLhighpurity.txt MX320_MH125_2017_cat34SLhighpurity.txt
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34SLlowpurity/
# python RunYields_17resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34SLlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_2017_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX320_MH125_2017_cat34SLlowpurity
# python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX320_MH125_2017_cat34SLlowpurity --output MX320_MH125_2017_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2017_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2017_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2017_cat34SLlowpurity.txt'
# done
# sed -i 's/2017=//g' MX320_MH125_2017_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX320_MH125/ws_gghhcombine_MX320_MH125_2017_cat34SLlowpurity
# text2workspace.py MX320_MH125_2017_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2017=MX320_MH125_2017_cat34SLlowpurity.txt cat34SLhighpurity_2017=MX320_MH125_2017_cat34SLhighpurity.txt cat34FHlowpurity_2017=MX320_MH125_2017_cat34FHlowpurity.txt cat34FHhighpurity_2017=MX320_MH125_2017_cat34FHhighpurity.txt > MX320_MH125_2017_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX320_MH125_2017_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34FHlowpurity/
# python RunYields_18resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34FHlowpurity --procs gghhwwgg,gghhzzgg,gghhttgg,gghhVBF,gghhVH,gghhGGH --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_2018_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX320_MH125_2018_cat34FHlowpurity
# python makeDatacard_18resolved_combined.py --years 2018 --doSystematics --prune --ext MX320_MH125_2018_cat34FHlowpurity --output MX320_MH125_2018_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2018_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2018_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2018_cat34FHlowpurity.txt'
# done
# sed -i 's/2018=//g' MX320_MH125_2018_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34FHlowpurity
# text2workspace.py MX320_MH125_2018_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34FHhighpurity/
# python RunYields_18resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH,gghhVH --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_2018_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX320_MH125_2018_cat34FHhighpurity
# python makeDatacard_18resolved_combined.py --years 2018 --doSystematics --prune --ext MX320_MH125_2018_cat34FHhighpurity --output MX320_MH125_2018_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2018_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2018_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2018_cat34FHhighpurity.txt'
# done
# sed -i 's/2018=//g' MX320_MH125_2018_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34FHhighpurity
# text2workspace.py MX320_MH125_2018_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34SLhighpurity/
# python RunYields_18resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_2018_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX320_MH125_2018_cat34SLhighpurity
# python makeDatacard_18resolved_combined.py --years 2018 --doSystematics --prune --ext MX320_MH125_2018_cat34SLhighpurity --output MX320_MH125_2018_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2018_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2018_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2018_cat34SLhighpurity.txt'
# done
# sed -i 's/2018=//g' MX320_MH125_2018_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34SLhighpurity
# text2workspace.py MX320_MH125_2018_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34SLlowpurity/
# python RunYields_18resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34SLlowpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_2018_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX320_MH125_2018_cat34SLlowpurity
# python makeDatacard_18resolved_combined.py --years 2018 --doSystematics --prune --ext MX320_MH125_2018_cat34SLlowpurity --output MX320_MH125_2018_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2018_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2018_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2018_cat34SLlowpurity.txt'
# done
# sed -i 's/2018=//g' MX320_MH125_2018_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/MX320_MH125/ws_gghhcombine_MX320_MH125_2018_cat34SLlowpurity
# text2workspace.py MX320_MH125_2018_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2018=MX320_MH125_2018_cat34SLlowpurity.txt cat34SLhighpurity_2018=MX320_MH125_2018_cat34SLhighpurity.txt cat34FHlowpurity_2018=MX320_MH125_2018_cat34FHlowpurity.txt cat34FHhighpurity_2018=MX320_MH125_2018_cat34FHhighpurity.txt > MX320_MH125_2018_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX320_MH125_2018_cat34.txt
 
combineCards.py cat34_2016pre1=MX320_MH125_2016pre_cat34SLhighpurity.txt cat34_2016pre2=MX320_MH125_2016pre_cat34FHhighpurity.txt cat34_2016pre3=MX320_MH125_2016pre_cat34FHlowpurity.txt cat34_2016post=MX320_MH125_2016post_cat34.txt cat34_2017=MX320_MH125_2017_cat34.txt cat34_2018=MX320_MH125_2018_cat34.txt > MX320_MH125_cat34.txt
cp MX320_MH125_cat34.txt MX320_MH125.txt
echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX320_MH125.txt
echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX320_MH125.txt
combine -M AsymptoticLimits -m 125 -n MX320_MH125 -d MX320_MH125.txt --freezeParameters MH --setParameters MH=125.38        

# combineCards.py cat34_2016post=MX320_MH125_2016post_cat34.txt cat34_2016pre=MX320_MH125_2016pre_cat34.txt cat34_2017=MX320_MH125_2017_cat34.txt cat34_2018=MX320_MH125_2018_cat34.txt > MX320_MH125_cat34.txt
# cp MX320_MH125_cat34.txt MX320_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX320_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX320_MH125.txt
# echo 'MX320_MH125.txt'
# text2workspace.py MX320_MH125.txt -m 125
 
