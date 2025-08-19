
text2workspace.py Datacard_MX1000_MH125.txt -m 125
python replaceDataWithPseudoToy.py --inputWSFile Datacard_MX1000_MH125.root --mass 125.38 --seed 123
python RunFits.py --inputJson inputjson/inputs_tutorial_bestfit_syst.json --mode MX1000_MH125 --ext PseudoToy --mass 125.38 --batch condor --queue espresso --doObserved
python RunFits.py --inputJson inputjson/inputs_tutorial_profile1D_syst.json --mode MX1000_MH125 --ext PseudoToy --mass 125.38 --batch condor --queue espresso --doObserved
python RunFits.py --inputJson inputjson/inputs_tutorial_profile1D_freezeNuisances.json --mode MX1000_MH125 --ext PseudoToy --mass 125.38 --batch condor --queue espresso --snapshotWSFile $PWD/runFitsPseudoToy_MX1000_MH125/higgsCombine_bestfit_syst_obs_r.MultiDimFit.mH125.38.root --doObserved
# prefit
python makeSplusBModelPlot.py --inputWSFile /afs/cern.ch/user/s/shsong/CMSSW_14_1_0_pre4/src/flashggFinalFit/Combine/DatacardPseudoToy_MX1000_MH125.root --cats all --unblind --doZeroes --ext PseudoToy_prefit
# postfit
python makeSplusBModelPlot.py --inputWSFile /afs/cern.ch/user/s/shsong/CMSSW_14_1_0_pre4/src/flashggFinalFit/Combine/runFitsPseudoToy_MX1000_MH125/higgsCombine_bestfit_syst_obs_r.MultiDimFit.mH125.38.root --cats all --unblind --doZeroes --ext PseudoToy_postfit --loadSnapshot MultiDimFit

# make bands
python makeToys.py --inputWSFile /afs/cern.ch/user/s/shsong/CMSSW_14_1_0_pre4/src/flashggFinalFit/Combine/runFitsPseudoToy_MX1000_MH125/higgsCombine_bestfit_syst_obs_r.MultiDimFit.mH125.38.root --loadSnapshot MultiDimFit --ext PseudoToy_postfit_withbands --nToys 5 --batch condor

# --queue workday 
python makeSplusBModelPlot.py --inputWSFile /afs/cern.ch/user/s/shsong/CMSSW_14_1_0_pre4/src/flashggFinalFit/Combine/runFitsPseudoToy_MX1000_MH125/higgsCombine_bestfit_syst_obs_r.MultiDimFit.mH125.38.root --cats all --unblind --doZeroes --ext PseudoToy_postfit_withbands --loadSnapshot MultiDimFit --doBands --doToyVeto
python makeSplusBModelPlot.py --inputWSFile /afs/cern.ch/user/s/shsong/CMSSW_14_1_0_pre4/src/flashggFinalFit/Combine/runFitsPseudoToy_MX1000_MH125/higgsCombine_bestfit_syst_obs_r.MultiDimFit.mH125.38.root --cats all --unblind --doZeroes --ext PseudoToy_postfit_withbands --loadSnapshot MultiDimFit --doBands --doToyVeto --doSumCategories --skipIndividualCatPlots --doCatWeights

