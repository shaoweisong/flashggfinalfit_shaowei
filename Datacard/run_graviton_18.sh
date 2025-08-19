mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2018_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2018_cat12lowpurity/
python RunYields_18boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2018_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2018_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_2018_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX2500_MH125_2018_cat12lowpurity
python makeDatacard_18boosted_combined.py --years 2018 --doSystematics --prune --ext MX2500_MH125_2018_cat12lowpurity --output MX2500_MH125_2018_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX2500_MH125_2018_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2500_MH125_2018_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX2500_MH125_2018_cat12lowpurity.txt'
done
sed -i 's/2018=//g' MX2500_MH125_2018_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2018_cat12lowpurity
text2workspace.py MX2500_MH125_2018_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2018_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2018_cat12highpurity/
python RunYields_18boosted_combined.py --cats cat12highpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2018_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2018_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_2018_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX2500_MH125_2018_cat12highpurity
python makeDatacard_18boosted_combined.py --years 2018 --doSystematics --prune --ext MX2500_MH125_2018_cat12highpurity --output MX2500_MH125_2018_cat12highpurity
strlist=($(grep "shapes *gghh*" MX2500_MH125_2018_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2500_MH125_2018_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX2500_MH125_2018_cat12highpurity.txt'
done
sed -i 's/2018=//g' MX2500_MH125_2018_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2018/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2018_cat12highpurity
text2workspace.py MX2500_MH125_2018_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2018=MX2500_MH125_2018_cat12lowpurity.txt cat12highpurity_2018=MX2500_MH125_2018_cat12highpurity.txt > MX2500_MH125_2018_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX2500_MH125_2018_cat12.txt