mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12lowpurity/
python RunYields_17boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX500_MH125_2017_cat12lowpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX500_MH125_2017_cat12lowpurity --output MX500_MH125_2017_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2017_cat12lowpurity.txt'
done
sed -i 's/2017=//g' MX500_MH125_2017_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12lowpurity
text2workspace.py MX500_MH125_2017_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12highpurity/
python RunYields_17boosted_combined.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_2017_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX500_MH125_2017_cat12highpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX500_MH125_2017_cat12highpurity --output MX500_MH125_2017_cat12highpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2017_cat12highpurity.txt'
done
sed -i 's/2017=//g' MX500_MH125_2017_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12highpurity
text2workspace.py MX500_MH125_2017_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2017=MX500_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX500_MH125_2017_cat12highpurity.txt > MX500_MH125_2017_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX500_MH125_2017_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX500_MH125_2017_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MH125_2017_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghhcombine_MX550_MH125_2017_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghhcombine_MX550_MH125_2017_cat12lowpurity/
python RunYields_17boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghhcombine_MX550_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghhcombine_MX550_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX550_MH125_2017_cat12lowpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX550_MH125_2017_cat12lowpurity --output MX550_MH125_2017_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX550_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2017_cat12lowpurity.txt'
done
sed -i 's/2017=//g' MX550_MH125_2017_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghhcombine_MX550_MH125_2017_cat12lowpurity
text2workspace.py MX550_MH125_2017_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghhcombine_MX550_MH125_2017_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghhcombine_MX550_MH125_2017_cat12highpurity/
python RunYields_17boosted_combined.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghhcombine_MX550_MH125_2017_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghhcombine_MX550_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_2017_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX550_MH125_2017_cat12highpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX550_MH125_2017_cat12highpurity --output MX550_MH125_2017_cat12highpurity
strlist=($(grep "shapes *gghh*" MX550_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2017_cat12highpurity.txt'
done
sed -i 's/2017=//g' MX550_MH125_2017_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX550_MH125/ws_gghhcombine_MX550_MH125_2017_cat12highpurity
text2workspace.py MX550_MH125_2017_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2017=MX550_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX550_MH125_2017_cat12highpurity.txt > MX550_MH125_2017_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX550_MH125_2017_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX550_MH125_2017_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX550_MH125_2017_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghhcombine_MX600_MH125_2017_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghhcombine_MX600_MH125_2017_cat12lowpurity/
python RunYields_17boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghhcombine_MX600_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghhcombine_MX600_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX600_MH125_2017_cat12lowpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX600_MH125_2017_cat12lowpurity --output MX600_MH125_2017_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX600_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2017_cat12lowpurity.txt'
done
sed -i 's/2017=//g' MX600_MH125_2017_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghhcombine_MX600_MH125_2017_cat12lowpurity
text2workspace.py MX600_MH125_2017_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghhcombine_MX600_MH125_2017_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghhcombine_MX600_MH125_2017_cat12highpurity/
python RunYields_17boosted_combined.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghhcombine_MX600_MH125_2017_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghhcombine_MX600_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_2017_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX600_MH125_2017_cat12highpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX600_MH125_2017_cat12highpurity --output MX600_MH125_2017_cat12highpurity
strlist=($(grep "shapes *gghh*" MX600_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2017_cat12highpurity.txt'
done
sed -i 's/2017=//g' MX600_MH125_2017_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX600_MH125/ws_gghhcombine_MX600_MH125_2017_cat12highpurity
text2workspace.py MX600_MH125_2017_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2017=MX600_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX600_MH125_2017_cat12highpurity.txt > MX600_MH125_2017_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX600_MH125_2017_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX600_MH125_2017_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX600_MH125_2017_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghhcombine_MX650_MH125_2017_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghhcombine_MX650_MH125_2017_cat12lowpurity/
python RunYields_17boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghhcombine_MX650_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghhcombine_MX650_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX650_MH125_2017_cat12lowpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX650_MH125_2017_cat12lowpurity --output MX650_MH125_2017_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX650_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2017_cat12lowpurity.txt'
done
sed -i 's/2017=//g' MX650_MH125_2017_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghhcombine_MX650_MH125_2017_cat12lowpurity
text2workspace.py MX650_MH125_2017_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghhcombine_MX650_MH125_2017_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghhcombine_MX650_MH125_2017_cat12highpurity/
python RunYields_17boosted_combined.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghhcombine_MX650_MH125_2017_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghhcombine_MX650_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_2017_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX650_MH125_2017_cat12highpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX650_MH125_2017_cat12highpurity --output MX650_MH125_2017_cat12highpurity
strlist=($(grep "shapes *gghh*" MX650_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2017_cat12highpurity.txt'
done
sed -i 's/2017=//g' MX650_MH125_2017_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX650_MH125/ws_gghhcombine_MX650_MH125_2017_cat12highpurity
text2workspace.py MX650_MH125_2017_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2017=MX650_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX650_MH125_2017_cat12highpurity.txt > MX650_MH125_2017_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX650_MH125_2017_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX650_MH125_2017_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX650_MH125_2017_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghhcombine_MX700_MH125_2017_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghhcombine_MX700_MH125_2017_cat12lowpurity/
python RunYields_17boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghhcombine_MX700_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghhcombine_MX700_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX700_MH125_2017_cat12lowpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX700_MH125_2017_cat12lowpurity --output MX700_MH125_2017_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX700_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2017_cat12lowpurity.txt'
done
sed -i 's/2017=//g' MX700_MH125_2017_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghhcombine_MX700_MH125_2017_cat12lowpurity
text2workspace.py MX700_MH125_2017_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghhcombine_MX700_MH125_2017_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghhcombine_MX700_MH125_2017_cat12highpurity/
python RunYields_17boosted_combined.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghhcombine_MX700_MH125_2017_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghhcombine_MX700_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_2017_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX700_MH125_2017_cat12highpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX700_MH125_2017_cat12highpurity --output MX700_MH125_2017_cat12highpurity
strlist=($(grep "shapes *gghh*" MX700_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2017_cat12highpurity.txt'
done
sed -i 's/2017=//g' MX700_MH125_2017_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX700_MH125/ws_gghhcombine_MX700_MH125_2017_cat12highpurity
text2workspace.py MX700_MH125_2017_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2017=MX700_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX700_MH125_2017_cat12highpurity.txt > MX700_MH125_2017_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX700_MH125_2017_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX700_MH125_2017_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX700_MH125_2017_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghhcombine_MX750_MH125_2017_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghhcombine_MX750_MH125_2017_cat12lowpurity/
python RunYields_17boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghhcombine_MX750_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghhcombine_MX750_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX750_MH125_2017_cat12lowpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX750_MH125_2017_cat12lowpurity --output MX750_MH125_2017_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX750_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2017_cat12lowpurity.txt'
done
sed -i 's/2017=//g' MX750_MH125_2017_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghhcombine_MX750_MH125_2017_cat12lowpurity
text2workspace.py MX750_MH125_2017_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghhcombine_MX750_MH125_2017_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghhcombine_MX750_MH125_2017_cat12highpurity/
python RunYields_17boosted_combined.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghhcombine_MX750_MH125_2017_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghhcombine_MX750_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_2017_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX750_MH125_2017_cat12highpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX750_MH125_2017_cat12highpurity --output MX750_MH125_2017_cat12highpurity
strlist=($(grep "shapes *gghh*" MX750_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2017_cat12highpurity.txt'
done
sed -i 's/2017=//g' MX750_MH125_2017_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX750_MH125/ws_gghhcombine_MX750_MH125_2017_cat12highpurity
text2workspace.py MX750_MH125_2017_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2017=MX750_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX750_MH125_2017_cat12highpurity.txt > MX750_MH125_2017_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX750_MH125_2017_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX750_MH125_2017_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX750_MH125_2017_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghhcombine_MX800_MH125_2017_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghhcombine_MX800_MH125_2017_cat12lowpurity/
python RunYields_17boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghhcombine_MX800_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghhcombine_MX800_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX800_MH125_2017_cat12lowpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX800_MH125_2017_cat12lowpurity --output MX800_MH125_2017_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX800_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2017_cat12lowpurity.txt'
done
sed -i 's/2017=//g' MX800_MH125_2017_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghhcombine_MX800_MH125_2017_cat12lowpurity
text2workspace.py MX800_MH125_2017_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghhcombine_MX800_MH125_2017_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghhcombine_MX800_MH125_2017_cat12highpurity/
python RunYields_17boosted_combined.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghhcombine_MX800_MH125_2017_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghhcombine_MX800_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_2017_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX800_MH125_2017_cat12highpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX800_MH125_2017_cat12highpurity --output MX800_MH125_2017_cat12highpurity
strlist=($(grep "shapes *gghh*" MX800_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2017_cat12highpurity.txt'
done
sed -i 's/2017=//g' MX800_MH125_2017_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX800_MH125/ws_gghhcombine_MX800_MH125_2017_cat12highpurity
text2workspace.py MX800_MH125_2017_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2017=MX800_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX800_MH125_2017_cat12highpurity.txt > MX800_MH125_2017_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX800_MH125_2017_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX800_MH125_2017_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX800_MH125_2017_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghhcombine_MX850_MH125_2017_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghhcombine_MX850_MH125_2017_cat12lowpurity/
python RunYields_17boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghhcombine_MX850_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghhcombine_MX850_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX850_MH125_2017_cat12lowpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX850_MH125_2017_cat12lowpurity --output MX850_MH125_2017_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX850_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX850_MH125_2017_cat12lowpurity.txt'
done
sed -i 's/2017=//g' MX850_MH125_2017_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghhcombine_MX850_MH125_2017_cat12lowpurity
text2workspace.py MX850_MH125_2017_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghhcombine_MX850_MH125_2017_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghhcombine_MX850_MH125_2017_cat12highpurity/
python RunYields_17boosted_combined.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghhcombine_MX850_MH125_2017_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghhcombine_MX850_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_2017_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX850_MH125_2017_cat12highpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX850_MH125_2017_cat12highpurity --output MX850_MH125_2017_cat12highpurity
strlist=($(grep "shapes *gghh*" MX850_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX850_MH125_2017_cat12highpurity.txt'
done
sed -i 's/2017=//g' MX850_MH125_2017_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX850_MH125/ws_gghhcombine_MX850_MH125_2017_cat12highpurity
text2workspace.py MX850_MH125_2017_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2017=MX850_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX850_MH125_2017_cat12highpurity.txt > MX850_MH125_2017_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX850_MH125_2017_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX850_MH125_2017_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX850_MH125_2017_cat12.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2017_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2017_cat12lowpurity/
python RunYields_17boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX1000_MH125_2017_cat12lowpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX1000_MH125_2017_cat12lowpurity --output MX1000_MH125_2017_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2017_cat12lowpurity.txt'
done
sed -i 's/2017=//g' MX1000_MH125_2017_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2017_cat12lowpurity
text2workspace.py MX1000_MH125_2017_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2017_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2017_cat12highpurity/
python RunYields_17boosted_combined.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2017_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_2017_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX1000_MH125_2017_cat12highpurity
python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX1000_MH125_2017_cat12highpurity --output MX1000_MH125_2017_cat12highpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2017_cat12highpurity.txt'
done
sed -i 's/2017=//g' MX1000_MH125_2017_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12checkw/2017/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2017_cat12highpurity
text2workspace.py MX1000_MH125_2017_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2017=MX1000_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX1000_MH125_2017_cat12highpurity.txt > MX1000_MH125_2017_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1000_MH125_2017_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1000_MH125_2017_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MH125_2017_cat12.txt
 
