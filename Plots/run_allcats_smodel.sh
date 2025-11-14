#Under CMSSW11_3_4

# text2workspace.py -m 125 MX1000_MH125.txt
# python getCatInfo.py --inputWSFile MX1000_MH125.root  --cats all  --saveCatInfo  --ext spin0_MX1000_Cats
# python convert_pkl_json.py --exts catInfospin0_MX1000_Cats
# python getCatInfo.py --inputWSFile MX400_MH125.root  --cats all  --saveCatInfo  --ext MX400_MH125
# python convert_pkl_json.py --exts catInfoMX400_MH125

# python RunPackager.py  --year 2017 --cats cat34FHlowpurity,cat34FHhighpurity,cat34SLlowpurity,cat34SLhighpurity --exts 2017_MX1000_MH125_2017_cat34FHlowpurity_wwgg,2017_MX1000_MH125_2017_cat34FHhighpurity_wwgg,2017_MX1000_MH125_2017_cat34SLlowpurity_wwgg,2017_MX1000_MH125_2017_cat34SLhighpurity_wwgg --batch local  --massPoints 125 --outputExt packaged_MX1000_MH125_2017_all_cats
# python RunPlotter_combined.py --procs all --cats all  --ext packaged_MX1000_MH125_2017_all_cats --years 2017  --loadCatWeight  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Plots/pkl/catInfospin0_MX1000_Cats.json
# CMSSW_10_6_20
# cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/
# python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat12lowpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2016post_MX1000_MH125_2016post_cat12lowpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat12lowpurity_wwgg,2017_MX1000_MH125_2017_cat12lowpurity_wwgg,2018_MX1000_MH125_2018_cat12lowpurity_wwgg --mergeYears

# python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat12highpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2016post_MX1000_MH125_2016post_cat12highpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat12highpurity_wwgg,2017_MX1000_MH125_2017_cat12highpurity_wwgg,2018_MX1000_MH125_2018_cat12highpurity_wwgg --mergeYears

# python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34FHlowpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2016post_MX1000_MH125_2016post_cat34FHlowpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat34FHlowpurity_wwgg,2017_MX1000_MH125_2017_cat34FHlowpurity_wwgg,2018_MX1000_MH125_2018_cat34FHlowpurity_wwgg --mergeYears

# python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34FHhighpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2017_MX1000_MH125_2017_cat34FHhighpurity_wwgg --mergeYears

# python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34SLlowpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2017_MX1000_MH125_2017_cat34SLlowpurity_wwgg,2018_MX1000_MH125_2018_cat34SLlowpurity_wwgg --mergeYears

# python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34SLhighpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2016post_MX1000_MH125_2016post_cat34SLhighpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat34SLhighpurity_wwgg,2017_MX1000_MH125_2017_cat34SLhighpurity_wwgg,2018_MX1000_MH125_2018_cat34SLhighpurity_wwgg --mergeYears

python RunPlotter_combined.py --procs all --cats wall  --ext packaged_MX1000_MH125_all_cats --years 2016pre,2016post,2017,2018  --loadCatWeight  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Plots/pkl/catInfospin0_MX1000_Cats.json --label Simulation

# text2workspace.py -m 125 MX1000_MH125.txt
# python getCatInfo.py --inputWSFile MX1000_MH125.root  --cats all  --saveCatInfo  --ext spin2_MX1000_Cats
# python convert_pkl_json.py --exts catInfospin2_MX1000_Cats

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat12lowpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2016post_MX1000_MH125_2016post_cat12lowpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat12lowpurity_wwgg,2017_MX1000_MH125_2017_cat12lowpurity_wwgg,2018_MX1000_MH125_2018_cat12lowpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat12highpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2016post_MX1000_MH125_2016post_cat12highpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat12highpurity_wwgg,2017_MX1000_MH125_2017_cat12highpurity_wwgg,2018_MX1000_MH125_2018_cat12highpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34FHlowpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2016post_MX1000_MH125_2016post_cat34FHlowpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat34FHlowpurity_wwgg,2017_MX1000_MH125_2017_cat34FHlowpurity_wwgg,2018_MX1000_MH125_2018_cat34FHlowpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34FHhighpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2016post_MX1000_MH125_2016post_cat34FHhighpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat34FHhighpurity_wwgg,2017_MX1000_MH125_2017_cat34FHhighpurity_wwgg,2018_MX1000_MH125_2018_cat34FHhighpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34SLlowpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2016post_MX1000_MH125_2016post_cat34SLlowpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat34SLlowpurity_wwgg,2017_MX1000_MH125_2017_cat34SLlowpurity_wwgg,2018_MX1000_MH125_2018_cat34SLlowpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34SLhighpurity --outputExt packaged_MX1000_MH125_all_cats --massPoints 125 --exts 2016post_MX1000_MH125_2016post_cat34SLhighpurity_wwgg,2016pre_MX1000_MH125_2016pre_cat34SLhighpurity_wwgg,2017_MX1000_MH125_2017_cat34SLhighpurity_wwgg,2018_MX1000_MH125_2018_cat34SLhighpurity_wwgg --mergeYears

python RunPlotter_combined.py --procs all --cats wall  --ext packaged_MX1000_MH125_all_cats --years 2016pre,2016post,2017,2018  --loadCatWeight  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Plots/pkl/catInfospin0_MX1000_Cats.json --label Simulation

# python RunPlotter_combined.py --procs all --cats wall  --ext packaged_MX1000_MH125_all_cats --years 2016pre,2016post,2017,2018  --loadCatWeight  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Plots/pkl/catInfospin0_MX1000_Cats.json






