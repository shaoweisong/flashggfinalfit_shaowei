# Generated commands for year = 2016post
# Date: Thu Feb  5 03:20:38 PM CET 2026


# Mass point: MX400_MY250
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX400_MY250_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX400_MY250_2016post_cat34FHlowpurity --output MX400_MY250_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX400_MY250_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX400_MY250_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX400_MY250_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX400_MY250_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34FHlowpurity
text2workspace.py MX400_MY250_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX400_MY250_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX400_MY250_2016post_cat34FHhighpurity --output MX400_MY250_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX400_MY250_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX400_MY250_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX400_MY250_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX400_MY250_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34FHhighpurity
text2workspace.py MX400_MY250_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX400_MY250_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX400_MY250_2016post_cat34SLhighpurity --output MX400_MY250_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX400_MY250_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX400_MY250_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX400_MY250_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX400_MY250_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34SLhighpurity
text2workspace.py MX400_MY250_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX400_MY250_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX400_MY250_2016post_cat34SLlowpurity --output MX400_MY250_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX400_MY250_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX400_MY250_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX400_MY250_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX400_MY250_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX400_MY250/ws_ggyhcombine_MX400_MY250_2016post_cat34SLlowpurity
text2workspace.py MX400_MY250_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX400_MY250_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX400_MY250_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX400_MY250_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX400_MY250_2016post_cat34FHhighpurity.txt > MX400_MY250_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX400_MY250_2016post_cat34.txt
text2workspace.py MX400_MY250_2016post_cat34.txt -m 125

# Mass point: MX500_MY250
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX500_MY250_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MY250_2016post_cat34FHlowpurity --output MX500_MY250_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX500_MY250_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX500_MY250_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX500_MY250_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX500_MY250_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34FHlowpurity
text2workspace.py MX500_MY250_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX500_MY250_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MY250_2016post_cat34FHhighpurity --output MX500_MY250_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX500_MY250_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX500_MY250_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX500_MY250_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX500_MY250_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34FHhighpurity
text2workspace.py MX500_MY250_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX500_MY250_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MY250_2016post_cat34SLhighpurity --output MX500_MY250_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX500_MY250_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX500_MY250_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX500_MY250_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX500_MY250_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34SLhighpurity
text2workspace.py MX500_MY250_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX500_MY250_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MY250_2016post_cat34SLlowpurity --output MX500_MY250_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX500_MY250_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX500_MY250_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX500_MY250_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX500_MY250_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY250/ws_ggyhcombine_MX500_MY250_2016post_cat34SLlowpurity
text2workspace.py MX500_MY250_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX500_MY250_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX500_MY250_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX500_MY250_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX500_MY250_2016post_cat34FHhighpurity.txt > MX500_MY250_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MY250_2016post_cat34.txt
text2workspace.py MX500_MY250_2016post_cat34.txt -m 125

# Mass point: MX500_MY300
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX500_MY300_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MY300_2016post_cat34FHlowpurity --output MX500_MY300_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX500_MY300_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX500_MY300_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX500_MY300_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX500_MY300_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34FHlowpurity
text2workspace.py MX500_MY300_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX500_MY300_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MY300_2016post_cat34FHhighpurity --output MX500_MY300_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX500_MY300_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX500_MY300_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX500_MY300_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX500_MY300_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34FHhighpurity
text2workspace.py MX500_MY300_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX500_MY300_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MY300_2016post_cat34SLhighpurity --output MX500_MY300_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX500_MY300_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX500_MY300_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX500_MY300_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX500_MY300_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34SLhighpurity
text2workspace.py MX500_MY300_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX500_MY300_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MY300_2016post_cat34SLlowpurity --output MX500_MY300_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX500_MY300_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX500_MY300_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX500_MY300_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX500_MY300_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX500_MY300/ws_ggyhcombine_MX500_MY300_2016post_cat34SLlowpurity
text2workspace.py MX500_MY300_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX500_MY300_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX500_MY300_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX500_MY300_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX500_MY300_2016post_cat34FHhighpurity.txt > MX500_MY300_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MY300_2016post_cat34.txt
text2workspace.py MX500_MY300_2016post_cat34.txt -m 125

