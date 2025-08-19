text2workspace.py -m 125 MX250_MH125.txt 
#calculate limit
combine -M AsymptoticLimits -m 125 -n MX250_MH125 -d MX250_MH125.txt --freezeParameters allConstrainedNuisances --setParameters MH=125.38
combine -M AsymptoticLimits -m 125 -n MX250_MH125 -d MX250_MH125.txt --freezeParameters allConstrainedNuisances --cminDefaultMinimizerStrategy 1 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminFallbackAlgo Minuit2,Simplex,0:0.1 --setParameters MH=125.38
#generate bestfit
combine -M MultiDimFit MX250_MH125.root -m 125 --freezeParameters MH --saveWorkspace  -n .M250_bestfit --cminDefaultMinimizerStrategy 1 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminFallbackAlgo Minuit2,Simplex,0:0.1 --setParameters MH=125.38
python getCatInfo.py --inputWSFile MX250_MH125.root  --cats all  --saveCatInfo  --ext spin0_MX250_Cats
python getCatInfo.py --inputWSFile higgsCombine.M250_bestfit.MultiDimFit.mH125.root  --cats all  --saveCatInfo  --ext spin0_MX250_postfit_Cats
python convert_pkl_json.py --exts catInfospin0_MX250_Cats
python convert_pkl_json.py --exts catInfospin0_MX250_postfit_Cats




text2workspace.py -m 125 MX3000_MH125.txt 
#calculate limit
combine -M AsymptoticLimits -m 125 -n MX3000_MH125 -d MX3000_MH125.txt --freezeParameters allConstrainedNuisances --setParameters MH=125.38
combine -M AsymptoticLimits -m 125 -n MX3000_MH125 -d MX3000_MH125.txt --freezeParameters allConstrainedNuisances --cminDefaultMinimizerStrategy 1 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminFallbackAlgo Minuit2,Simplex,0:0.1 --setParameters MH=125.38
#generate bestfit
combine -M MultiDimFit MX3000_MH125.root -m 125 --freezeParameters MH --saveWorkspace  -n .M3000_bestfit --cminDefaultMinimizerStrategy 1 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --X-rtd MINIMIZER_multiMin_maskConstraints --cminFallbackAlgo Minuit2,Simplex,0:0.1 --setParameters MH=125.38


python getCatInfo.py --inputWSFile MX3000_MH125.root  --cats all  --saveCatInfo  --ext spin0_MX3000_Cats
python getCatInfo.py --inputWSFile higgsCombine.M3000_bestfit.MultiDimFit.mH125.root  --cats all  --saveCatInfo  --ext spin0_MX3000_postfit_Cats
python convert_pkl_json.py --exts catInfospin0_MX3000_Cats
python convert_pkl_json.py --exts catInfospin0_MX3000_postfit_Cats
