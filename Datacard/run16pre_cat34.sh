mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX250_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX250_MH125_2016pre_cat34FHlowpurity --output MX250_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX250_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX250_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX250_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX250_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX250_MH125_2016pre_cat34FHhighpurity --output MX250_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX250_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX250_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX250_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX250_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX250_MH125_2016pre_cat34SLlowpurity --output MX250_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX250_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX250_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX250_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX250_MH125_2016pre_cat34SLlowpurity.txt  cat34FHlowpurity_2016pre=MX250_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX250_MH125_2016pre_cat34FHhighpurity.txt > MX250_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX250_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX250_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX250_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX260_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX260_MH125_2016pre_cat34FHlowpurity --output MX260_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX260_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX260_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX260_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX260_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX260_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX260_MH125_2016pre_cat34FHhighpurity --output MX260_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX260_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX260_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX260_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX260_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX260_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX260_MH125_2016pre_cat34SLlowpurity --output MX260_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX260_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX260_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX260_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX260_MH125/ws_gghhcombine_MX260_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX260_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX260_MH125_2016pre_cat34SLlowpurity.txt  cat34FHlowpurity_2016pre=MX260_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX260_MH125_2016pre_cat34FHhighpurity.txt > MX260_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX260_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX260_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX260_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX270_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX270_MH125_2016pre_cat34FHlowpurity --output MX270_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX270_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX270_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX270_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX270_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX270_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX270_MH125_2016pre_cat34FHhighpurity --output MX270_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX270_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX270_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX270_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX270_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX270_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX270_MH125_2016pre_cat34SLlowpurity --output MX270_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX270_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX270_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX270_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX270_MH125/ws_gghhcombine_MX270_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX270_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX270_MH125_2016pre_cat34SLlowpurity.txt  cat34FHlowpurity_2016pre=MX270_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX270_MH125_2016pre_cat34FHhighpurity.txt > MX270_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX270_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX270_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX270_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX280_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX280_MH125_2016pre_cat34FHlowpurity --output MX280_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX280_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX280_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX280_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX280_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX280_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX280_MH125_2016pre_cat34FHhighpurity --output MX280_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX280_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX280_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX280_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX280_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX280_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX280_MH125_2016pre_cat34SLlowpurity --output MX280_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX280_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX280_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX280_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX280_MH125/ws_gghhcombine_MX280_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX280_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX280_MH125_2016pre_cat34SLlowpurity.txt  cat34FHlowpurity_2016pre=MX280_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX280_MH125_2016pre_cat34FHhighpurity.txt > MX280_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX280_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX280_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX280_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX300_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX300_MH125_2016pre_cat34FHlowpurity --output MX300_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX300_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX300_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX300_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX300_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX300_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX300_MH125_2016pre_cat34FHhighpurity --output MX300_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX300_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX300_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX300_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX300_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX300_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX300_MH125_2016pre_cat34SLlowpurity --output MX300_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX300_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX300_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX300_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX300_MH125/ws_gghhcombine_MX300_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX300_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX300_MH125_2016pre_cat34SLlowpurity.txt  cat34FHlowpurity_2016pre=MX300_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX300_MH125_2016pre_cat34FHhighpurity.txt > MX300_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX300_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX300_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX300_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX320_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX320_MH125_2016pre_cat34FHlowpurity --output MX320_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX320_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX320_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX320_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX320_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX320_MH125_2016pre_cat34FHhighpurity --output MX320_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX320_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX320_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX320_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX320_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX320_MH125_2016pre_cat34SLlowpurity --output MX320_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX320_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX320_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX320_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX320_MH125/ws_gghhcombine_MX320_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX320_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX320_MH125_2016pre_cat34SLlowpurity.txt  cat34FHlowpurity_2016pre=MX320_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX320_MH125_2016pre_cat34FHhighpurity.txt > MX320_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX320_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX320_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX320_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX350_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX350_MH125_2016pre_cat34FHlowpurity --output MX350_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX350_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX350_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX350_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX350_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX350_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX350_MH125_2016pre_cat34FHhighpurity --output MX350_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX350_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX350_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX350_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX350_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX350_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX350_MH125_2016pre_cat34SLlowpurity --output MX350_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX350_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX350_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX350_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX350_MH125/ws_gghhcombine_MX350_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX350_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX350_MH125_2016pre_cat34SLlowpurity.txt  cat34FHlowpurity_2016pre=MX350_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX350_MH125_2016pre_cat34FHhighpurity.txt > MX350_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX350_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX350_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX350_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX400_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX400_MH125_2016pre_cat34FHlowpurity --output MX400_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX400_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX400_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX400_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX400_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX400_MH125_2016pre_cat34FHhighpurity --output MX400_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX400_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX400_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX400_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX400_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX400_MH125_2016pre_cat34SLlowpurity --output MX400_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX400_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX400_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX400_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX400_MH125_2016pre_cat34SLlowpurity.txt  cat34FHlowpurity_2016pre=MX400_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX400_MH125_2016pre_cat34FHhighpurity.txt > MX400_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX400_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX400_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX400_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX450_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX450_MH125_2016pre_cat34FHlowpurity --output MX450_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX450_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX450_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX450_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX450_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX450_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX450_MH125_2016pre_cat34FHhighpurity --output MX450_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX450_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX450_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX450_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX450_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX450_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX450_MH125_2016pre_cat34SLlowpurity --output MX450_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX450_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX450_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX450_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX450_MH125/ws_gghhcombine_MX450_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX450_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX450_MH125_2016pre_cat34SLlowpurity.txt  cat34FHlowpurity_2016pre=MX450_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX450_MH125_2016pre_cat34FHhighpurity.txt > MX450_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX450_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX450_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX450_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX500_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX500_MH125_2016pre_cat34FHlowpurity --output MX500_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX500_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX500_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX500_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX500_MH125_2016pre_cat34FHhighpurity --output MX500_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX500_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX500_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX500_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX500_MH125_2016pre_cat34SLlowpurity --output MX500_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX500_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX500_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX500_MH125_2016pre_cat34SLlowpurity.txt  cat34FHlowpurity_2016pre=MX500_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX500_MH125_2016pre_cat34FHhighpurity.txt > MX500_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX500_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX500_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghhcombine_MX550_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghhcombine_MX550_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghhcombine_MX550_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghhcombine_MX550_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX550_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX550_MH125_2016pre_cat34FHlowpurity --output MX550_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX550_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX550_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghhcombine_MX550_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX550_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghhcombine_MX550_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghhcombine_MX550_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghhcombine_MX550_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghhcombine_MX550_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX550_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX550_MH125_2016pre_cat34FHhighpurity --output MX550_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX550_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX550_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX550_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX550_MH125/ws_gghhcombine_MX550_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX550_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
combineCards.py    cat34FHlowpurity_2016pre=MX550_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX550_MH125_2016pre_cat34FHhighpurity.txt > MX550_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX550_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX550_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX550_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghhcombine_MX600_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghhcombine_MX600_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghhcombine_MX600_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghhcombine_MX600_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX600_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX600_MH125_2016pre_cat34FHlowpurity --output MX600_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX600_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX600_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghhcombine_MX600_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX600_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghhcombine_MX600_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghhcombine_MX600_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghhcombine_MX600_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghhcombine_MX600_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX600_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX600_MH125_2016pre_cat34FHhighpurity --output MX600_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX600_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX600_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX600_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX600_MH125/ws_gghhcombine_MX600_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX600_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
combineCards.py    cat34FHlowpurity_2016pre=MX600_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX600_MH125_2016pre_cat34FHhighpurity.txt > MX600_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX600_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX600_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX600_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghhcombine_MX650_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghhcombine_MX650_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghhcombine_MX650_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghhcombine_MX650_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX650_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX650_MH125_2016pre_cat34FHlowpurity --output MX650_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX650_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX650_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghhcombine_MX650_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX650_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghhcombine_MX650_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghhcombine_MX650_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghhcombine_MX650_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghhcombine_MX650_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX650_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX650_MH125_2016pre_cat34FHhighpurity --output MX650_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX650_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX650_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX650_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX650_MH125/ws_gghhcombine_MX650_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX650_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
combineCards.py    cat34FHlowpurity_2016pre=MX650_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX650_MH125_2016pre_cat34FHhighpurity.txt > MX650_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX650_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX650_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX650_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX700_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX700_MH125_2016pre_cat34FHlowpurity --output MX700_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX700_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX700_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX700_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX700_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX700_MH125_2016pre_cat34FHhighpurity --output MX700_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX700_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX700_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX700_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
combineCards.py    cat34FHlowpurity_2016pre=MX700_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX700_MH125_2016pre_cat34FHhighpurity.txt > MX700_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX700_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX700_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX700_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghhcombine_MX750_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghhcombine_MX750_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghhcombine_MX750_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghhcombine_MX750_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX750_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX750_MH125_2016pre_cat34FHlowpurity --output MX750_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX750_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX750_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghhcombine_MX750_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX750_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghhcombine_MX750_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghhcombine_MX750_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghhcombine_MX750_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghhcombine_MX750_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX750_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX750_MH125_2016pre_cat34FHhighpurity --output MX750_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX750_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX750_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX750_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX750_MH125/ws_gghhcombine_MX750_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX750_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
combineCards.py    cat34FHlowpurity_2016pre=MX750_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX750_MH125_2016pre_cat34FHhighpurity.txt > MX750_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX750_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX750_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX750_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghhcombine_MX800_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghhcombine_MX800_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghhcombine_MX800_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghhcombine_MX800_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX800_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX800_MH125_2016pre_cat34FHlowpurity --output MX800_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX800_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX800_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghhcombine_MX800_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX800_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghhcombine_MX800_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghhcombine_MX800_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghhcombine_MX800_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghhcombine_MX800_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX800_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX800_MH125_2016pre_cat34FHhighpurity --output MX800_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX800_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX800_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX800_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX800_MH125/ws_gghhcombine_MX800_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX800_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
combineCards.py    cat34FHlowpurity_2016pre=MX800_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX800_MH125_2016pre_cat34FHhighpurity.txt > MX800_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX800_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX800_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX800_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghhcombine_MX850_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghhcombine_MX850_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghhcombine_MX850_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghhcombine_MX850_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX850_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX850_MH125_2016pre_cat34FHlowpurity --output MX850_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX850_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX850_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX850_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghhcombine_MX850_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX850_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghhcombine_MX850_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghhcombine_MX850_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghhcombine_MX850_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghhcombine_MX850_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX850_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX850_MH125_2016pre_cat34FHhighpurity --output MX850_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX850_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX850_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX850_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX850_MH125/ws_gghhcombine_MX850_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX850_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
combineCards.py    cat34FHlowpurity_2016pre=MX850_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX850_MH125_2016pre_cat34FHhighpurity.txt > MX850_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX850_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX850_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX850_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX1000_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX1000_MH125_2016pre_cat34FHlowpurity --output MX1000_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX1000_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX1000_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX1000_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX1000_MH125_2016pre_cat34FHhighpurity --output MX1000_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX1000_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX1000_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
combineCards.py    cat34FHlowpurity_2016pre=MX1000_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX1000_MH125_2016pre_cat34FHhighpurity.txt > MX1000_MH125_2016pre_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX1000_MH125_2016pre_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX1000_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MH125_2016pre_cat34.txt
 