# Mass point: MX600_MY250
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX600_MY250_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY250_2016post_cat34FHlowpurity --output MX600_MY250_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX600_MY250_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY250_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY250_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX600_MY250_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34FHlowpurity
text2workspace.py MX600_MY250_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX600_MY250_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY250_2016post_cat34FHhighpurity --output MX600_MY250_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX600_MY250_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY250_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY250_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX600_MY250_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34FHhighpurity
text2workspace.py MX600_MY250_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX600_MY250_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY250_2016post_cat34SLhighpurity --output MX600_MY250_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX600_MY250_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY250_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY250_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX600_MY250_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34SLhighpurity
text2workspace.py MX600_MY250_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX600_MY250_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY250_2016post_cat34SLlowpurity --output MX600_MY250_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX600_MY250_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY250_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY250_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX600_MY250_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY250/ws_ggyhcombine_MX600_MY250_2016post_cat34SLlowpurity
text2workspace.py MX600_MY250_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX600_MY250_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX600_MY250_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX600_MY250_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX600_MY250_2016post_cat34FHhighpurity.txt > MX600_MY250_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX600_MY250_2016post_cat34.txt
text2workspace.py MX600_MY250_2016post_cat34.txt -m 125

# Mass point: MX600_MY300
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX600_MY300_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY300_2016post_cat34FHlowpurity --output MX600_MY300_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX600_MY300_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY300_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY300_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX600_MY300_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34FHlowpurity
text2workspace.py MX600_MY300_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX600_MY300_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY300_2016post_cat34FHhighpurity --output MX600_MY300_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX600_MY300_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY300_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY300_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX600_MY300_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34FHhighpurity
text2workspace.py MX600_MY300_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX600_MY300_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY300_2016post_cat34SLhighpurity --output MX600_MY300_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX600_MY300_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY300_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY300_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX600_MY300_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34SLhighpurity
text2workspace.py MX600_MY300_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX600_MY300_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY300_2016post_cat34SLlowpurity --output MX600_MY300_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX600_MY300_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY300_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY300_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX600_MY300_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY300/ws_ggyhcombine_MX600_MY300_2016post_cat34SLlowpurity
text2workspace.py MX600_MY300_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX600_MY300_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX600_MY300_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX600_MY300_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX600_MY300_2016post_cat34FHhighpurity.txt > MX600_MY300_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX600_MY300_2016post_cat34.txt
text2workspace.py MX600_MY300_2016post_cat34.txt -m 125

# Mass point: MX600_MY400
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX600_MY400_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY400_2016post_cat34FHlowpurity --output MX600_MY400_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX600_MY400_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY400_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY400_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX600_MY400_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34FHlowpurity
text2workspace.py MX600_MY400_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX600_MY400_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY400_2016post_cat34FHhighpurity --output MX600_MY400_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX600_MY400_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY400_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY400_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX600_MY400_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34FHhighpurity
text2workspace.py MX600_MY400_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX600_MY400_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY400_2016post_cat34SLhighpurity --output MX600_MY400_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX600_MY400_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY400_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY400_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX600_MY400_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34SLhighpurity
text2workspace.py MX600_MY400_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX600_MY400_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MY400_2016post_cat34SLlowpurity --output MX600_MY400_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX600_MY400_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX600_MY400_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX600_MY400_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX600_MY400_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX600_MY400/ws_ggyhcombine_MX600_MY400_2016post_cat34SLlowpurity
text2workspace.py MX600_MY400_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX600_MY400_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX600_MY400_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX600_MY400_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX600_MY400_2016post_cat34FHhighpurity.txt > MX600_MY400_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX600_MY400_2016post_cat34.txt
text2workspace.py MX600_MY400_2016post_cat34.txt -m 125

# Mass point: MX700_MY250
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX700_MY250_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY250_2016post_cat34FHlowpurity --output MX700_MY250_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX700_MY250_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY250_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY250_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX700_MY250_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34FHlowpurity
text2workspace.py MX700_MY250_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX700_MY250_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY250_2016post_cat34FHhighpurity --output MX700_MY250_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX700_MY250_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY250_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY250_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX700_MY250_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34FHhighpurity
text2workspace.py MX700_MY250_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX700_MY250_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY250_2016post_cat34SLhighpurity --output MX700_MY250_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX700_MY250_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY250_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY250_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX700_MY250_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34SLhighpurity
text2workspace.py MX700_MY250_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX700_MY250_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY250_2016post_cat34SLlowpurity --output MX700_MY250_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX700_MY250_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY250_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY250_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX700_MY250_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY250/ws_ggyhcombine_MX700_MY250_2016post_cat34SLlowpurity
text2workspace.py MX700_MY250_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX700_MY250_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX700_MY250_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX700_MY250_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX700_MY250_2016post_cat34FHhighpurity.txt > MX700_MY250_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX700_MY250_2016post_cat34.txt
text2workspace.py MX700_MY250_2016post_cat34.txt -m 125

