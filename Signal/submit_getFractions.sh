#!/bin/bash

year='2018'
ext=''
#ext='_multiclassifier'

cd /vols/build/cms/jl2117/hgg/FinalFits/legacy/May20/CMSSW_10_2_13/src/flashggFinalFit/Signal
eval `scramv1 runtime -sh`

python getFractions.py --ext stage1_2_${year} --inputWSDir /vols/cms/jl2117/hgg/ws/May20/pass0${ext}_fix/signal_${year} --doFractions --doEffAcc --cats RECO_0J_PTH_0_10_Tag0,RECO_0J_PTH_0_10_Tag1,RECO_0J_PTH_0_10_Tag2,RECO_0J_PTH_GT10_Tag0,RECO_0J_PTH_GT10_Tag1,RECO_0J_PTH_GT10_Tag2,RECO_1J_PTH_0_60_Tag0,RECO_1J_PTH_0_60_Tag1,RECO_1J_PTH_0_60_Tag2,RECO_1J_PTH_120_200_Tag0,RECO_1J_PTH_120_200_Tag1,RECO_1J_PTH_120_200_Tag2,RECO_1J_PTH_60_120_Tag0,RECO_1J_PTH_60_120_Tag1,RECO_1J_PTH_60_120_Tag2,RECO_GE2J_PTH_0_60_Tag0,RECO_GE2J_PTH_0_60_Tag1,RECO_GE2J_PTH_0_60_Tag2,RECO_GE2J_PTH_120_200_Tag0,RECO_GE2J_PTH_120_200_Tag1,RECO_GE2J_PTH_120_200_Tag2,RECO_GE2J_PTH_60_120_Tag0,RECO_GE2J_PTH_60_120_Tag1,RECO_GE2J_PTH_60_120_Tag2,RECO_PTH_200_300_Tag0,RECO_PTH_200_300_Tag1,RECO_PTH_300_450_Tag0,RECO_PTH_300_450_Tag1,RECO_PTH_450_650_Tag0,RECO_PTH_GT650_Tag0,RECO_THQ_LEP,RECO_TTH_HAD_PTH_0_60_Tag0,RECO_TTH_HAD_PTH_0_60_Tag1,RECO_TTH_HAD_PTH_0_60_Tag2,RECO_TTH_HAD_PTH_0_60_Tag3,RECO_TTH_HAD_PTH_120_200_Tag0,RECO_TTH_HAD_PTH_120_200_Tag1,RECO_TTH_HAD_PTH_120_200_Tag2,RECO_TTH_HAD_PTH_120_200_Tag3,RECO_TTH_HAD_PTH_60_120_Tag0,RECO_TTH_HAD_PTH_60_120_Tag1,RECO_TTH_HAD_PTH_60_120_Tag2,RECO_TTH_HAD_PTH_60_120_Tag3,RECO_TTH_HAD_PTH_GT200_Tag0,RECO_TTH_HAD_PTH_GT200_Tag1,RECO_TTH_HAD_PTH_GT200_Tag2,RECO_TTH_HAD_PTH_GT200_Tag3,RECO_TTH_LEP_PTH_0_60_Tag0,RECO_TTH_LEP_PTH_0_60_Tag1,RECO_TTH_LEP_PTH_0_60_Tag2,RECO_TTH_LEP_PTH_0_60_Tag3,RECO_TTH_LEP_PTH_120_200_Tag0,RECO_TTH_LEP_PTH_120_200_Tag1,RECO_TTH_LEP_PTH_60_120_Tag0,RECO_TTH_LEP_PTH_60_120_Tag1,RECO_TTH_LEP_PTH_GT200_Tag0,RECO_TTH_LEP_PTH_GT200_Tag1,RECO_VBFLIKEGGH_Tag0,RECO_VBFLIKEGGH_Tag1,RECO_VBFTOPO_BSM_Tag0,RECO_VBFTOPO_BSM_Tag1,RECO_VBFTOPO_JET3VETO_HIGHMJJ_Tag0,RECO_VBFTOPO_JET3VETO_HIGHMJJ_Tag1,RECO_VBFTOPO_JET3VETO_LOWMJJ_Tag0,RECO_VBFTOPO_JET3VETO_LOWMJJ_Tag1,RECO_VBFTOPO_JET3_HIGHMJJ_Tag0,RECO_VBFTOPO_JET3_HIGHMJJ_Tag1,RECO_VBFTOPO_JET3_LOWMJJ_Tag0,RECO_VBFTOPO_JET3_LOWMJJ_Tag1,RECO_VBFTOPO_VHHAD_Tag0,RECO_VBFTOPO_VHHAD_Tag1,RECO_VH_MET_Tag0,RECO_VH_MET_Tag1,RECO_WH_LEP_HIGH_Tag0,RECO_WH_LEP_HIGH_Tag1,RECO_WH_LEP_HIGH_Tag2,RECO_WH_LEP_LOW_Tag0,RECO_WH_LEP_LOW_Tag1,RECO_WH_LEP_LOW_Tag2,RECO_ZH_LEP_Tag0,RECO_ZH_LEP_Tag1
