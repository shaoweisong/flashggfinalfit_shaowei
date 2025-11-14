mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34FHlowpurity/
python RunYields_17resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_2017_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX500_MY300_2017_cat34FHlowpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX500_MY300_2017_cat34FHlowpurity --output MX500_MY300_2017_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX500_MY300_2017_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" 'MX500_MY300_2017_cat34FHlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" 'MX500_MY300_2017_cat34FHlowpurity.txt'
done
sed -i 's/2017=//g' MX500_MY300_2017_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34FHlowpurity
text2workspace.py MX500_MY300_2017_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34FHhighpurity/
python RunYields_17resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34FHhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_2017_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX500_MY300_2017_cat34FHhighpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX500_MY300_2017_cat34FHhighpurity --output MX500_MY300_2017_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX500_MY300_2017_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" 'MX500_MY300_2017_cat34FHhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" 'MX500_MY300_2017_cat34FHhighpurity.txt'
done
sed -i 's/2017=//g' MX500_MY300_2017_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34FHhighpurity
text2workspace.py MX500_MY300_2017_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34SLhighpurity/
python RunYields_17resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_2017_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX500_MY300_2017_cat34SLhighpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX500_MY300_2017_cat34SLhighpurity --output MX500_MY300_2017_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX500_MY300_2017_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" 'MX500_MY300_2017_cat34SLhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" 'MX500_MY300_2017_cat34SLhighpurity.txt'
done
sed -i 's/2017=//g' MX500_MY300_2017_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34SLhighpurity
text2workspace.py MX500_MY300_2017_cat34SLhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34SLlowpurity/
python RunYields_17resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_2017_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX500_MY300_2017_cat34SLlowpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX500_MY300_2017_cat34SLlowpurity --output MX500_MY300_2017_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX500_MY300_2017_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" 'MX500_MY300_2017_cat34SLlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" 'MX500_MY300_2017_cat34SLlowpurity.txt'
done
sed -i 's/2017=//g' MX500_MY300_2017_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2017/MX500_MY300/ws_ggyhcombine_MX500_MY300_2017_cat34SLlowpurity
text2workspace.py MX500_MY300_2017_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2017=MX500_MY300_2017_cat34SLlowpurity.txt cat34SLhighpurity_2017=MX500_MY300_2017_cat34SLhighpurity.txt cat34FHlowpurity_2017=MX500_MY300_2017_cat34FHlowpurity.txt cat34FHhighpurity_2017=MX500_MY300_2017_cat34FHhighpurity.txt > MX500_MY300_2017_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MY300_2017_cat34.txt