# Mass point: MX700_MY300
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX700_MY300_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY300_2016post_cat34FHlowpurity --output MX700_MY300_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX700_MY300_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY300_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY300_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX700_MY300_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34FHlowpurity
text2workspace.py MX700_MY300_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX700_MY300_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY300_2016post_cat34FHhighpurity --output MX700_MY300_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX700_MY300_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY300_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY300_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX700_MY300_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34FHhighpurity
text2workspace.py MX700_MY300_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX700_MY300_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY300_2016post_cat34SLhighpurity --output MX700_MY300_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX700_MY300_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY300_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY300_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX700_MY300_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34SLhighpurity
text2workspace.py MX700_MY300_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX700_MY300_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY300_2016post_cat34SLlowpurity --output MX700_MY300_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX700_MY300_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY300_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY300_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX700_MY300_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY300/ws_ggyhcombine_MX700_MY300_2016post_cat34SLlowpurity
text2workspace.py MX700_MY300_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX700_MY300_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX700_MY300_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX700_MY300_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX700_MY300_2016post_cat34FHhighpurity.txt > MX700_MY300_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX700_MY300_2016post_cat34.txt
text2workspace.py MX700_MY300_2016post_cat34.txt -m 125

# Mass point: MX700_MY400
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX700_MY400_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY400_2016post_cat34FHlowpurity --output MX700_MY400_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX700_MY400_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY400_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY400_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX700_MY400_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34FHlowpurity
text2workspace.py MX700_MY400_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX700_MY400_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY400_2016post_cat34FHhighpurity --output MX700_MY400_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX700_MY400_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY400_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY400_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX700_MY400_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34FHhighpurity
text2workspace.py MX700_MY400_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX700_MY400_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY400_2016post_cat34SLhighpurity --output MX700_MY400_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX700_MY400_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY400_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY400_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX700_MY400_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34SLhighpurity
text2workspace.py MX700_MY400_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX700_MY400_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY400_2016post_cat34SLlowpurity --output MX700_MY400_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX700_MY400_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY400_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY400_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX700_MY400_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY400/ws_ggyhcombine_MX700_MY400_2016post_cat34SLlowpurity
text2workspace.py MX700_MY400_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX700_MY400_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX700_MY400_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX700_MY400_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX700_MY400_2016post_cat34FHhighpurity.txt > MX700_MY400_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX700_MY400_2016post_cat34.txt
text2workspace.py MX700_MY400_2016post_cat34.txt -m 125

# Mass point: MX700_MY500
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX700_MY500_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY500_2016post_cat34FHlowpurity --output MX700_MY500_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX700_MY500_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY500_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY500_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX700_MY500_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34FHlowpurity
text2workspace.py MX700_MY500_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX700_MY500_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY500_2016post_cat34FHhighpurity --output MX700_MY500_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX700_MY500_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY500_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY500_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX700_MY500_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34FHhighpurity
text2workspace.py MX700_MY500_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX700_MY500_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY500_2016post_cat34SLhighpurity --output MX700_MY500_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX700_MY500_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY500_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY500_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX700_MY500_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34SLhighpurity
text2workspace.py MX700_MY500_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX700_MY500_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MY500_2016post_cat34SLlowpurity --output MX700_MY500_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX700_MY500_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX700_MY500_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX700_MY500_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX700_MY500_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX700_MY500/ws_ggyhcombine_MX700_MY500_2016post_cat34SLlowpurity
text2workspace.py MX700_MY500_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX700_MY500_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX700_MY500_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX700_MY500_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX700_MY500_2016post_cat34FHhighpurity.txt > MX700_MY500_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX700_MY500_2016post_cat34.txt
text2workspace.py MX700_MY500_2016post_cat34.txt -m 125

# Mass point: MX800_MY250
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX800_MY250_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY250_2016post_cat34FHlowpurity --output MX800_MY250_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX800_MY250_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY250_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY250_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX800_MY250_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34FHlowpurity
text2workspace.py MX800_MY250_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX800_MY250_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY250_2016post_cat34FHhighpurity --output MX800_MY250_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX800_MY250_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY250_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY250_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX800_MY250_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34FHhighpurity
text2workspace.py MX800_MY250_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX800_MY250_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY250_2016post_cat34SLhighpurity --output MX800_MY250_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX800_MY250_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY250_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY250_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX800_MY250_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34SLhighpurity
text2workspace.py MX800_MY250_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX800_MY250_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY250_2016post_cat34SLlowpurity --output MX800_MY250_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX800_MY250_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY250_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY250_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX800_MY250_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY250/ws_ggyhcombine_MX800_MY250_2016post_cat34SLlowpurity
text2workspace.py MX800_MY250_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX800_MY250_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX800_MY250_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX800_MY250_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX800_MY250_2016post_cat34FHhighpurity.txt > MX800_MY250_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX800_MY250_2016post_cat34.txt
text2workspace.py MX800_MY250_2016post_cat34.txt -m 125

