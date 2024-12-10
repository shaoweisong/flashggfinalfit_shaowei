python RunPackager.py --cats cat34SLhighpurity --exts dcb_2017_MX500_MH125_2017_cat34SLhighpurity,dcb_2018_MX500_MH125_2018_cat34SLhighpurity,dcb_2016pre_MX500_MH125_2016pre_cat34SLhighpurity,dcb_2016post_MX500_MH125_2016post_cat34SLhighpurity --mergeYears --batch local  --massPoints 125 --outputExt packaged_MX500_MH125_wwgg_cat34SLhighpurity
python RunPlotter_combined.py --procs all --cats cat34SLhighpurity  --ext packaged_MX500_MH125_wwgg_cat34SLhighpurity --years 2016pre,2016post,2017,2018

python RunPackager.py --cats cat34FHhighpurity --exts dcb_2017_MX500_MH125_2017_cat34FHhighpurity,dcb_2018_MX500_MH125_2018_cat34FHhighpurity,dcb_2016pre_MX500_MH125_2016pre_cat34FHhighpurity,dcb_2016post_MX500_MH125_2016post_cat34FHhighpurity --mergeYears --batch local  --massPoints 125 --outputExt packaged_MX500_MH125_wwgg_cat34FHhighpurity
python RunPlotter_combined.py --procs all --cats cat34FHhighpurity  --ext packaged_MX500_MH125_wwgg_cat34FHhighpurity --years 2016pre,2016post,2017,2018


python RunPackager.py --cats cat34SLlowpurity --exts dcb_2017_MX500_MH125_2017_cat34SLlowpurity,dcb_2018_MX500_MH125_2018_cat34SLlowpurity,dcb_2016pre_MX500_MH125_2016pre_cat34SLlowpurity,dcb_2016post_MX500_MH125_2016post_cat34SLlowpurity --mergeYears --batch local  --massPoints 125 --outputExt packaged_MX500_MH125_wwgg_cat34SLlowpurity
python RunPlotter_combined.py --procs all --cats cat34SLlowpurity  --ext packaged_MX500_MH125_wwgg_cat34SLlowpurity --years 2016pre,2016post,2017,2018

python RunPackager.py --cats cat34FHlowpurity --exts dcb_2017_MX500_MH125_2017_cat34FHlowpurity,dcb_2018_MX500_MH125_2018_cat34FHlowpurity,dcb_2016pre_MX500_MH125_2016pre_cat34FHlowpurity,dcb_2016post_MX500_MH125_2016post_cat34FHlowpurity --mergeYears --batch local  --massPoints 125 --outputExt packaged_MX500_MH125_wwgg_cat34FHlowpurity
python RunPlotter_combined.py --procs all --cats cat34FHlowpurity  --ext packaged_MX500_MH125_wwgg_cat34FHlowpurity --years 2016pre,2016post,2017,2018

python RunPackager.py --cats cat12lowpurity --exts dcb_2017_MX3000_MH125_2017_cat12lowpurity,dcb_2018_MX3000_MH125_2018_cat12lowpurity,dcb_2016pre_MX3000_MH125_2016pre_cat12lowpurity,dcb_2016post_MX3000_MH125_2016post_cat12lowpurity --mergeYears --batch local  --massPoints 125 --outputExt packaged_MX3000_MH125_wwgg_cat12lowpurity
python RunPlotter_combined.py --procs all --cats cat12lowpurity  --ext packaged_MX3000_MH125_wwgg_cat12lowpurity --years 2016pre,2016post,2017,2018

python RunPackager.py --cats cat12highpurity --exts dcb_2017_MX3000_MH125_2017_cat12highpurity,dcb_2018_MX3000_MH125_2018_cat12highpurity,dcb_2016pre_MX3000_MH125_2016pre_cat12highpurity,dcb_2016post_MX3000_MH125_2016post_cat12highpurity --mergeYears --batch local  --massPoints 125 --outputExt packaged_MX3000_MH125_wwgg_cat12highpurity
python RunPlotter_combined.py --procs all --cats cat12highpurity  --ext packaged_MX3000_MH125_wwgg_cat12highpurity --years 2016pre,2016post,2017,2018
