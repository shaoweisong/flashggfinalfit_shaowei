
##################
#       YH       #
##################
cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Plots
text2workspace.py -m 125 MX1000_MY250_run2_cat34.txt
python getCatInfo.py --inputWSFile MX1000_MY250_run2_cat34.root  --cats all  --saveCatInfo  --ext MX1000_MY250_run2_cat34
python convert_pkl_json.py --exts catInfoMX1000_MY250_run2_cat34

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/
rm -rf outdir_packaged_MX1000_MY250_all_cats/
python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34FHlowpurity --outputExt packaged_MX1000_MY250_all_cats --massPoints 125 --exts 2016pre_MX1000_MY250_2016pre_cat34FHlowpurity_wwgg,2016post_MX1000_MY250_2016post_cat34FHlowpurity_wwgg,2017_MX1000_MY250_2017_cat34FHlowpurity_wwgg,2018_MX1000_MY250_2018_cat34FHlowpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34FHhighpurity --outputExt packaged_MX1000_MY250_all_cats --massPoints 125 --exts 2016post_MX1000_MY250_2016post_cat34FHhighpurity_wwgg,2016pre_MX1000_MY250_2016pre_cat34FHhighpurity_wwgg,2017_MX1000_MY250_2017_cat34FHhighpurity_wwgg,2018_MX1000_MY250_2018_cat34FHhighpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34SLlowpurity --outputExt packaged_MX1000_MY250_all_cats --massPoints 125 --exts 2016post_MX1000_MY250_2016post_cat34SLlowpurity_wwgg,2016pre_MX1000_MY250_2016pre_cat34SLlowpurity_wwgg,2017_MX1000_MY250_2017_cat34SLlowpurity_wwgg,2018_MX1000_MY250_2018_cat34SLlowpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34SLhighpurity --outputExt packaged_MX1000_MY250_all_cats --massPoints 125 --exts 2016post_MX1000_MY250_2016post_cat34SLhighpurity_wwgg,2016pre_MX1000_MY250_2016pre_cat34SLhighpurity_wwgg,2017_MX1000_MY250_2017_cat34SLhighpurity_wwgg,2018_MX1000_MY250_2018_cat34SLhighpurity_wwgg --mergeYears

python RunPlotter_combined.py --procs all --cats wall  --ext packaged_MX1000_MY250_all_cats --years 2016pre,2016post,2017,2018  --loadCatWeight  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Plots/pkl/catInfoMX1000_MY250_run2_cat34.json --label Simulation




cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Plots
text2workspace.py -m 125 MX500_MY250_run2_cat34.txt
python getCatInfo.py --inputWSFile MX500_MY250_run2_cat34.root  --cats all  --saveCatInfo  --ext MX500_MY250_run2_cat34
python convert_pkl_json.py --exts catInfoMX500_MY250_run2_cat34

cd /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/
rm -rf outdir_packaged_MX500_MY250_all_cats/
python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34FHlowpurity --outputExt packaged_MX500_MY250_all_cats --massPoints 125 --exts 2016pre_MX500_MY250_2016pre_cat34FHlowpurity_wwgg,2016post_MX500_MY250_2016post_cat34FHlowpurity_wwgg,2017_MX500_MY250_2017_cat34FHlowpurity_wwgg,2018_MX500_MY250_2018_cat34FHlowpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34FHhighpurity --outputExt packaged_MX500_MY250_all_cats --massPoints 125 --exts 2016post_MX500_MY250_2016post_cat34FHhighpurity_wwgg,2016pre_MX500_MY250_2016pre_cat34FHhighpurity_wwgg,2017_MX500_MY250_2017_cat34FHhighpurity_wwgg,2018_MX500_MY250_2018_cat34FHhighpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34SLlowpurity --outputExt packaged_MX500_MY250_all_cats --massPoints 125 --exts 2016post_MX500_MY250_2016post_cat34SLlowpurity_wwgg,2016pre_MX500_MY250_2016pre_cat34SLlowpurity_wwgg,2017_MX500_MY250_2017_cat34SLlowpurity_wwgg,2018_MX500_MY250_2018_cat34SLlowpurity_wwgg --mergeYears

python /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/scripts/packageSignal.py --cat cat34SLhighpurity --outputExt packaged_MX500_MY250_all_cats --massPoints 125 --exts 2016post_MX500_MY250_2016post_cat34SLhighpurity_wwgg,2016pre_MX500_MY250_2016pre_cat34SLhighpurity_wwgg,2017_MX500_MY250_2017_cat34SLhighpurity_wwgg,2018_MX500_MY250_2018_cat34SLhighpurity_wwgg --mergeYears

python RunPlotter_combined.py --procs all --cats wall  --ext packaged_MX500_MY250_all_cats --years 2016pre,2016post,2017,2018  --loadCatWeight  /afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Plots/pkl/catInfoMX500_MY250_run2_cat34.json --label Simulation