# Mass point: MX800_MY300
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX800_MY300_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY300_2016post_cat34FHlowpurity --output MX800_MY300_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX800_MY300_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY300_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY300_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX800_MY300_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34FHlowpurity
text2workspace.py MX800_MY300_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX800_MY300_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY300_2016post_cat34FHhighpurity --output MX800_MY300_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX800_MY300_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY300_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY300_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX800_MY300_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34FHhighpurity
text2workspace.py MX800_MY300_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX800_MY300_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY300_2016post_cat34SLhighpurity --output MX800_MY300_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX800_MY300_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY300_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY300_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX800_MY300_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34SLhighpurity
text2workspace.py MX800_MY300_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX800_MY300_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY300_2016post_cat34SLlowpurity --output MX800_MY300_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX800_MY300_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY300_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY300_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX800_MY300_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY300/ws_ggyhcombine_MX800_MY300_2016post_cat34SLlowpurity
text2workspace.py MX800_MY300_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX800_MY300_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX800_MY300_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX800_MY300_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX800_MY300_2016post_cat34FHhighpurity.txt > MX800_MY300_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX800_MY300_2016post_cat34.txt
text2workspace.py MX800_MY300_2016post_cat34.txt -m 125

# Mass point: MX800_MY400
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX800_MY400_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY400_2016post_cat34FHlowpurity --output MX800_MY400_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX800_MY400_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY400_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY400_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX800_MY400_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34FHlowpurity
text2workspace.py MX800_MY400_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX800_MY400_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY400_2016post_cat34FHhighpurity --output MX800_MY400_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX800_MY400_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY400_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY400_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX800_MY400_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34FHhighpurity
text2workspace.py MX800_MY400_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX800_MY400_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY400_2016post_cat34SLhighpurity --output MX800_MY400_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX800_MY400_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY400_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY400_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX800_MY400_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34SLhighpurity
text2workspace.py MX800_MY400_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX800_MY400_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY400_2016post_cat34SLlowpurity --output MX800_MY400_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX800_MY400_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY400_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY400_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX800_MY400_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY400/ws_ggyhcombine_MX800_MY400_2016post_cat34SLlowpurity
text2workspace.py MX800_MY400_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX800_MY400_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX800_MY400_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX800_MY400_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX800_MY400_2016post_cat34FHhighpurity.txt > MX800_MY400_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX800_MY400_2016post_cat34.txt
text2workspace.py MX800_MY400_2016post_cat34.txt -m 125

# Mass point: MX800_MY500
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX800_MY500_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY500_2016post_cat34FHlowpurity --output MX800_MY500_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX800_MY500_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY500_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY500_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX800_MY500_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34FHlowpurity
text2workspace.py MX800_MY500_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX800_MY500_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY500_2016post_cat34FHhighpurity --output MX800_MY500_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX800_MY500_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY500_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY500_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX800_MY500_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34FHhighpurity
text2workspace.py MX800_MY500_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX800_MY500_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY500_2016post_cat34SLhighpurity --output MX800_MY500_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX800_MY500_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY500_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY500_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX800_MY500_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34SLhighpurity
text2workspace.py MX800_MY500_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX800_MY500_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY500_2016post_cat34SLlowpurity --output MX800_MY500_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX800_MY500_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY500_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY500_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX800_MY500_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY500/ws_ggyhcombine_MX800_MY500_2016post_cat34SLlowpurity
text2workspace.py MX800_MY500_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX800_MY500_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX800_MY500_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX800_MY500_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX800_MY500_2016post_cat34FHhighpurity.txt > MX800_MY500_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX800_MY500_2016post_cat34.txt
text2workspace.py MX800_MY500_2016post_cat34.txt -m 125

