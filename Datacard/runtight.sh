mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX250_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX250_MH125_2016pre_cat34FHlowpurity --output MX250_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX250_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2016pre_cat34FHlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX250_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX250_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhTTH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX250_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX250_MH125_2016pre_cat34FHhighpurity --output MX250_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX250_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2016pre_cat34FHhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX250_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX250_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
cp Datacard_MX250_MH125_2016pre_wwgg_cat34SLhighpurity.txt MX250_MH125_2016pre_cat34SLhighpurity.txt
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX250_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX250_MH125_2016pre_cat34SLlowpurity --output MX250_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX250_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2016pre_cat34SLlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX250_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX250_MH125/ws_gghhcombine_MX250_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX250_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX250_MH125_2016pre_cat34SLlowpurity.txt cat34SLhighpurity_2016pre=MX250_MH125_2016pre_cat34SLhighpurity.txt cat34FHlowpurity_2016pre=MX250_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX250_MH125_2016pre_cat34FHhighpurity.txt > MX250_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX250_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX400_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX400_MH125_2016pre_cat34FHlowpurity --output MX400_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX400_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016pre_cat34FHlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX400_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX400_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX400_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX400_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX400_MH125_2016pre_cat34FHhighpurity --output MX400_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX400_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016pre_cat34FHhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX400_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX400_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX400_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_2016pre_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX400_MH125_2016pre_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX400_MH125_2016pre_cat34SLhighpurity --output MX400_MH125_2016pre_cat34SLhighpurity
strlist=($(grep "shapes *gghh*" MX400_MH125_2016pre_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016pre_cat34SLhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX400_MH125_2016pre_cat34SLhighpurity.txt'
done
sed -i 's/2016pre=//g' MX400_MH125_2016pre_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLhighpurity
text2workspace.py MX400_MH125_2016pre_cat34SLhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX400_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX400_MH125_2016pre_cat34SLlowpurity --output MX400_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX400_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX400_MH125_2016pre_cat34SLlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX400_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX400_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX400_MH125/ws_gghhcombine_MX400_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX400_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX400_MH125_2016pre_cat34SLlowpurity.txt cat34SLhighpurity_2016pre=MX400_MH125_2016pre_cat34SLhighpurity.txt cat34FHlowpurity_2016pre=MX400_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX400_MH125_2016pre_cat34FHhighpurity.txt > MX400_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX400_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX500_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX500_MH125_2016pre_cat34FHlowpurity --output MX500_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016pre_cat34FHlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX500_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX500_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX500_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX500_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX500_MH125_2016pre_cat34FHhighpurity --output MX500_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016pre_cat34FHhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX500_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX500_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX500_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLhighpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_2016pre_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX500_MH125_2016pre_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX500_MH125_2016pre_cat34SLhighpurity --output MX500_MH125_2016pre_cat34SLhighpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2016pre_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016pre_cat34SLhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX500_MH125_2016pre_cat34SLhighpurity.txt'
done
sed -i 's/2016pre=//g' MX500_MH125_2016pre_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLhighpurity
text2workspace.py MX500_MH125_2016pre_cat34SLhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLlowpurity/
python RunYields_16resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLlowpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_2016pre_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX500_MH125_2016pre_cat34SLlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX500_MH125_2016pre_cat34SLlowpurity --output MX500_MH125_2016pre_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2016pre_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2016pre_cat34SLlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX500_MH125_2016pre_cat34SLlowpurity.txt'
done
sed -i 's/2016pre=//g' MX500_MH125_2016pre_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX500_MH125/ws_gghhcombine_MX500_MH125_2016pre_cat34SLlowpurity
text2workspace.py MX500_MH125_2016pre_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2016pre=MX500_MH125_2016pre_cat34SLlowpurity.txt cat34SLhighpurity_2016pre=MX500_MH125_2016pre_cat34SLhighpurity.txt cat34FHlowpurity_2016pre=MX500_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX500_MH125_2016pre_cat34FHhighpurity.txt > MX500_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX700_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX700_MH125_2016pre_cat34FHlowpurity --output MX700_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX700_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016pre_cat34FHlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX700_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX700_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX700_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX700_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX700_MH125_2016pre_cat34FHhighpurity --output MX700_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX700_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016pre_cat34FHhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX700_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX700_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX700_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_2016pre_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX700_MH125_2016pre_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX700_MH125_2016pre_cat34SLhighpurity --output MX700_MH125_2016pre_cat34SLhighpurity
strlist=($(grep "shapes *gghh*" MX700_MH125_2016pre_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX700_MH125_2016pre_cat34SLhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX700_MH125_2016pre_cat34SLhighpurity.txt'
done
sed -i 's/2016pre=//g' MX700_MH125_2016pre_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX700_MH125/ws_gghhcombine_MX700_MH125_2016pre_cat34SLhighpurity
text2workspace.py MX700_MH125_2016pre_cat34SLhighpurity.txt -m 125 
 
cp Datacard_MX700_MH125_2016pre_wwgg_cat34SLlowpurity.txt MX700_MH125_2016pre_cat34SLlowpurity.txt
combineCards.py  cat34SLlowpurity_2016pre=MX700_MH125_2016pre_cat34SLlowpurity.txt cat34SLhighpurity_2016pre=MX700_MH125_2016pre_cat34SLhighpurity.txt cat34FHlowpurity_2016pre=MX700_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX700_MH125_2016pre_cat34FHhighpurity.txt > MX700_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX700_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX900_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX900_MH125_2016pre_cat34FHlowpurity --output MX900_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX900_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX900_MH125_2016pre_cat34FHlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX900_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX900_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX900_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX900_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX900_MH125_2016pre_cat34FHhighpurity --output MX900_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX900_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX900_MH125_2016pre_cat34FHhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX900_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX900_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX900_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34SLhighpurity --procs gghhwwgg,gghhttgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_2016pre_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX900_MH125_2016pre_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX900_MH125_2016pre_cat34SLhighpurity --output MX900_MH125_2016pre_cat34SLhighpurity
strlist=($(grep "shapes *gghh*" MX900_MH125_2016pre_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX900_MH125_2016pre_cat34SLhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX900_MH125_2016pre_cat34SLhighpurity.txt'
done
sed -i 's/2016pre=//g' MX900_MH125_2016pre_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX900_MH125/ws_gghhcombine_MX900_MH125_2016pre_cat34SLhighpurity
text2workspace.py MX900_MH125_2016pre_cat34SLhighpurity.txt -m 125 
 
cp Datacard_MX900_MH125_2016pre_wwgg_cat34SLlowpurity.txt MX900_MH125_2016pre_cat34SLlowpurity.txt
combineCards.py  cat34SLlowpurity_2016pre=MX900_MH125_2016pre_cat34SLlowpurity.txt cat34SLhighpurity_2016pre=MX900_MH125_2016pre_cat34SLhighpurity.txt cat34FHlowpurity_2016pre=MX900_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX900_MH125_2016pre_cat34FHhighpurity.txt > MX900_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX900_MH125_2016pre_cat34.txt
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHlowpurity/
python RunYields_16resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_2016pre_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX1000_MH125_2016pre_cat34FHlowpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX1000_MH125_2016pre_cat34FHlowpurity --output MX1000_MH125_2016pre_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2016pre_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016pre_cat34FHlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1000_MH125_2016pre_cat34FHlowpurity.txt'
done
sed -i 's/2016pre=//g' MX1000_MH125_2016pre_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHlowpurity
text2workspace.py MX1000_MH125_2016pre_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHhighpurity/
python RunYields_16resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhGGH --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_2016pre_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX1000_MH125_2016pre_cat34FHhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX1000_MH125_2016pre_cat34FHhighpurity --output MX1000_MH125_2016pre_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2016pre_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016pre_cat34FHhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1000_MH125_2016pre_cat34FHhighpurity.txt'
done
sed -i 's/2016pre=//g' MX1000_MH125_2016pre_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34FHhighpurity
text2workspace.py MX1000_MH125_2016pre_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghh*cat34SLhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34SLhighpurity/
python RunYields_16resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34SLhighpurity --procs gghhwwgg,gghhbbgg,gghhttgg --sigModelWSDir 2016pre=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_2016pre_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX1000_MH125_2016pre_cat34SLhighpurity
python makeDatacard_16resolved_combined.py --years 2016pre --doSystematics --prune --ext MX1000_MH125_2016pre_cat34SLhighpurity --output MX1000_MH125_2016pre_cat34SLhighpurity
strlist=($(grep "shapes *gghh*" MX1000_MH125_2016pre_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX1000_MH125_2016pre_cat34SLhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX1000_MH125_2016pre_cat34SLhighpurity.txt'
done
sed -i 's/2016pre=//g' MX1000_MH125_2016pre_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34_checkphotonID/2016pre/MX1000_MH125/ws_gghhcombine_MX1000_MH125_2016pre_cat34SLhighpurity
text2workspace.py MX1000_MH125_2016pre_cat34SLhighpurity.txt -m 125 
 
cp Datacard_MX1000_MH125_2016pre_wwgg_cat34SLlowpurity.txt MX1000_MH125_2016pre_cat34SLlowpurity.txt
combineCards.py  cat34SLlowpurity_2016pre=MX1000_MH125_2016pre_cat34SLlowpurity.txt cat34SLhighpurity_2016pre=MX1000_MH125_2016pre_cat34SLhighpurity.txt cat34FHlowpurity_2016pre=MX1000_MH125_2016pre_cat34FHlowpurity.txt cat34FHhighpurity_2016pre=MX1000_MH125_2016pre_cat34FHhighpurity.txt > MX1000_MH125_2016pre_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX1000_MH125_2016pre_cat34.txt
 
