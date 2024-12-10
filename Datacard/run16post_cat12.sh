# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX500_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX500_MH125_2016post_cat12lowpurity --output MX500_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX500_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX500_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12lowpurity
# text2workspace.py MX500_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX500_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX500_MH125_2016post_cat12highpurity --output MX500_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX500_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX500_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12highpurity
# text2workspace.py MX500_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX500_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX500_MH125_2016post_cat12highpurity.txt > MX500_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX500_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX500_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX550_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX550_MH125_2016post_cat12lowpurity --output MX550_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX550_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX550_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12lowpurity
# text2workspace.py MX550_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX550_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX550_MH125_2016post_cat12highpurity --output MX550_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX550_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX550_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12highpurity
# text2workspace.py MX550_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX550_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX550_MH125_2016post_cat12highpurity.txt > MX550_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX550_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX550_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX550_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX600_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX600_MH125_2016post_cat12lowpurity --output MX600_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX600_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX600_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12lowpurity
# text2workspace.py MX600_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX600_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX600_MH125_2016post_cat12highpurity --output MX600_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX600_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX600_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12highpurity
# text2workspace.py MX600_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX600_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX600_MH125_2016post_cat12highpurity.txt > MX600_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX600_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX600_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX600_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX650_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX650_MH125_2016post_cat12lowpurity --output MX650_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX650_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX650_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12lowpurity
# text2workspace.py MX650_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX650_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX650_MH125_2016post_cat12highpurity --output MX650_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX650_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX650_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12highpurity
# text2workspace.py MX650_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX650_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX650_MH125_2016post_cat12highpurity.txt > MX650_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX650_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX650_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX650_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX700_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX700_MH125_2016post_cat12lowpurity --output MX700_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX700_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX700_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12lowpurity
# text2workspace.py MX700_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX700_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX700_MH125_2016post_cat12highpurity --output MX700_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX700_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX700_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12highpurity
# text2workspace.py MX700_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX700_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX700_MH125_2016post_cat12highpurity.txt > MX700_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX700_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX700_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX700_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX750_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX750_MH125_2016post_cat12lowpurity --output MX750_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX750_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX750_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12lowpurity
# text2workspace.py MX750_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX750_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX750_MH125_2016post_cat12highpurity --output MX750_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX750_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX750_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12highpurity
# text2workspace.py MX750_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX750_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX750_MH125_2016post_cat12highpurity.txt > MX750_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX750_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX750_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX750_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX800_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX800_MH125_2016post_cat12lowpurity --output MX800_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX800_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX800_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12lowpurity
# text2workspace.py MX800_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX800_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX800_MH125_2016post_cat12highpurity --output MX800_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX800_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX800_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12highpurity
# text2workspace.py MX800_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX800_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX800_MH125_2016post_cat12highpurity.txt > MX800_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX800_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX800_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX800_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghhcombine_MX850_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghhcombine_MX850_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghhcombine_MX850_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghhcombine_MX850_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX850_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX850_MH125_2016post_cat12lowpurity --output MX850_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX850_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX850_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX850_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghhcombine_MX850_MH125_2016post_cat12lowpurity
# text2workspace.py MX850_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghhcombine_MX850_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghhcombine_MX850_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghhcombine_MX850_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghhcombine_MX850_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX850_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX850_MH125_2016post_cat12highpurity --output MX850_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX850_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX850_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX850_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX850_MH125/ws_gghhcombine_MX850_MH125_2016post_cat12highpurity
# text2workspace.py MX850_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX850_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX850_MH125_2016post_cat12highpurity.txt > MX850_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX850_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX850_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX850_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1000_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1000_MH125_2016post_cat12lowpurity --output MX1000_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX1000_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX1000_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity
# text2workspace.py MX1000_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1000_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1000_MH125_2016post_cat12highpurity --output MX1000_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX1000_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX1000_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity
# text2workspace.py MX1000_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX1000_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1000_MH125_2016post_cat12highpurity.txt > MX1000_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1000_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1000_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghhcombine_MX1100_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghhcombine_MX1100_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghhcombine_MX1100_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghhcombine_MX1100_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1100_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1100_MH125_2016post_cat12lowpurity --output MX1100_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX1100_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1100_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX1100_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghhcombine_MX1100_MH125_2016post_cat12lowpurity
# text2workspace.py MX1100_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghhcombine_MX1100_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghhcombine_MX1100_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghhcombine_MX1100_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghhcombine_MX1100_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1100_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1100_MH125_2016post_cat12highpurity --output MX1100_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX1100_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1100_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX1100_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1100_MH125/ws_gghhcombine_MX1100_MH125_2016post_cat12highpurity
# text2workspace.py MX1100_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX1100_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1100_MH125_2016post_cat12highpurity.txt > MX1100_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1100_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1100_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1100_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghhcombine_MX1200_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghhcombine_MX1200_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghhcombine_MX1200_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghhcombine_MX1200_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1200_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1200_MH125_2016post_cat12lowpurity --output MX1200_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX1200_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1200_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX1200_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghhcombine_MX1200_MH125_2016post_cat12lowpurity
text2workspace.py MX1200_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghhcombine_MX1200_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghhcombine_MX1200_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghhcombine_MX1200_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghhcombine_MX1200_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1200_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1200_MH125_2016post_cat12highpurity --output MX1200_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX1200_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1200_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX1200_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1200_MH125/ws_gghhcombine_MX1200_MH125_2016post_cat12highpurity
text2workspace.py MX1200_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX1200_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1200_MH125_2016post_cat12highpurity.txt > MX1200_MH125_2016post_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1200_MH125_2016post_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1200_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1200_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghhcombine_MX1300_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghhcombine_MX1300_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghhcombine_MX1300_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghhcombine_MX1300_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1300_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1300_MH125_2016post_cat12lowpurity --output MX1300_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX1300_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1300_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX1300_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghhcombine_MX1300_MH125_2016post_cat12lowpurity
# text2workspace.py MX1300_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghhcombine_MX1300_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghhcombine_MX1300_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghhcombine_MX1300_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghhcombine_MX1300_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1300_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1300_MH125_2016post_cat12highpurity --output MX1300_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX1300_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1300_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX1300_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1300_MH125/ws_gghhcombine_MX1300_MH125_2016post_cat12highpurity
# text2workspace.py MX1300_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX1300_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1300_MH125_2016post_cat12highpurity.txt > MX1300_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1300_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1300_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1300_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghhcombine_MX1400_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghhcombine_MX1400_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghhcombine_MX1400_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghhcombine_MX1400_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1400_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1400_MH125_2016post_cat12lowpurity --output MX1400_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX1400_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1400_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX1400_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghhcombine_MX1400_MH125_2016post_cat12lowpurity
# text2workspace.py MX1400_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghhcombine_MX1400_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghhcombine_MX1400_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghhcombine_MX1400_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghhcombine_MX1400_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1400_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1400_MH125_2016post_cat12highpurity --output MX1400_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX1400_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1400_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX1400_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1400_MH125/ws_gghhcombine_MX1400_MH125_2016post_cat12highpurity
# text2workspace.py MX1400_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX1400_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1400_MH125_2016post_cat12highpurity.txt > MX1400_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1400_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1400_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1400_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1500_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1500_MH125_2016post_cat12lowpurity --output MX1500_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX1500_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1500_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX1500_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12lowpurity
# text2workspace.py MX1500_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1500_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1500_MH125_2016post_cat12highpurity --output MX1500_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX1500_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1500_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX1500_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12highpurity
# text2workspace.py MX1500_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX1500_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1500_MH125_2016post_cat12highpurity.txt > MX1500_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1500_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1500_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1500_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghhcombine_MX1600_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghhcombine_MX1600_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghhcombine_MX1600_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghhcombine_MX1600_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1600_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1600_MH125_2016post_cat12lowpurity --output MX1600_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX1600_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1600_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX1600_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghhcombine_MX1600_MH125_2016post_cat12lowpurity
# text2workspace.py MX1600_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghhcombine_MX1600_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghhcombine_MX1600_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghhcombine_MX1600_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghhcombine_MX1600_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1600_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1600_MH125_2016post_cat12highpurity --output MX1600_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX1600_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1600_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX1600_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1600_MH125/ws_gghhcombine_MX1600_MH125_2016post_cat12highpurity
# text2workspace.py MX1600_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX1600_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1600_MH125_2016post_cat12highpurity.txt > MX1600_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1600_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1600_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1600_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghhcombine_MX1700_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghhcombine_MX1700_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghhcombine_MX1700_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghhcombine_MX1700_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1700_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1700_MH125_2016post_cat12lowpurity --output MX1700_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX1700_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1700_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX1700_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghhcombine_MX1700_MH125_2016post_cat12lowpurity
# text2workspace.py MX1700_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghhcombine_MX1700_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghhcombine_MX1700_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghhcombine_MX1700_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghhcombine_MX1700_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1700_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1700_MH125_2016post_cat12highpurity --output MX1700_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX1700_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1700_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX1700_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1700_MH125/ws_gghhcombine_MX1700_MH125_2016post_cat12highpurity
# text2workspace.py MX1700_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX1700_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1700_MH125_2016post_cat12highpurity.txt > MX1700_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1700_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1700_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1700_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghhcombine_MX1800_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghhcombine_MX1800_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghhcombine_MX1800_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghhcombine_MX1800_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1800_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1800_MH125_2016post_cat12lowpurity --output MX1800_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX1800_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1800_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX1800_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghhcombine_MX1800_MH125_2016post_cat12lowpurity
# text2workspace.py MX1800_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghhcombine_MX1800_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghhcombine_MX1800_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghhcombine_MX1800_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghhcombine_MX1800_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1800_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1800_MH125_2016post_cat12highpurity --output MX1800_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX1800_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1800_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX1800_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1800_MH125/ws_gghhcombine_MX1800_MH125_2016post_cat12highpurity
# text2workspace.py MX1800_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX1800_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1800_MH125_2016post_cat12highpurity.txt > MX1800_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1800_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1800_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1800_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghhcombine_MX1900_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghhcombine_MX1900_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghhcombine_MX1900_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghhcombine_MX1900_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1900_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1900_MH125_2016post_cat12lowpurity --output MX1900_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX1900_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1900_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX1900_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghhcombine_MX1900_MH125_2016post_cat12lowpurity
# text2workspace.py MX1900_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghhcombine_MX1900_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghhcombine_MX1900_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghhcombine_MX1900_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghhcombine_MX1900_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1900_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1900_MH125_2016post_cat12highpurity --output MX1900_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX1900_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1900_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX1900_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1900_MH125/ws_gghhcombine_MX1900_MH125_2016post_cat12highpurity
# text2workspace.py MX1900_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX1900_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1900_MH125_2016post_cat12highpurity.txt > MX1900_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1900_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1900_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1900_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX2000_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2000_MH125_2016post_cat12lowpurity --output MX2000_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX2000_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2000_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX2000_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12lowpurity
# text2workspace.py MX2000_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX2000_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2000_MH125_2016post_cat12highpurity --output MX2000_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX2000_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2000_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX2000_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12highpurity
# text2workspace.py MX2000_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX2000_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX2000_MH125_2016post_cat12highpurity.txt > MX2000_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX2000_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX2000_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX2000_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghhcombine_MX2200_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghhcombine_MX2200_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghhcombine_MX2200_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghhcombine_MX2200_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX2200_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2200_MH125_2016post_cat12lowpurity --output MX2200_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX2200_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2200_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX2200_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghhcombine_MX2200_MH125_2016post_cat12lowpurity
# text2workspace.py MX2200_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghhcombine_MX2200_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghhcombine_MX2200_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghhcombine_MX2200_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghhcombine_MX2200_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX2200_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2200_MH125_2016post_cat12highpurity --output MX2200_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX2200_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2200_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX2200_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2200_MH125/ws_gghhcombine_MX2200_MH125_2016post_cat12highpurity
# text2workspace.py MX2200_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX2200_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX2200_MH125_2016post_cat12highpurity.txt > MX2200_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX2200_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX2200_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX2200_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghhcombine_MX2400_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghhcombine_MX2400_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghhcombine_MX2400_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghhcombine_MX2400_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX2400_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2400_MH125_2016post_cat12lowpurity --output MX2400_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX2400_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2400_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX2400_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghhcombine_MX2400_MH125_2016post_cat12lowpurity
# text2workspace.py MX2400_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghhcombine_MX2400_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghhcombine_MX2400_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghhcombine_MX2400_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghhcombine_MX2400_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX2400_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2400_MH125_2016post_cat12highpurity --output MX2400_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX2400_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2400_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX2400_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2400_MH125/ws_gghhcombine_MX2400_MH125_2016post_cat12highpurity
# text2workspace.py MX2400_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX2400_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX2400_MH125_2016post_cat12highpurity.txt > MX2400_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX2400_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX2400_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX2400_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghhcombine_MX2600_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghhcombine_MX2600_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghhcombine_MX2600_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghhcombine_MX2600_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX2600_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2600_MH125_2016post_cat12lowpurity --output MX2600_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX2600_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2600_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX2600_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghhcombine_MX2600_MH125_2016post_cat12lowpurity
# text2workspace.py MX2600_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghhcombine_MX2600_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghhcombine_MX2600_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghhcombine_MX2600_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghhcombine_MX2600_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX2600_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2600_MH125_2016post_cat12highpurity --output MX2600_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX2600_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2600_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX2600_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2600_MH125/ws_gghhcombine_MX2600_MH125_2016post_cat12highpurity
# text2workspace.py MX2600_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX2600_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX2600_MH125_2016post_cat12highpurity.txt > MX2600_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX2600_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX2600_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX2600_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghhcombine_MX2800_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghhcombine_MX2800_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghhcombine_MX2800_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghhcombine_MX2800_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX2800_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2800_MH125_2016post_cat12lowpurity --output MX2800_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX2800_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2800_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX2800_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghhcombine_MX2800_MH125_2016post_cat12lowpurity
# text2workspace.py MX2800_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghhcombine_MX2800_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghhcombine_MX2800_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghhcombine_MX2800_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghhcombine_MX2800_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX2800_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2800_MH125_2016post_cat12highpurity --output MX2800_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX2800_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2800_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX2800_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX2800_MH125/ws_gghhcombine_MX2800_MH125_2016post_cat12highpurity
# text2workspace.py MX2800_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX2800_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX2800_MH125_2016post_cat12highpurity.txt > MX2800_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX2800_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX2800_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX2800_MH125_2016post_cat12.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12lowpurity/
# python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX3000_MH125_2016post_cat12lowpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX3000_MH125_2016post_cat12lowpurity --output MX3000_MH125_2016post_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX3000_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX3000_MH125_2016post_cat12lowpurity.txt'
# done
# sed -i 's/2016post=//g' MX3000_MH125_2016post_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12lowpurity
# text2workspace.py MX3000_MH125_2016post_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12highpurity/
# python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX3000_MH125_2016post_cat12highpurity
# python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX3000_MH125_2016post_cat12highpurity --output MX3000_MH125_2016post_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX3000_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX3000_MH125_2016post_cat12highpurity.txt'
# done
# sed -i 's/2016post=//g' MX3000_MH125_2016post_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12highpurity
# text2workspace.py MX3000_MH125_2016post_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2016post=MX3000_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX3000_MH125_2016post_cat12highpurity.txt > MX3000_MH125_2016post_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX3000_MH125_2016post_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX3000_MH125_2016post_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX3000_MH125_2016post_cat12.txt
 
