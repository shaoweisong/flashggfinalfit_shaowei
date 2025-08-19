mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghh*cat34FHlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity/
python RunYields_17resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_2017_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34FHlowpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34FHlowpurity --output MX250_MH125_2017_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX250_MH125_2017_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2017_cat34FHlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2017_cat34FHlowpurity.txt'
done
sed -i 's/2017=//g' MX250_MH125_2017_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity
text2workspace.py MX250_MH125_2017_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghh*cat34FHhighpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity/
python RunYields_17resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_2017_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34FHhighpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34FHhighpurity --output MX250_MH125_2017_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX250_MH125_2017_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2017_cat34FHhighpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2017_cat34FHhighpurity.txt'
done
sed -i 's/2017=//g' MX250_MH125_2017_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity
text2workspace.py MX250_MH125_2017_cat34FHhighpurity.txt -m 125 
 
cp Datacard_MX250_MH125_2017_wwgg_cat34SLhighpurity.txt MX250_MH125_2017_cat34SLhighpurity.txt
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghh*cat34SLlowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity/
python RunYields_17resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity --procs gghhwwgg,gghhzzgg,gghhttgg --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_2017_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34SLlowpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34SLlowpurity --output MX250_MH125_2017_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX250_MH125_2017_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX250_MH125_2017_cat34SLlowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX250_MH125_2017_cat34SLlowpurity.txt'
done
sed -i 's/2017=//g' MX250_MH125_2017_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity
text2workspace.py MX250_MH125_2017_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2017=MX250_MH125_2017_cat34SLlowpurity.txt cat34SLhighpurity_2017=MX250_MH125_2017_cat34SLhighpurity.txt cat34FHlowpurity_2017=MX250_MH125_2017_cat34FHlowpurity.txt cat34FHhighpurity_2017=MX250_MH125_2017_cat34FHhighpurity.txt > MX250_MH125_2017_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX250_MH125_2017_cat34.txt
 
