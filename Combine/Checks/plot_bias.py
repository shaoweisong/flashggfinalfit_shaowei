import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import re
from matplotlib import rcParams
rcParams['font.family'] = 'Arial Unicode MS'
# Set the style of the plot
sns.set(style="white")

# Create the figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Draw a horizontal line at y = 1
ax.axhline(y=1, color='black', linestyle='--', label=r'$\mu = 1$')

# Define the x-values for the points
# Define the labels for the points
mean_values = []
function_labels = []

with open('Pull.log', 'r') as file:
    lines = file.readlines()

# define regular expression to match "Mean" number
pattern1 = re.compile(r'Mean\s+(-?\d+\.\d+e[+-]\d+)')
# define regular expression to match function labels
pattern2 = re.compile(r'biasStudy_\S+_pulls\.png')
#loop Pull.log to find the mean values and function labels
for line in lines:
    if 'Mean' in line:
        match = pattern1.search(line)
        if match:
            mean_values.append(match.group(1))
            #convert the string to float
            mean_values[-1] = float(mean_values[-1])
    if '_pulls.png' in line:
        match = pattern2.search(line)
        if match:
            function_labels.append(match.group().split('_')[1])
print(mean_values)
print(function_labels)
# Plot the points with different colors
sns.scatterplot(x=mean_values, y=[1]*len(mean_values), hue=function_labels, marker='o', s=100, ax=ax)

# Draw vertical dashed lines at x = -0.14 and x = 0.14
ax.axvline(x=-0.14, color='blue', linestyle='--', label=r'$-0.14$')
ax.axvline(x=0.14, color='blue', linestyle='--', label=r'$0.14$')
# draw vertical line at each x tick
ax.grid(axis='x', linestyle='--')

# Set labels and title
ax.set_xlabel(r'$\frac{\mu - \widetilde{\mu}}{\sigma_{\mu}}$')
ax.set_ylabel(f'$\mu$')
# ax.set_title('Plot with Seaborn')

# Add legend
ax.legend()
# only show yticks at 1
ax.set_yticks([1])
# x range from -0.4 to 0.4 with 0.1 step but show more space
ax.set_xticks(np.arange(-0.2, 0.3, 0.1))

# Show the plot
plt.savefig('./bias_study_dot_plot.png', dpi=300)
plt.show()