mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2017_cat12lowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghh*cat12lowpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2017_cat12lowpurity/
python RunYields.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --batch local --ext MX3000_MH125_2017_cat12lowpurity
python makeDatacard.py --years 2017 --ext MX3000_MH125_2017_cat12lowpurity --output MX3000_MH125_2017_cat12lowpurity
strlist=($(grep "shapes *gghh*" MX3000_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX3000_MH125_2017_cat12lowpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX3000_MH125_2017_cat12lowpurity.txt'
done
sed -i 's/2017=//g' MX3000_MH125_2017_cat12lowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2017_cat12lowpurity
text2workspace.py MX3000_MH125_2017_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2017_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghh*cat12highpurity*/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2017_cat12highpurity/
python RunYields.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2017_cat12highpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhttgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_2017_cat12highpurity --cats cat12highpurity --batch local --ext MX3000_MH125_2017_cat12highpurity
python makeDatacard.py --years 2017  --ext MX3000_MH125_2017_cat12highpurity --output MX3000_MH125_2017_cat12highpurity
strlist=($(grep "shapes *gghh*" MX3000_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX3000_MH125_2017_cat12highpurity.txt'
    sed -i "0,/purity\/CMS/s//purity_${str#gghh}\/CMS/" 'MX3000_MH125_2017_cat12highpurity.txt'
done
sed -i 's/2017=//g' MX3000_MH125_2017_cat12highpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017_nosys/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2017_cat12highpurity
text2workspace.py MX3000_MH125_2017_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2017=MX3000_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX3000_MH125_2017_cat12highpurity.txt > MX3000_MH125_2017_cat12.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX3000_MH125_2017_cat12.txt
 
