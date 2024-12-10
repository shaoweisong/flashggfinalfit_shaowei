mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1000_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1000_MH125_2016post_cat12lowpurity --output MX1000_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX1000_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity
text2workspace.py MX1000_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1000_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1000_MH125_2016post_cat12highpurity --output MX1000_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX1000_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity
text2workspace.py MX1000_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX1000_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1000_MH125_2016post_cat12highpurity.txt > MX1000_MH125_2016post_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*hgg  200' >>  MX1000_MH125_2016post_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1000_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MH125_2016post_cat12.txt