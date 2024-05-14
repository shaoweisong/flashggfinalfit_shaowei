#!/bin/bash

base_folder="/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/combine_run2"
folders=("M250" "M260" "M270" "M280" "M300" "M320" "M350" "M400" "M450" "M500" "M550" "M600" "M650" "M700" "M750" "M800" "M850" "M900") 

# 遍历指定的文件夹
for folder in "${folders[@]}"; do
    folder_path="$base_folder"
    for file in "$folder_path"/Datacard_${folder}_2017allcat.txt; do
        # 检查文件是否存在
        if [ -e "$file" ]; then
            # 替换文本内容
            # sed -i 's/5980.0000000/100/g' "$file"
            sed -i 's/0.000970198/0.0970198/g' "$file"
            echo "已替换文件: $file"
        else
            echo "文件不存在: $file"
        fi
    done
done

echo "替换完成！"

