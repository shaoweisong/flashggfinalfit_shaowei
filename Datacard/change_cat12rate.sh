# #!/bin/bash

# 设置要遍历的文件夹路径
base_folder="/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/2017datacard"

folders=("datacard_MX250_MH125" "datacard_MX260_MH125" "datacard_MX270_MH125" "datacard_MX280_MH125" "datacard_MX300_MH125" "datacard_MX320_MH125" "datacard_MX350_MH125" "datacard_MX400_MH125" "datacard_MX450_MH125" "datacard_MX500_MH125" "datacard_MX550_MH125" "datacard_MX600_MH125" "datacard_MX650_MH125" "datacard_MX700_MH125" "datacard_MX750_MH125" "datacard_MX800_MH125" "datacard_MX850_MH125") 
# 遍历指定的文件夹
for folder in "${folders[@]}"; do
    folder_path="$base_folder/$folder"
    for file in "$folder_path"/*2017_cat12.txt.txt; do
        # 检查文件是否存在
        if [ -e "$file" ]; then
            # 替换文本内容
            # sed -i 's/5980.0000000/100/g' "$file"
            sed -i 's/ 1000 / 100000 /g' "$file"
            echo "已替换文件: $file"
        else
            echo "文件不存在: $file"
        fi
    done
done
