
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34FHlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghh*cat34FHlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34FHlowpurity/
python RunYields_17resolved_combined.py --cats cat34FHlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34FHlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34FHlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_2017_cat34FHlowpurity --cats cat34FHlowpurity --doSystematics --batch local --ext MX500_MH125_2017_cat34FHlowpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX500_MH125_2017_cat34FHlowpurity --output MX500_MH125_2017_cat34FHlowpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2017_cat34FHlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2017_cat34FHlowpurity.txt'
done
sed -i 's/2017=//g' MX500_MH125_2017_cat34FHlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34FHlowpurity
text2workspace.py MX500_MH125_2017_cat34FHlowpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34FHhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghh*cat34FHhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34FHhighpurity/
python RunYields_17resolved_combined.py --cats cat34FHhighpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34FHhighpurity --procs gghhwwgg,gghhzzgg,gghhTTH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34FHhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_2017_cat34FHhighpurity --cats cat34FHhighpurity --doSystematics --batch local --ext MX500_MH125_2017_cat34FHhighpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX500_MH125_2017_cat34FHhighpurity --output MX500_MH125_2017_cat34FHhighpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2017_cat34FHhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2017_cat34FHhighpurity.txt'
done
sed -i 's/2017=//g' MX500_MH125_2017_cat34FHhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34FHhighpurity
text2workspace.py MX500_MH125_2017_cat34FHhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34SLhighpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghh*cat34SLhighpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34SLhighpurity/
python RunYields_17resolved_combined.py --cats cat34SLhighpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34SLhighpurity --procs gghhwwgg,gghhzzgg --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34SLhighpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_2017_cat34SLhighpurity --cats cat34SLhighpurity --doSystematics --batch local --ext MX500_MH125_2017_cat34SLhighpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX500_MH125_2017_cat34SLhighpurity --output MX500_MH125_2017_cat34SLhighpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2017_cat34SLhighpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2017_cat34SLhighpurity.txt'
done
sed -i 's/2017=//g' MX500_MH125_2017_cat34SLhighpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34SLhighpurity
text2workspace.py MX500_MH125_2017_cat34SLhighpurity.txt -m 125 
 
mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34SLlowpurity
cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghh*cat34SLlowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34SLlowpurity/
python RunYields_17resolved_combined.py --cats cat34SLlowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34SLlowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34SLlowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_2017_cat34SLlowpurity --cats cat34SLlowpurity --doSystematics --batch local --ext MX500_MH125_2017_cat34SLlowpurity
python makeDatacard_17resolved_combined.py --years 2017 --doSystematics --prune --ext MX500_MH125_2017_cat34SLlowpurity --output MX500_MH125_2017_cat34SLlowpurity
strlist=($(grep "shapes *gghh*" MX500_MH125_2017_cat34SLlowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
for str in "${strlist[@]}"; do
    sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2017_cat34SLlowpurity.txt'
done
sed -i 's/2017=//g' MX500_MH125_2017_cat34SLlowpurity.txt
rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat34SLlowpurity
text2workspace.py MX500_MH125_2017_cat34SLlowpurity.txt -m 125 
 
combineCards.py  cat34SLlowpurity_2017=MX500_MH125_2017_cat34SLlowpurity.txt cat34SLhighpurity_2017=MX500_MH125_2017_cat34SLhighpurity.txt cat34FHlowpurity_2017=MX500_MH125_2017_cat34FHlowpurity.txt cat34FHhighpurity_2017=MX500_MH125_2017_cat34FHhighpurity.txt > MX500_MH125_2017_cat34.txt
echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX500_MH125_2017_cat34.txt
echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX500_MH125_2017_cat34.txt
sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MH125_2017_cat34.txt
 

# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12lowpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghh*cat12lowpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12lowpurity/
# python RunYields_17boosted_combined.py --cats cat12lowpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12lowpurity --procs gghhwwgg,gghhbbgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12lowpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_2017_cat12lowpurity --cats cat12lowpurity --doSystematics --batch local --ext MX500_MH125_2017_cat12lowpurity
# python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX500_MH125_2017_cat12lowpurity --output MX500_MH125_2017_cat12lowpurity
# strlist=($(grep "shapes *gghh*" MX500_MH125_2017_cat12lowpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2017_cat12lowpurity.txt'
# done
# sed -i 's/2017=//g' MX500_MH125_2017_cat12lowpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12lowpurity
# text2workspace.py MX500_MH125_2017_cat12lowpurity.txt -m 125 
 
# mkdir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12highpurity
# cp /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghh*cat12highpurity/*.root /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12highpurity/
# python RunYields_17boosted_combined.py --cats cat12highpurity --inputWSDirMap 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12highpurity --procs gghhwwgg,gghhzzgg,gghhVBF,gghhTTH,gghhVH,gghhGGH --sigModelWSDir 2017=/eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12highpurity --bkgModelWSDir /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_2017_cat12highpurity --cats cat12highpurity --doSystematics --batch local --ext MX500_MH125_2017_cat12highpurity
# python makeDatacard_17boosted_combined.py --years 2017 --doSystematics --prune --ext MX500_MH125_2017_cat12highpurity --output MX500_MH125_2017_cat12highpurity
# strlist=($(grep "shapes *gghh*" MX500_MH125_2017_cat12highpurity.txt | awk '{print $2}' | cut -d'_' -f1))
# for str in "${strlist[@]}"; do
#     sed -i "0,/ws_gghhcombine/s//ws_${str}/" 'MX500_MH125_2017_cat12highpurity.txt'
# done
# sed -i 's/2017=//g' MX500_MH125_2017_cat12highpurity.txt
# rm -r /eos/cms/store/group/phys_b2g/shsong/flashggws/cat12/2017/MX500_MH125/ws_gghhcombine_MX500_MH125_2017_cat12highpurity
# text2workspace.py MX500_MH125_2017_cat12highpurity.txt -m 125 
 
# combineCards.py  cat12lowpurity_2017=MX500_MH125_2017_cat12lowpurity.txt cat12highpurity_2017=MX500_MH125_2017_cat12highpurity.txt > MX500_MH125_2017_cat12.txt
# echo 'CMS_2times_br      rateParam  *  gghh*gg_*  200' >>  MX500_MH125_2017_cat12.txt
# echo 'nuisance  edit  freeze  CMS_2times_br' >>  MX500_MH125_2017_cat12.txt
# sed -i '/CMS_wwgg_br_HH_WWgg/d' MX500_MH125_2017_cat12.txt
 

 
# combineCards.py cat12_2017=MX500_MH125_2017_cat12.txt cat34_2017=MX500_MH125_2017_cat34.txt > MX500_MH125_2017.txt
# text2workspace.py MX500_MH125_2017.txt -m 125
 

# text2workspace.py MX500_MH125_2017.txt -m 125 -o MX500_MH125_2017.root
# combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017 -d MX500_MH125_2017.txt --run expected --freezeParameters MH
# combineTool.py -M Impacts -d MX500_MH125_2017.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doInitialFit -t -1 --expectSignal 1 --robustFit 1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
# combineTool.py -M Impacts -d MX500_MH125_2017.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doFits --robustFit 1 -t -1 --expectSignal 1   --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
# combineTool.py -M Impacts -d MX500_MH125_2017.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 -o MX500_MH125_2017.json -t -1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
# plotImpacts.py -i MX500_MH125_2017.json -o MX500_MH125_2017
 
# text2workspace.py MX500_MH125_2017.txt -m 125
 

text2workspace.py MX500_MH125_2017_cat34.txt -m 125 -o MX500_MH125_2017_cat34.root
combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017_cat34 -d MX500_MH125_2017_cat34.txt --run expected --freezeParameters MH
combineTool.py -M Impacts -d MX500_MH125_2017_cat34.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doInitialFit -t -1 --expectSignal 1 --robustFit 1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
combineTool.py -M Impacts -d MX500_MH125_2017_cat34.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 --doFits --robustFit 1 -t -1 --expectSignal 1   --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
combineTool.py -M Impacts -d MX500_MH125_2017_cat34.root -m 125 --freezeParameters MH -n .impacts --setParameterRanges r=-50,50 -o MX500_MH125_2017_cat34.json -t -1 --X-rt MINIMIZER_freezeDisassociatedParams   --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminDefaultMinimizerStrategy 0 
plotImpacts.py -i MX500_MH125_2017_cat34.json -o MX500_MH125_2017_cat34


