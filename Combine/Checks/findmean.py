import re

# 打开并读取文件内容
with open('Pull.log', 'r') as file:
    lines = file.readlines()

# 定义一个列表来存储找到的数字
mean_values = []
function_labels = []
# 正则表达式模式，用于匹配 "Mean" 后面的第一个数字
pattern1 = re.compile(r'Mean\s+(-?\d+\.\d+e[+-]\d+)')
pattern2 = re.compile(r'biasStudy_\S+_pulls\.png')
# 遍历每一行，寻找包含 "Mean" 的行，并提取第一个数字
for line in lines:
    if 'Mean' in line:
        match = pattern1.search(line)
        if match:
            mean_values.append(match.group(1))
    if '_pulls.png' in line:
        match = pattern2.search(line)
        if match:
            function_labels.append(match.group())
print(mean_values)
print(function_labels)


