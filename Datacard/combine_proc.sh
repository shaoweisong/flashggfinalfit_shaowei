# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2018_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2018_cat12lowpurity/
# python RunYields_18boosted.py --cats cat12lowpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2018_cat12lowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2018_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_2018_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX3000_MH125_2018_cat12lowpurity
# python makeDatacard_18boosted_combined.py --years 2018 --doSystematics --prune --ext MX3000_MH125_2018_cat12lowpurity --output MX3000_MH125_2018_cat12lowpurity
# sed -i 's/2018=//g' MX3000_MH125_2018_cat12lowpurity.txt
# #sed -i '0,/ws_gghhcombine/s//ws_gghhbbgg/' 'MX3000_MH125_2018_cat12lowpurity.txt'
# sed -i '0,/ws_gghhcombine/s//ws_gghhwwgg/' 'MX3000_MH125_2018_cat12lowpurity.txt'
# sed -i '0,/ws_gghhcombine/s//ws_gghhzzgg/' 'MX3000_MH125_2018_cat12lowpurity.txt'
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2018_cat12lowpurity
# text2workspace.py MX3000_MH125_2018_cat12lowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2018_cat12highpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2018_cat12highpurity/
python RunYields_18boosted.py --cats cat12highpurity --inputWSDirMap 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2018_cat12highpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2018=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2018_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_2018_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX3000_MH125_2018_cat12highpurity
python makeDatacard_18boosted_combined.py --years 2018 --doSystematics --prune --ext MX3000_MH125_2018_cat12highpurity --output MX3000_MH125_2018_cat12highpurity
sed -i 's/2018=//g' MX3000_MH125_2018_cat12highpurity.txt
#sed -i '0,/ws_gghhcombine/s//ws_gghhbbgg/' 'MX3000_MH125_2018_cat12highpurity.txt'
sed -i '0,/ws_gghhcombine/s//ws_gghhwwgg/' 'MX3000_MH125_2018_cat12highpurity.txt'
sed -i '0,/ws_gghhcombine/s//ws_gghhzzgg/' 'MX3000_MH125_2018_cat12highpurity.txt'
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2018/MX3000_MH125/ws_gghhcombine_MX3000_MH125_2018_cat12highpurity
text2workspace.py MX3000_MH125_2018_cat12highpurity.txt -m 125 
 
combineCards.py  cat12lowpurity_2018=MX3000_MH125_2018_cat12lowpurity.txt cat12highpurity_2018=MX3000_MH125_2018_cat12highpurity.txt > MX3000_MH125_2018_cat12.txt
echo 'CMS_2times_br      rateParam  *  gghh*  2' >>  MX3000_MH125_2018_cat12.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX3000_MH125_2018_cat12.txt