# Mass point: MX800_MY600
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX800_MY600_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY600_2016post_cat34FHlowpurity --output MX800_MY600_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX800_MY600_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY600_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY600_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX800_MY600_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34FHlowpurity
text2workspace.py MX800_MY600_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX800_MY600_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY600_2016post_cat34FHhighpurity --output MX800_MY600_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX800_MY600_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY600_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY600_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX800_MY600_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34FHhighpurity
text2workspace.py MX800_MY600_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX800_MY600_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY600_2016post_cat34SLhighpurity --output MX800_MY600_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX800_MY600_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY600_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY600_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX800_MY600_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34SLhighpurity
text2workspace.py MX800_MY600_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX800_MY600_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MY600_2016post_cat34SLlowpurity --output MX800_MY600_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX800_MY600_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX800_MY600_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX800_MY600_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX800_MY600_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX800_MY600/ws_ggyhcombine_MX800_MY600_2016post_cat34SLlowpurity
text2workspace.py MX800_MY600_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX800_MY600_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX800_MY600_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX800_MY600_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX800_MY600_2016post_cat34FHhighpurity.txt > MX800_MY600_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX800_MY600_2016post_cat34.txt
text2workspace.py MX800_MY600_2016post_cat34.txt -m 125

# Mass point: MX900_MY250
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX900_MY250_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY250_2016post_cat34FHlowpurity --output MX900_MY250_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY250_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY250_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY250_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY250_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34FHlowpurity
text2workspace.py MX900_MY250_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX900_MY250_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY250_2016post_cat34FHhighpurity --output MX900_MY250_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY250_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY250_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY250_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY250_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34FHhighpurity
text2workspace.py MX900_MY250_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX900_MY250_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY250_2016post_cat34SLhighpurity --output MX900_MY250_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY250_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY250_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY250_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY250_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34SLhighpurity
text2workspace.py MX900_MY250_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX900_MY250_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY250_2016post_cat34SLlowpurity --output MX900_MY250_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY250_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY250_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY250_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY250_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY250/ws_ggyhcombine_MX900_MY250_2016post_cat34SLlowpurity
text2workspace.py MX900_MY250_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX900_MY250_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX900_MY250_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX900_MY250_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX900_MY250_2016post_cat34FHhighpurity.txt > MX900_MY250_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX900_MY250_2016post_cat34.txt
text2workspace.py MX900_MY250_2016post_cat34.txt -m 125

# Mass point: MX900_MY300
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX900_MY300_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY300_2016post_cat34FHlowpurity --output MX900_MY300_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY300_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY300_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY300_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY300_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34FHlowpurity
text2workspace.py MX900_MY300_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX900_MY300_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY300_2016post_cat34FHhighpurity --output MX900_MY300_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY300_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY300_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY300_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY300_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34FHhighpurity
text2workspace.py MX900_MY300_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX900_MY300_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY300_2016post_cat34SLhighpurity --output MX900_MY300_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY300_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY300_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY300_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY300_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34SLhighpurity
text2workspace.py MX900_MY300_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX900_MY300_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY300_2016post_cat34SLlowpurity --output MX900_MY300_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY300_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY300_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY300_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY300_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY300/ws_ggyhcombine_MX900_MY300_2016post_cat34SLlowpurity
text2workspace.py MX900_MY300_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX900_MY300_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX900_MY300_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX900_MY300_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX900_MY300_2016post_cat34FHhighpurity.txt > MX900_MY300_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX900_MY300_2016post_cat34.txt
text2workspace.py MX900_MY300_2016post_cat34.txt -m 125

# Mass point: MX900_MY400
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX900_MY400_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY400_2016post_cat34FHlowpurity --output MX900_MY400_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY400_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY400_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY400_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY400_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34FHlowpurity
text2workspace.py MX900_MY400_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX900_MY400_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY400_2016post_cat34FHhighpurity --output MX900_MY400_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY400_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY400_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY400_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY400_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34FHhighpurity
text2workspace.py MX900_MY400_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX900_MY400_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY400_2016post_cat34SLhighpurity --output MX900_MY400_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY400_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY400_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY400_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY400_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34SLhighpurity
text2workspace.py MX900_MY400_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX900_MY400_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY400_2016post_cat34SLlowpurity --output MX900_MY400_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY400_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY400_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY400_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY400_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY400/ws_ggyhcombine_MX900_MY400_2016post_cat34SLlowpurity
text2workspace.py MX900_MY400_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX900_MY400_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX900_MY400_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX900_MY400_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX900_MY400_2016post_cat34FHhighpurity.txt > MX900_MY400_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX900_MY400_2016post_cat34.txt
text2workspace.py MX900_MY400_2016post_cat34.txt -m 125

