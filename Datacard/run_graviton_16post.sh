mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX500_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX500_MH125_2016post_cat12lowpurity --output MX500_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX500_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX500_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12lowpurity
text2workspace.py MX500_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX500_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX500_MH125_2016post_cat12highpurity --output MX500_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX500_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX500_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat12highpurity
text2workspace.py MX500_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX500_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX500_MH125_2016post_cat12highpurity.txt > MX500_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX550_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX550_MH125_2016post_cat12lowpurity --output MX550_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX550_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX550_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX550_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12lowpurity
text2workspace.py MX550_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX550_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX550_MH125_2016post_cat12highpurity --output MX550_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX550_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX550_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX550_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat12highpurity
text2workspace.py MX550_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX550_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX550_MH125_2016post_cat12highpurity.txt > MX550_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX550_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX600_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX600_MH125_2016post_cat12lowpurity --output MX600_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX600_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX600_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX600_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12lowpurity
text2workspace.py MX600_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX600_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX600_MH125_2016post_cat12highpurity --output MX600_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX600_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX600_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX600_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat12highpurity
text2workspace.py MX600_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX600_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX600_MH125_2016post_cat12highpurity.txt > MX600_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX600_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX650_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX650_MH125_2016post_cat12lowpurity --output MX650_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX650_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX650_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX650_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12lowpurity
text2workspace.py MX650_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX650_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX650_MH125_2016post_cat12highpurity --output MX650_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX650_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX650_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX650_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat12highpurity
text2workspace.py MX650_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX650_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX650_MH125_2016post_cat12highpurity.txt > MX650_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX650_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX700_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX700_MH125_2016post_cat12lowpurity --output MX700_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX700_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX700_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX700_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12lowpurity
text2workspace.py MX700_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX700_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX700_MH125_2016post_cat12highpurity --output MX700_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX700_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX700_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX700_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat12highpurity
text2workspace.py MX700_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX700_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX700_MH125_2016post_cat12highpurity.txt > MX700_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX700_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX750_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX750_MH125_2016post_cat12lowpurity --output MX750_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX750_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX750_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX750_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12lowpurity
text2workspace.py MX750_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX750_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX750_MH125_2016post_cat12highpurity --output MX750_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX750_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX750_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX750_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat12highpurity
text2workspace.py MX750_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX750_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX750_MH125_2016post_cat12highpurity.txt > MX750_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX750_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX800_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX800_MH125_2016post_cat12lowpurity --output MX800_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX800_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX800_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX800_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12lowpurity
text2workspace.py MX800_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX800_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX800_MH125_2016post_cat12highpurity --output MX800_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX800_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX800_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX800_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat12highpurity
text2workspace.py MX800_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX800_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX800_MH125_2016post_cat12highpurity.txt > MX800_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX800_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX900_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX900_MH125_2016post_cat12lowpurity --output MX900_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX900_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX900_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX900_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX900_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat12lowpurity
text2workspace.py MX900_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX900_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX900_MH125_2016post_cat12highpurity --output MX900_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX900_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX900_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX900_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX900_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat12highpurity
text2workspace.py MX900_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX900_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX900_MH125_2016post_cat12highpurity.txt > MX900_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX900_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1000_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1000_MH125_2016post_cat12lowpurity --output MX1000_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1000_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX1000_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12lowpurity
text2workspace.py MX1000_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1000_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1000_MH125_2016post_cat12highpurity --output MX1000_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1000_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX1000_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat12highpurity
text2workspace.py MX1000_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX1000_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1000_MH125_2016post_cat12highpurity.txt > MX1000_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghhcombine_MX1250_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghhcombine_MX1250_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghhcombine_MX1250_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghhcombine_MX1250_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1250_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1250_MH125_2016post_cat12lowpurity --output MX1250_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX1250_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1250_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1250_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX1250_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghhcombine_MX1250_MH125_2016post_cat12lowpurity
text2workspace.py MX1250_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghhcombine_MX1250_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghhcombine_MX1250_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghhcombine_MX1250_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghhcombine_MX1250_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1250_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1250_MH125_2016post_cat12highpurity --output MX1250_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX1250_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1250_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1250_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX1250_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1250_MH125/ws_gghhcombine_MX1250_MH125_2016post_cat12highpurity
text2workspace.py MX1250_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX1250_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1250_MH125_2016post_cat12highpurity.txt > MX1250_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1250_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1500_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1500_MH125_2016post_cat12lowpurity --output MX1500_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX1500_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1500_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1500_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX1500_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12lowpurity
text2workspace.py MX1500_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1500_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1500_MH125_2016post_cat12highpurity --output MX1500_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX1500_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1500_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1500_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX1500_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1500_MH125/ws_gghhcombine_MX1500_MH125_2016post_cat12highpurity
text2workspace.py MX1500_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX1500_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1500_MH125_2016post_cat12highpurity.txt > MX1500_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1500_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghhcombine_MX1750_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghhcombine_MX1750_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghhcombine_MX1750_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghhcombine_MX1750_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1750_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1750_MH125_2016post_cat12lowpurity --output MX1750_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX1750_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1750_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1750_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX1750_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghhcombine_MX1750_MH125_2016post_cat12lowpurity
text2workspace.py MX1750_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghhcombine_MX1750_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghhcombine_MX1750_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghhcombine_MX1750_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghhcombine_MX1750_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1750_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX1750_MH125_2016post_cat12highpurity --output MX1750_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX1750_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1750_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1750_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX1750_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX1750_MH125/ws_gghhcombine_MX1750_MH125_2016post_cat12highpurity
text2workspace.py MX1750_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX1750_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX1750_MH125_2016post_cat12highpurity.txt > MX1750_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1750_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX2000_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2000_MH125_2016post_cat12lowpurity --output MX2000_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX2000_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2000_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX2000_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX2000_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12lowpurity
text2workspace.py MX2000_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX2000_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2000_MH125_2016post_cat12highpurity --output MX2000_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX2000_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2000_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX2000_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX2000_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2000_MH125/ws_gghhcombine_MX2000_MH125_2016post_cat12highpurity
text2workspace.py MX2000_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX2000_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX2000_MH125_2016post_cat12highpurity.txt > MX2000_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX2000_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX2500_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2500_MH125_2016post_cat12lowpurity --output MX2500_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX2500_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2500_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX2500_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX2500_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2016post_cat12lowpurity
text2workspace.py MX2500_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX2500_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX2500_MH125_2016post_cat12highpurity --output MX2500_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX2500_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX2500_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX2500_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX2500_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX2500_MH125/ws_gghhcombine_MX2500_MH125_2016post_cat12highpurity
text2workspace.py MX2500_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX2500_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX2500_MH125_2016post_cat12highpurity.txt > MX2500_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX2500_MH125_2016post_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12lowpurity/
python RunYields_16boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12lowpurity --procs gghhwwgg,gghhttgg,gghhVBF,gghhTTH,gghhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_2016post_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX3000_MH125_2016post_cat12lowpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX3000_MH125_2016post_cat12lowpurity --output MX3000_MH125_2016post_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX3000_MH125_2016post_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX3000_MH125_2016post_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX3000_MH125_2016post_cat12lowpurity.txt'
done
sed -i 's/2016post=//g' MX3000_MH125_2016post_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12lowpurity
text2workspace.py MX3000_MH125_2016post_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12highpurity/
python RunYields_16boosted_combined.py --cats cat12highpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_2016post_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX3000_MH125_2016post_cat12highpurity
python makeDatacard_16boosted_combined.py --years 2016post --doSystematics --prune --ext MX3000_MH125_2016post_cat12highpurity --output MX3000_MH125_2016post_cat12highpurity
strlist=($(grep "shapes *gghh*" MX3000_MH125_2016post_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX3000_MH125_2016post_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX3000_MH125_2016post_cat12highpurity.txt'
done
sed -i 's/2016post=//g' MX3000_MH125_2016post_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12_graviton/2016post/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2016post_cat12highpurity
text2workspace.py MX3000_MH125_2016post_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2016post=MX3000_MH125_2016post_cat12lowpurity.txt cat12highpurity_2016post=MX3000_MH125_2016post_cat12highpurity.txt > MX3000_MH125_2016post_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX3000_MH125_2016post_cat12.txt
 

# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX250_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX250_MH125_2016post_cat34FHlowpurity --output MX250_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX250_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX250_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX250_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX250_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX250_MH125_2016post_cat34FHhighpurity --output MX250_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX250_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX250_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX250_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# cp Datacard_MX250_MH125_2016post_wwgg_cat34SLhighpurity.txt MX250_MH125_2016post_cat34SLhighpurity.txt
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX250_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX250_MH125_2016post_cat34SLlowpurity --output MX250_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX250_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX250_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX250_MH125/ws_gghhcombine_MX250_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX250_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX250_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX250_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX250_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX250_MH125_2016post_cat34FHhighpurity.txt > MX250_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX250_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX260_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX260_MH125_2016post_cat34FHlowpurity --output MX260_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX260_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX260_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX260_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX260_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX260_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX260_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX260_MH125_2016post_cat34FHhighpurity --output MX260_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX260_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX260_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX260_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX260_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX260_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# cp Datacard_MX260_MH125_2016post_wwgg_cat34SLhighpurity.txt MX260_MH125_2016post_cat34SLhighpurity.txt
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX260_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX260_MH125_2016post_cat34SLlowpurity --output MX260_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX260_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX260_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX260_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX260_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX260_MH125/ws_gghhcombine_MX260_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX260_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX260_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX260_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX260_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX260_MH125_2016post_cat34FHhighpurity.txt > MX260_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX260_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX270_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX270_MH125_2016post_cat34FHlowpurity --output MX270_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX270_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX270_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX270_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX270_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX270_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX270_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX270_MH125_2016post_cat34FHhighpurity --output MX270_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX270_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX270_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX270_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX270_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX270_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# cp Datacard_MX270_MH125_2016post_wwgg_cat34SLhighpurity.txt MX270_MH125_2016post_cat34SLhighpurity.txt
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX270_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX270_MH125_2016post_cat34SLlowpurity --output MX270_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX270_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX270_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX270_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX270_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX270_MH125/ws_gghhcombine_MX270_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX270_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX270_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX270_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX270_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX270_MH125_2016post_cat34FHhighpurity.txt > MX270_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX270_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX280_MH125/ws_gghhcombine_MX280_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX280_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX280_MH125/ws_gghhcombine_MX280_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX280_MH125/ws_gghhcombine_MX280_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX280_MH125/ws_gghhcombine_MX280_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX280_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX280_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX280_MH125_2016post_cat34FHlowpurity --output MX280_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX280_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX280_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX280_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX280_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX280_MH125/ws_gghhcombine_MX280_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX280_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# cp MX280_MH125_2016post_cat34FHlowpurity.txt MX280_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX280_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX300_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX300_MH125_2016post_cat34FHlowpurity --output MX300_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX300_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX300_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX300_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX300_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX300_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX300_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX300_MH125_2016post_cat34FHhighpurity --output MX300_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX300_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX300_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX300_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX300_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX300_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX300_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX300_MH125_2016post_cat34SLhighpurity --output MX300_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX300_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX300_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX300_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX300_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX300_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX300_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX300_MH125_2016post_cat34SLlowpurity --output MX300_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX300_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX300_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX300_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX300_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX300_MH125/ws_gghhcombine_MX300_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX300_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX300_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX300_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX300_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX300_MH125_2016post_cat34FHhighpurity.txt > MX300_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX300_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX320_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX320_MH125_2016post_cat34FHlowpurity --output MX320_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX320_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX320_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH,gghhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX320_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX320_MH125_2016post_cat34FHhighpurity --output MX320_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX320_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX320_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX320_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX320_MH125_2016post_cat34SLhighpurity --output MX320_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX320_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX320_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX320_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX320_MH125_2016post_cat34SLlowpurity --output MX320_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX320_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX320_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX320_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX320_MH125/ws_gghhcombine_MX320_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX320_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX320_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX320_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX320_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX320_MH125_2016post_cat34FHhighpurity.txt > MX320_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX320_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX350_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX350_MH125_2016post_cat34FHlowpurity --output MX350_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX350_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX350_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX350_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX350_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX350_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX350_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX350_MH125_2016post_cat34FHhighpurity --output MX350_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX350_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX350_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX350_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX350_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX350_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX350_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX350_MH125_2016post_cat34SLhighpurity --output MX350_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX350_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX350_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX350_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX350_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX350_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX350_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX350_MH125_2016post_cat34SLlowpurity --output MX350_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX350_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX350_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX350_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX350_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX350_MH125/ws_gghhcombine_MX350_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX350_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX350_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX350_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX350_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX350_MH125_2016post_cat34FHhighpurity.txt > MX350_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX350_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX400_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX400_MH125_2016post_cat34FHlowpurity --output MX400_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX400_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX400_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX400_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX400_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX400_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX400_MH125_2016post_cat34FHhighpurity --output MX400_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX400_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX400_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX400_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX400_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX400_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX400_MH125_2016post_cat34SLhighpurity --output MX400_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX400_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX400_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX400_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX400_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX400_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX400_MH125_2016post_cat34SLlowpurity --output MX400_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX400_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX400_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX400_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX400_MH125/ws_gghhcombine_MX400_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX400_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX400_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX400_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX400_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX400_MH125_2016post_cat34FHhighpurity.txt > MX400_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX400_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX450_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX450_MH125_2016post_cat34FHlowpurity --output MX450_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX450_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX450_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX450_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX450_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX450_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH,gghhVH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX450_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX450_MH125_2016post_cat34FHhighpurity --output MX450_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX450_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX450_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX450_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX450_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX450_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX450_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX450_MH125_2016post_cat34SLhighpurity --output MX450_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX450_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX450_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX450_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX450_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX450_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX450_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX450_MH125_2016post_cat34SLlowpurity --output MX450_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX450_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX450_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX450_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX450_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX450_MH125/ws_gghhcombine_MX450_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX450_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX450_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX450_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX450_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX450_MH125_2016post_cat34FHhighpurity.txt > MX450_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX450_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX500_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MH125_2016post_cat34FHlowpurity --output MX500_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX500_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX500_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX500_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX500_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX500_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MH125_2016post_cat34FHhighpurity --output MX500_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX500_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX500_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX500_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX500_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX500_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MH125_2016post_cat34SLhighpurity --output MX500_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX500_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX500_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX500_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX500_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX500_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX500_MH125_2016post_cat34SLlowpurity --output MX500_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX500_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX500_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX500_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX500_MH125/ws_gghhcombine_MX500_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX500_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX500_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX500_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX500_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX500_MH125_2016post_cat34FHhighpurity.txt > MX500_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX550_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX550_MH125_2016post_cat34FHlowpurity --output MX550_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX550_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX550_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX550_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX550_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX550_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX550_MH125_2016post_cat34FHhighpurity --output MX550_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX550_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX550_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX550_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX550_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX550_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX550_MH125_2016post_cat34SLhighpurity --output MX550_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX550_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX550_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX550_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX550_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX550_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX550_MH125_2016post_cat34SLlowpurity --output MX550_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX550_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX550_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX550_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX550_MH125/ws_gghhcombine_MX550_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX550_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX550_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX550_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX550_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX550_MH125_2016post_cat34FHhighpurity.txt > MX550_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX550_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX600_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MH125_2016post_cat34FHlowpurity --output MX600_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX600_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX600_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX600_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX600_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX600_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MH125_2016post_cat34FHhighpurity --output MX600_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX600_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX600_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX600_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX600_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX600_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX600_MH125_2016post_cat34SLhighpurity --output MX600_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX600_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX600_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX600_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX600_MH125/ws_gghhcombine_MX600_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX600_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# cp Datacard_MX600_MH125_2016post_wwgg_cat34SLlowpurity.txt MX600_MH125_2016post_cat34SLlowpurity.txt
# combineCards.py  cat34SLlowpurity_2016post=MX600_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX600_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX600_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX600_MH125_2016post_cat34FHhighpurity.txt > MX600_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX600_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX650_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX650_MH125_2016post_cat34FHlowpurity --output MX650_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX650_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX650_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX650_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX650_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX650_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX650_MH125_2016post_cat34FHhighpurity --output MX650_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX650_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX650_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX650_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX650_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX650_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX650_MH125_2016post_cat34SLhighpurity --output MX650_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX650_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX650_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX650_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX650_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX650_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX650_MH125_2016post_cat34SLlowpurity --output MX650_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX650_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX650_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX650_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX650_MH125/ws_gghhcombine_MX650_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX650_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX650_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX650_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX650_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX650_MH125_2016post_cat34FHhighpurity.txt > MX650_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX650_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX700_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MH125_2016post_cat34FHlowpurity --output MX700_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX700_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX700_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX700_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX700_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX700_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MH125_2016post_cat34FHhighpurity --output MX700_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX700_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX700_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX700_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX700_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX700_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MH125_2016post_cat34SLhighpurity --output MX700_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX700_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX700_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX700_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX700_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34SLlowpurity/
# python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34SLlowpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_2016post_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX700_MH125_2016post_cat34SLlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX700_MH125_2016post_cat34SLlowpurity --output MX700_MH125_2016post_cat34SLlowpurity
# strlist=($(grep "shapes *gghh*" MX700_MH125_2016post_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016post_cat34SLlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX700_MH125_2016post_cat34SLlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX700_MH125_2016post_cat34SLlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX700_MH125/ws_gghhcombine_MX700_MH125_2016post_cat34SLlowpurity
# text2workspace.py MX700_MH125_2016post_cat34SLlowpurity.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2016post=MX700_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX700_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX700_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX700_MH125_2016post_cat34FHhighpurity.txt > MX700_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX700_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX750_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX750_MH125_2016post_cat34FHlowpurity --output MX750_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX750_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX750_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX750_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX750_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX750_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX750_MH125_2016post_cat34FHhighpurity --output MX750_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX750_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX750_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX750_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX750_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX750_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX750_MH125_2016post_cat34SLhighpurity --output MX750_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX750_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX750_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX750_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX750_MH125/ws_gghhcombine_MX750_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX750_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# combineCards.py   cat34SLhighpurity_2016post=MX750_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX750_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX750_MH125_2016post_cat34FHhighpurity.txt > MX750_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX750_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX800_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MH125_2016post_cat34FHlowpurity --output MX800_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX800_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX800_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX800_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX800_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34FHhighpurity/
# python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_2016post_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX800_MH125_2016post_cat34FHhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MH125_2016post_cat34FHhighpurity --output MX800_MH125_2016post_cat34FHhighpurity
# strlist=($(grep "shapes *gghh*" MX800_MH125_2016post_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2016post_cat34FHhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX800_MH125_2016post_cat34FHhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX800_MH125_2016post_cat34FHhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34FHhighpurity
# text2workspace.py MX800_MH125_2016post_cat34FHhighpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX800_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX800_MH125_2016post_cat34SLhighpurity --output MX800_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX800_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX800_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX800_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX800_MH125/ws_gghhcombine_MX800_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX800_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# cp Datacard_MX800_MH125_2016post_wwgg_cat34SLlowpurity.txt MX800_MH125_2016post_cat34SLlowpurity.txt
# combineCards.py  cat34SLlowpurity_2016post=MX800_MH125_2016post_cat34SLlowpurity.txt cat34SLhighpurity_2016post=MX800_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX800_MH125_2016post_cat34FHlowpurity.txt cat34FHhighpurity_2016post=MX800_MH125_2016post_cat34FHhighpurity.txt > MX800_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX800_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX900_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MH125_2016post_cat34FHlowpurity --output MX900_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX900_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX900_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX900_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX900_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX900_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX900_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX900_MH125_2016post_cat34SLhighpurity --output MX900_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX900_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX900_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX900_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX900_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX900_MH125/ws_gghhcombine_MX900_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX900_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# combineCards.py   cat34SLhighpurity_2016post=MX900_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX900_MH125_2016post_cat34FHlowpurity.txt  > MX900_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX900_MH125_2016post_cat34.txt
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat34FHlowpurity/
# python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_2016post_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX1000_MH125_2016post_cat34FHlowpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MH125_2016post_cat34FHlowpurity --output MX1000_MH125_2016post_cat34FHlowpurity
# strlist=($(grep "shapes *gghh*" MX1000_MH125_2016post_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016post_cat34FHlowpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1000_MH125_2016post_cat34FHlowpurity.txt'
# done
# sed -i 's/2016post=//g' MX1000_MH125_2016post_cat34FHlowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat34FHlowpurity
# text2workspace.py MX1000_MH125_2016post_cat34FHlowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat34SLhighpurity/
# python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016post=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_2016post_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX1000_MH125_2016post_cat34SLhighpurity
# python makeDatacard_16resolved_combined.py --years 2016post --doSystematics --prune --ext MX1000_MH125_2016post_cat34SLhighpurity --output MX1000_MH125_2016post_cat34SLhighpurity
# strlist=($(grep "shapes *gghh*" MX1000_MH125_2016post_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016post_cat34SLhighpurity.txt'
#     sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1000_MH125_2016post_cat34SLhighpurity.txt'
# done
# sed -i 's/2016post=//g' MX1000_MH125_2016post_cat34SLhighpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_graviton/2016post/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016post_cat34SLhighpurity
# text2workspace.py MX1000_MH125_2016post_cat34SLhighpurity.txt -m 125 
 
# combineCards.py   cat34SLhighpurity_2016post=MX1000_MH125_2016post_cat34SLhighpurity.txt cat34FHlowpurity_2016post=MX1000_MH125_2016post_cat34FHlowpurity.txt  > MX1000_MH125_2016post_cat34.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MH125_2016post_cat34.txt
 
