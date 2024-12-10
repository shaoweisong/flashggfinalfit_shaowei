# # mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity
# # cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity/
# # python RunYields_17resolved.py --cats cat34FHlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity --procs gghhbbgg,gghhwwgg,gghhzzgg,gghhGGH,gghhVBF,gghhTTH,gghhVH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_2017_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34FHlowpurity
# # python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34FHlowpurity --output MX250_MH125_2017_cat34FHlowpurity
# # sed -i 's/2017=//g' MX250_MH125_2017_cat34FHlowpurity.txt
# # sed -i '0,/ws_gghhcombine/s//ws_gghhGGH/' 'MX250_MH125_2017_cat34FHlowpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhTTH/' 'MX250_MH125_2017_cat34FHlowpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhVBF/' 'MX250_MH125_2017_cat34FHlowpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhVH/' 'MX250_MH125_2017_cat34FHlowpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhbbgg/' 'MX250_MH125_2017_cat34FHlowpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhwwgg/' 'MX250_MH125_2017_cat34FHlowpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhzzgg/' 'MX250_MH125_2017_cat34FHlowpurity.txt'
# # rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity
# # text2workspace.py MX250_MH125_2017_cat34FHlowpurity.txt -m 125 
# # mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity
# # cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity/
# # python RunYields_17resolved.py --cats cat34FHlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity --procs gghhbbgg,gghhwwgg,gghhzzgg --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_2017_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34FHlowpurity
# # python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34FHlowpurity --output MX250_MH125_2017_cat34FHlowpurity
# # sed -i 's/2017=//g' MX250_MH125_2017_cat34FHlowpurity.txt
# # sed -i '0,/ws_gghhcombine/s//ws_gghhbbgg/' 'MX250_MH125_2017_cat34FHlowpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhwwgg/' 'MX250_MH125_2017_cat34FHlowpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhzzgg/' 'MX250_MH125_2017_cat34FHlowpurity.txt'
# # rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity
# # text2workspace.py MX250_MH125_2017_cat34FHlowpurity.txt -m 125 
 
# # mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity
# # cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity/
# # python RunYields_17resolved.py --cats cat34FHhighpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_2017_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34FHhighpurity
# # python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34FHhighpurity --output MX250_MH125_2017_cat34FHhighpurity
# # sed -i 's/2017=//g' MX250_MH125_2017_cat34FHhighpurity.txt
# # #sed -i '0,/ws_gghhcombine/s//ws_gghhbbgg/' 'MX250_MH125_2017_cat34FHhighpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhTTH/' 'MX250_MH125_2017_cat34FHhighpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhwwgg/' 'MX250_MH125_2017_cat34FHhighpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhzzgg/' 'MX250_MH125_2017_cat34FHhighpurity.txt'
# # rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity
# # text2workspace.py MX250_MH125_2017_cat34FHhighpurity.txt -m 125 
 
# # mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity
# # cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity/
# # python RunYields_17resolved.py --cats cat34SLlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_2017_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34SLlowpurity
# # python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34SLlowpurity --output MX250_MH125_2017_cat34SLlowpurity
# # sed -i 's/2017=//g' MX250_MH125_2017_cat34SLlowpurity.txt
# # #sed -i '0,/ws_gghhcombine/s//ws_gghhbbgg/' 'MX250_MH125_2017_cat34SLlowpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhwwgg/' 'MX250_MH125_2017_cat34SLlowpurity.txt'
# # sed -i '0,/ws_gghhcombine/s//ws_gghhzzgg/' 'MX250_MH125_2017_cat34SLlowpurity.txt'
# # rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity
# # text2workspace.py MX250_MH125_2017_cat34SLlowpurity.txt -m 125 
 
# # combineCards.py  cat34SLlowpurity_2017=MX250_MH125_2017_cat34SLlowpurity.txt cat34SLhighpurity_2017=MX250_MH125_2017_cat34SLhighpurity.txt cat34FHlowpurity_2017=MX250_MH125_2017_cat34FHlowpurity.txt cat34FHhighpurity_2017=MX250_MH125_2017_cat34FHhighpurity.txt > MX250_MH125_2017_cat34.txt
# # echo 'CMS_2times_br      rateParam  *  gghh*  2' >>  MX250_MH125_2017_cat34.txt
# # echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX250_MH125_2017_cat34.txt


# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity/
# python RunYields_17resolved.py --cats cat34FHlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity --procs gghhbbgg,gghhwwgg,gghhzzgg --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_2017_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34FHlowpurity
# python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34FHlowpurity --output MX250_MH125_2017_cat34FHlowpurity_nosingleHiggs
# sed -i 's/2017=//g' MX250_MH125_2017_cat34FHlowpurity_nosingleHiggs.txt
# sed -i '0,/ws_gghhcombine/s//ws_gghhbbgg/' 'MX250_MH125_2017_cat34FHlowpurity_nosingleHiggs.txt'
# sed -i '0,/ws_gghhcombine/s//ws_gghhwwgg/' 'MX250_MH125_2017_cat34FHlowpurity_nosingleHiggs.txt'
# sed -i '0,/ws_gghhcombine/s//ws_gghhzzgg/' 'MX250_MH125_2017_cat34FHlowpurity_nosingleHiggs.txt'
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHlowpurity
# text2workspace.py MX250_MH125_2017_cat34FHlowpurity_nosingleHiggs.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity/
# python RunYields_17resolved.py --cats cat34FHhighpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_2017_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34FHhighpurity
# python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34FHhighpurity --output MX250_MH125_2017_cat34FHhighpurity_nosingleHiggs
# sed -i 's/2017=//g' MX250_MH125_2017_cat34FHhighpurity_nosingleHiggs.txt
# #sed -i '0,/ws_gghhcombine/s//ws_gghhbbgg/' 'MX250_MH125_2017_cat34FHhighpurity_nosingleHiggs.txt'
# sed -i '0,/ws_gghhcombine/s//ws_gghhwwgg/' 'MX250_MH125_2017_cat34FHhighpurity_nosingleHiggs.txt'
# sed -i '0,/ws_gghhcombine/s//ws_gghhzzgg/' 'MX250_MH125_2017_cat34FHhighpurity_nosingleHiggs.txt'
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34FHhighpurity
# text2workspace.py MX250_MH125_2017_cat34FHhighpurity_nosingleHiggs.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLhighpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghh*cat34SLhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLhighpurity/
# python RunYields_17resolved.py --cats cat34SLhighpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLhighpurity --procs gghhwwgg --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_2017_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34SLhighpurity
# python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34SLhighpurity --output MX250_MH125_2017_cat34SLhighpurity_nosingleHiggs
# sed -i 's/2017=//g' MX250_MH125_2017_cat34SLhighpurity_nosingleHiggs.txt
# #sed -i '0,/ws_gghhcombine/s//ws_gghhbbgg/' 'MX250_MH125_2017_cat34SLhighpurity_nosingleHiggs.txt'
# sed -i '0,/ws_gghhcombine/s//ws_gghhwwgg/' 'MX250_MH125_2017_cat34SLhighpurity_nosingleHiggs.txt'
# #sed -i '0,/ws_gghhcombine/s//ws_gghhzzgg/' 'MX250_MH125_2017_cat34SLhighpurity_nosingleHiggs.txt'
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLhighpurity
# text2workspace.py MX250_MH125_2017_cat34SLhighpurity_nosingleHiggs.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity/
# python RunYields_17resolved.py --cats cat34SLlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_2017_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX250_MH125_2017_cat34SLlowpurity
# python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX250_MH125_2017_cat34SLlowpurity --output MX250_MH125_2017_cat34SLlowpurity_nosingleHiggs
# sed -i 's/2017=//g' MX250_MH125_2017_cat34SLlowpurity_nosingleHiggs.txt
# #sed -i '0,/ws_gghhcombine/s//ws_gghhbbgg/' 'MX250_MH125_2017_cat34SLlowpurity_nosingleHiggs.txt'
# sed -i '0,/ws_gghhcombine/s//ws_gghhwwgg/' 'MX250_MH125_2017_cat34SLlowpurity_nosingleHiggs.txt'
# sed -i '0,/ws_gghhcombine/s//ws_gghhzzgg/' 'MX250_MH125_2017_cat34SLlowpurity_nosingleHiggs.txt'
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX250_MH125/ws_gghhcombine_MX250_MH125_2017_cat34SLlowpurity
# text2workspace.py MX250_MH125_2017_cat34SLlowpurity_nosingleHiggs.txt -m 125 
 
# combineCards.py  cat34SLlowpurity_2017=MX250_MH125_2017_cat34SLlowpurity_nosingleHiggs.txt cat34SLhighpurity_2017=MX250_MH125_2017_cat34SLhighpurity_nosingleHiggs.txt cat34FHlowpurity_2017=MX250_MH125_2017_cat34FHlowpurity_nosingleHiggs.txt cat34FHhighpurity_2017=MX250_MH125_2017_cat34FHhighpurity_nosingleHiggs.txt > MX250_MH125_2017_cat34_nosingleHiggs.txt
# echo 'CMS_2times_br      rateParam  *  gghh*  2' >>  MX250_MH125_2017_cat34_nosingleHiggs.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX250_MH125_2017_cat34_nosingleHiggs.txt


combineTool.py -M Impacts -d MX250_MH125_2017_cat34.root -t -1 --toysFrequentist -m 125 --setParameterRanges r=-250,250 --freezeParameters MH,shapeBkg_bkg_mass_cat34FHlowpurity_2017__norm --setParameters r=193.5 --redefineSignalPOIs r --saveSpecifiedNuis all --floatOtherPOIs 1 --saveInactivePOI 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doInitialFit --task-name initialFit 

combineTool.py -M Impacts -d MX250_MH125_2017_cat34.root -t -1 -m 125 --setParameterRanges r=-250,250 --freezeParameters MH,shapeBkg_bkg_mass_cat34FHlowpurity_2017__norm   --setParameters r=193.5 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --doFits  2>&1 | tee Fit.log
combineTool.py -M Impacts -d MX250_MH125_2017_cat34.root -t -1 -m 125 --setParameterRanges r=-250,250 --freezeParameters MH,shapeBkg_bkg_mass_cat34FHlowpurity_2017__norm   --setParameters r=193.5 --redefineSignalPOIs r --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --X-rtd MINIMIZER_multiMin_maskChannels=2  --output impacts_250.json
plotImpacts.py -i impacts_250.json -o impacts_250 
#--blind