# Mass point: MX900_MY500
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX900_MY500_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY500_2016post_cat34FHlowpurity --output MX900_MY500_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY500_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY500_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY500_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY500_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34FHlowpurity
text2workspace.py MX900_MY500_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX900_MY500_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY500_2016post_cat34FHhighpurity --output MX900_MY500_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY500_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY500_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY500_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY500_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34FHhighpurity
text2workspace.py MX900_MY500_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX900_MY500_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY500_2016post_cat34SLhighpurity --output MX900_MY500_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY500_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY500_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY500_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY500_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34SLhighpurity
text2workspace.py MX900_MY500_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX900_MY500_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY500_2016post_cat34SLlowpurity --output MX900_MY500_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY500_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY500_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY500_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY500_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY500/ws_ggyhcombine_MX900_MY500_2016post_cat34SLlowpurity
text2workspace.py MX900_MY500_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX900_MY500_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX900_MY500_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX900_MY500_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX900_MY500_2016post_cat34FHhighpurity.txt > MX900_MY500_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX900_MY500_2016post_cat34.txt
text2workspace.py MX900_MY500_2016post_cat34.txt -m 125

# Mass point: MX900_MY600
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX900_MY600_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY600_2016post_cat34FHlowpurity --output MX900_MY600_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY600_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY600_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY600_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY600_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34FHlowpurity
text2workspace.py MX900_MY600_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX900_MY600_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY600_2016post_cat34FHhighpurity --output MX900_MY600_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY600_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY600_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY600_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY600_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34FHhighpurity
text2workspace.py MX900_MY600_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX900_MY600_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY600_2016post_cat34SLhighpurity --output MX900_MY600_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY600_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY600_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY600_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY600_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34SLhighpurity
text2workspace.py MX900_MY600_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX900_MY600_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY600_2016post_cat34SLlowpurity --output MX900_MY600_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY600_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY600_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY600_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY600_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY600/ws_ggyhcombine_MX900_MY600_2016post_cat34SLlowpurity
text2workspace.py MX900_MY600_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX900_MY600_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX900_MY600_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX900_MY600_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX900_MY600_2016post_cat34FHhighpurity.txt > MX900_MY600_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX900_MY600_2016post_cat34.txt
text2workspace.py MX900_MY600_2016post_cat34.txt -m 125

# Mass point: MX900_MY700
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX900_MY700_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY700_2016post_cat34FHlowpurity --output MX900_MY700_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY700_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY700_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY700_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY700_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34FHlowpurity
text2workspace.py MX900_MY700_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX900_MY700_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY700_2016post_cat34FHhighpurity --output MX900_MY700_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY700_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY700_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY700_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY700_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34FHhighpurity
text2workspace.py MX900_MY700_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX900_MY700_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY700_2016post_cat34SLhighpurity --output MX900_MY700_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX900_MY700_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY700_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY700_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX900_MY700_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34SLhighpurity
text2workspace.py MX900_MY700_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX900_MY700_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MY700_2016post_cat34SLlowpurity --output MX900_MY700_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX900_MY700_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX900_MY700_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX900_MY700_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX900_MY700_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX900_MY700/ws_ggyhcombine_MX900_MY700_2016post_cat34SLlowpurity
text2workspace.py MX900_MY700_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX900_MY700_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX900_MY700_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX900_MY700_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX900_MY700_2016post_cat34FHhighpurity.txt > MX900_MY700_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX900_MY700_2016post_cat34.txt
text2workspace.py MX900_MY700_2016post_cat34.txt -m 125

# Mass point: MX1000_MY250
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX1000_MY250_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY250_2016post_cat34FHlowpurity --output MX1000_MY250_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY250_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY250_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY250_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY250_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34FHlowpurity
text2workspace.py MX1000_MY250_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX1000_MY250_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY250_2016post_cat34FHhighpurity --output MX1000_MY250_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY250_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY250_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY250_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY250_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34FHhighpurity
text2workspace.py MX1000_MY250_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX1000_MY250_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY250_2016post_cat34SLhighpurity --output MX1000_MY250_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY250_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY250_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY250_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY250_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34SLhighpurity
text2workspace.py MX1000_MY250_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX1000_MY250_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY250_2016post_cat34SLlowpurity --output MX1000_MY250_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY250_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY250_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY250_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY250_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY250/ws_ggyhcombine_MX1000_MY250_2016post_cat34SLlowpurity
text2workspace.py MX1000_MY250_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX1000_MY250_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX1000_MY250_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX1000_MY250_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX1000_MY250_2016post_cat34FHhighpurity.txt > MX1000_MY250_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MY250_2016post_cat34.txt
text2workspace.py MX1000_MY250_2016post_cat34.txt -m 125

