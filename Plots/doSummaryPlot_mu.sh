python makeSummaryPlot_mu.py --input observed.json:mu/r_inclusive,r_top,r_VH,r_VBF,r_ggH --translate pois_mu.json --output Summary_mu_obs --show_bars Error,Stat --legend Error,Stat --table 0.04 --x-title "Parameter Value" --height 600 --width 800 --left-margin 0.1 --bottom-margin 0.12 --vlines --vlines 1:LineStyle=1,LineWidth=1 0.5:LineStyle=2,LineWidth=1,LineColor=17 1.5:LineStyle=2,LineWidth=1,LineColor=17 0.25:LineStyle=2,LineWidth=1,LineColor=17 0.75:LineStyle=2,LineWidth=1,LineColor=17 1.25:LineStyle=2,LineWidth=1,LineColor=17 1.75:LineStyle=2,LineWidth=1,LineColor=17 --hlines 1:LineStyle=1,LineWidth=2 --cms-label Preliminary --doSTXSColour 1

python makeSummaryPlot_mu.py --input expected.json:mu/r_inclusive,r_top,r_VH,r_VBF,r_ggH --translate pois_mu.json --output Summary_mu_exp --show_bars Error,Stat --legend Error,Stat --table 0.04 --x-title "Parameter Value" --height 600 --width 800 --left-margin 0.1 --bottom-margin 0.12 --vlines --vlines 1:LineStyle=1,LineWidth=1 0.5:LineStyle=2,LineWidth=1,LineColor=17 1.5:LineStyle=2,LineWidth=1,LineColor=17 0.25:LineStyle=2,LineWidth=1,LineColor=17 0.75:LineStyle=2,LineWidth=1,LineColor=17 1.25:LineStyle=2,LineWidth=1,LineColor=17 1.75:LineStyle=2,LineWidth=1,LineColor=17 --hlines 1:LineStyle=1,LineWidth=2 --cms-label Preliminary --doSTXSColour 1

