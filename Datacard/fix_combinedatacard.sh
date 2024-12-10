# #!/bin/bash

# 设置要遍历的文件夹路径
# base_folder="/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016postdatacard"
# base_folder="/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2016predatacard"
base_folder="/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard"
# base_folder="/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/combine_run2"
# base_folder="/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard"
folders=("datacard_MX750_MH125" "datacard_MX800_MH125" "datacard_MX850_MH125") #"datacard_MX1000_MH125" 
# folders=("2018cat5")
# 遍历指定的文件夹
for folder in "${folders[@]}"; do
    folder_path="$base_folder/$folder"
    cd $folder_path
    grep -rl 'Combination' *.txt | xargs sed -i '1,/Combination/ {/Combination/!d}'
done