# Mass point: MX1000_MY300
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX1000_MY300_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY300_2016post_cat34FHlowpurity --output MX1000_MY300_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY300_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY300_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY300_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY300_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34FHlowpurity
text2workspace.py MX1000_MY300_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX1000_MY300_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY300_2016post_cat34FHhighpurity --output MX1000_MY300_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY300_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY300_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY300_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY300_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34FHhighpurity
text2workspace.py MX1000_MY300_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX1000_MY300_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY300_2016post_cat34SLhighpurity --output MX1000_MY300_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY300_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY300_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY300_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY300_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34SLhighpurity
text2workspace.py MX1000_MY300_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX1000_MY300_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY300_2016post_cat34SLlowpurity --output MX1000_MY300_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY300_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY300_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY300_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY300_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY300/ws_ggyhcombine_MX1000_MY300_2016post_cat34SLlowpurity
text2workspace.py MX1000_MY300_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX1000_MY300_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX1000_MY300_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX1000_MY300_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX1000_MY300_2016post_cat34FHhighpurity.txt > MX1000_MY300_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MY300_2016post_cat34.txt
text2workspace.py MX1000_MY300_2016post_cat34.txt -m 125

# Mass point: MX1000_MY400
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX1000_MY400_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY400_2016post_cat34FHlowpurity --output MX1000_MY400_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY400_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY400_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY400_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY400_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34FHlowpurity
text2workspace.py MX1000_MY400_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX1000_MY400_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY400_2016post_cat34FHhighpurity --output MX1000_MY400_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY400_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY400_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY400_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY400_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34FHhighpurity
text2workspace.py MX1000_MY400_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX1000_MY400_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY400_2016post_cat34SLhighpurity --output MX1000_MY400_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY400_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY400_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY400_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY400_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34SLhighpurity
text2workspace.py MX1000_MY400_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX1000_MY400_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY400_2016post_cat34SLlowpurity --output MX1000_MY400_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY400_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY400_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY400_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY400_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY400/ws_ggyhcombine_MX1000_MY400_2016post_cat34SLlowpurity
text2workspace.py MX1000_MY400_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX1000_MY400_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX1000_MY400_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX1000_MY400_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX1000_MY400_2016post_cat34FHhighpurity.txt > MX1000_MY400_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MY400_2016post_cat34.txt
text2workspace.py MX1000_MY400_2016post_cat34.txt -m 125

# Mass point: MX1000_MY500
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX1000_MY500_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY500_2016post_cat34FHlowpurity --output MX1000_MY500_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY500_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY500_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY500_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY500_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34FHlowpurity
text2workspace.py MX1000_MY500_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX1000_MY500_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY500_2016post_cat34FHhighpurity --output MX1000_MY500_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY500_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY500_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY500_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY500_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34FHhighpurity
text2workspace.py MX1000_MY500_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX1000_MY500_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY500_2016post_cat34SLhighpurity --output MX1000_MY500_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY500_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY500_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY500_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY500_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34SLhighpurity
text2workspace.py MX1000_MY500_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX1000_MY500_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY500_2016post_cat34SLlowpurity --output MX1000_MY500_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY500_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY500_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY500_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY500_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY500/ws_ggyhcombine_MX1000_MY500_2016post_cat34SLlowpurity
text2workspace.py MX1000_MY500_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX1000_MY500_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX1000_MY500_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX1000_MY500_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX1000_MY500_2016post_cat34FHhighpurity.txt > MX1000_MY500_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MY500_2016post_cat34.txt
text2workspace.py MX1000_MY500_2016post_cat34.txt -m 125

# Mass point: MX1000_MY600
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX1000_MY600_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY600_2016post_cat34FHlowpurity --output MX1000_MY600_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY600_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY600_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY600_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY600_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34FHlowpurity
text2workspace.py MX1000_MY600_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX1000_MY600_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY600_2016post_cat34FHhighpurity --output MX1000_MY600_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY600_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY600_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY600_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY600_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34FHhighpurity
text2workspace.py MX1000_MY600_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX1000_MY600_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY600_2016post_cat34SLhighpurity --output MX1000_MY600_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY600_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY600_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY600_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY600_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34SLhighpurity
text2workspace.py MX1000_MY600_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX1000_MY600_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY600_2016post_cat34SLlowpurity --output MX1000_MY600_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY600_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY600_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY600_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY600_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY600/ws_ggyhcombine_MX1000_MY600_2016post_cat34SLlowpurity
text2workspace.py MX1000_MY600_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX1000_MY600_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX1000_MY600_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX1000_MY600_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX1000_MY600_2016post_cat34FHhighpurity.txt > MX1000_MY600_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MY600_2016post_cat34.txt
text2workspace.py MX1000_MY600_2016post_cat34.txt -m 125

# Mass point: MX1000_MY700
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX1000_MY700_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY700_2016post_cat34FHlowpurity --output MX1000_MY700_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY700_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY700_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY700_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY700_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34FHlowpurity
text2workspace.py MX1000_MY700_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH,ggyhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX1000_MY700_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY700_2016post_cat34FHhighpurity --output MX1000_MY700_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY700_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY700_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY700_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY700_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34FHhighpurity
text2workspace.py MX1000_MY700_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX1000_MY700_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY700_2016post_cat34SLhighpurity --output MX1000_MY700_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY700_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY700_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY700_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY700_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34SLhighpurity
text2workspace.py MX1000_MY700_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX1000_MY700_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY700_2016post_cat34SLlowpurity --output MX1000_MY700_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY700_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY700_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY700_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY700_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY700/ws_ggyhcombine_MX1000_MY700_2016post_cat34SLlowpurity
text2workspace.py MX1000_MY700_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX1000_MY700_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX1000_MY700_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX1000_MY700_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX1000_MY700_2016post_cat34FHhighpurity.txt > MX1000_MY700_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MY700_2016post_cat34.txt
text2workspace.py MX1000_MY700_2016post_cat34.txt -m 125

# Mass point: MX1000_MY800
mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyh*_cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34FHlowpurity --procs ggyhwwgg,ggyhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX1000_MY800_2016post_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY800_2016post_cat34FHlowpurity --output MX1000_MY800_2016post_cat34FHlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY800_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY800_2016post_cat34FHlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY800_2016post_cat34FHlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY800_2016post_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34FHlowpurity
text2workspace.py MX1000_MY800_2016post_cat34FHlowpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyh*_cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34FHhighpurity --procs ggyhwwgg,ggyhVBF,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX1000_MY800_2016post_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY800_2016post_cat34FHhighpurity --output MX1000_MY800_2016post_cat34FHhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY800_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY800_2016post_cat34FHhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY800_2016post_cat34FHhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY800_2016post_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34FHhighpurity
text2workspace.py MX1000_MY800_2016post_cat34FHhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyh*_cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34SLhighpurity --procs ggyhwwgg,ggyhTTH,ggyhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX1000_MY800_2016post_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY800_2016post_cat34SLhighpurity --output MX1000_MY800_2016post_cat34SLhighpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY800_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY800_2016post_cat34SLhighpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY800_2016post_cat34SLhighpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY800_2016post_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34SLhighpurity
text2workspace.py MX1000_MY800_2016post_cat34SLhighpurity.txt -m 125

mkdir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyh*_cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34SLlowpurity --procs ggyhwwgg,ggyhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX1000_MY800_2016post_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MY800_2016post_cat34SLlowpurity --output MX1000_MY800_2016post_cat34SLlowpurity
strlist=($(grep "shapes *ggyh*" MX1000_MY800_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_ggyhcombine/s//ws_${str}/" MX1000_MY800_2016post_cat34SLlowpurity.txt
    sed -i "0,/purity\/CMS/s//purity_${str#ggyh}\/CMS/" MX1000_MY800_2016post_cat34SLlowpurity.txt
done
sed -i 's/2016post=//g' MX1000_MY800_2016post_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/YH_flashggws/cat34/2016post/MX1000_MY800/ws_ggyhcombine_MX1000_MY800_2016post_cat34SLlowpurity
text2workspace.py MX1000_MY800_2016post_cat34SLlowpurity.txt -m 125

combineCards.py cat34SLlowpurity_2016post=MX1000_MY800_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX1000_MY800_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX1000_MY800_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX1000_MY800_2016post_cat34FHhighpurity.txt > MX1000_MY800_2016post_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MY800_2016post_cat34.txt
text2workspace.py MX1000_MY800_2016post_cat34.txt -m 125
