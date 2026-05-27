import matplotlib.ticker as ticker
import pandas as pd
import os
import subprocess
import glob
import uproot
import os
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import awkward as ak
import mplhep as hep
import math
# path of the workspace
datacards_dir = "/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/"
# datacards_dir = "/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard/YHrun2/"
mass_name = ["MX400_MY250","MX500_MY250", "MX500_MY300", "MX600_MY250", "MX600_MY300", "MX600_MY400", "MX700_MY250", "MX700_MY300", "MX700_MY400", "MX700_MY500", "MX800_MY250", "MX800_MY300", "MX800_MY400", "MX800_MY500", "MX800_MY600", "MX900_MY250", "MX900_MY300", "MX900_MY400", "MX900_MY500", "MX900_MY600", "MX900_MY700","MX1000_MY250", "MX1000_MY300", "MX1000_MY400", "MX1000_MY500", "MX1000_MY600", "MX1000_MY700", "MX1000_MY800"]
xaxis_mX = False
cat="run2_cat34"
# cat="2016post_cat34"
# cat="run2"
limits_dict = {}
for mass in mass_name:
    MX = mass.split("_")[0].split("X")[1]
    MY = mass.split("_")[1].split("Y")[1]
    limits_file = uproot.open(datacards_dir+"higgsCombine"+mass+"_"+cat+".AsymptoticLimits.mH125.root")
    limits = limits_file["limit"].arrays(['limit']).limit
    if not xaxis_mX:
        if 'MX'+MX not in limits_dict.keys():
            limits_dict['MX'+MX] = {}
            limits_dict['MX'+MX][MY] = limits
        else:
            limits_dict['MX'+MX][MY] =  limits
    else:
        if 'MY'+MY not in limits_dict.keys():
            limits_dict['MY'+MY] = {}
            limits_dict['MY'+MY][MX] = limits
        else:
            limits_dict['MY'+MY][MX] =  limits
#if x axis is mY, mass1 is MX; else mass1 is MY            


plt.figure(figsize=(12, 10))
hep.style.use(hep.style.CMS)
ax = plt.gca()
if "2016pre" in cat:
    hep.cms.label(data=True, lumi=19.5, loc=1)
if "2016post" in cat:
    hep.cms.label(data=True, lumi=16.81, loc=1)
elif "2017" in cat:    
    hep.cms.label(data=True, lumi=41.5, loc=1)
elif "2018" in cat:
    hep.cms.label(data=True, lumi=59.8, loc=1)
elif "run2" in cat:
    hep.cms.label(data=True, lumi=138, loc=1)
ax.text(0.18, 0.905, "Preliminary",
        transform=ax.transAxes,
        fontsize=30, fontstyle="italic")

i = 1

if not xaxis_mX:
    # expected_median = []
    # observed = []
    # minus2sigma=[]
    # minus1sigma=[]
    # plus1sigma=[]
    # plus2sigma=[]
    for mass1 in limits_dict.keys():
        # when mX = 400GeV, mY only have one point 250GeV
        if len(limits_dict[mass1].keys())==1:
            # expected_median.append(limits_dict[mass1]['250'][2])
            # observed.append(limits_dict[mass1]['250'][5])
            # minus2sigma.append(limits_dict[mass1]['250'][0])
            # minus1sigma.append(limits_dict[mass1]['250'][1])
            # plus1sigma.append(limits_dict[mass1]['250'][3])
            # plus2sigma.append(limits_dict[mass1]['250'][4])
            xaxis_m = [250, 255]
            limits_dict[mass1]['250'] = limits_dict[mass1]['250'] * i
            plt.plot(xaxis_m,[limits_dict[mass1]['250'][2], limits_dict[mass1]['250'][2]], color='black',linewidth=2,linestyle='dashed',label='Median expected')
            # plt.plot([250], limits_dict[mass1]['250'][5],color='black',  linewidth=2, linestyle='-', marker='o', label='Observed') 
            plt.fill_between(xaxis_m,[limits_dict[mass1]['250'][1], limits_dict[mass1]['250'][1]],[limits_dict[mass1]['250'][3], limits_dict[mass1]['250'][3]],color='#647547',alpha=1,label=r'68% expected')
            plt.fill_between(xaxis_m,[limits_dict[mass1]['250'][3], limits_dict[mass1]['250'][3]],[limits_dict[mass1]['250'][4], limits_dict[mass1]['250'][4]],color='#E6B35A',alpha=1,label=r'95% expected')
            plt.fill_between(xaxis_m,  [limits_dict[mass1]['250'][0],limits_dict[mass1]['250'][0]], [limits_dict[mass1]['250'][1],limits_dict[mass1]['250'][1]], color='#E6B35A', alpha=1)
            plt.text(xaxis_m[-1]+10, limits_dict[mass1]['250'][2],r'$m_{X} = 400\,\mathrm{GeV}\ (\times 10^{0})$',  fontsize=16,va='center',ha='left')    
            i = i*10
        else:
            exponent = int(math.log10(i))
            mass_label = mass1.split('X')[1] if 'MX' in mass1 else mass1.split('Y')[1]
            xaxis_m = [int(mass2) for mass2 in limits_dict[mass1].keys()]
            expected_median = []
            observed = []
            expected_plus_2sigma = []
            expected_plus_1sigma = []
            expected_minus_1sigma = []
            expected_minus_2sigma = []
            for mass2 in limits_dict[mass1].keys():
                limits_dict[mass1][mass2] = limits_dict[mass1][mass2] * i
                expected_median.append(limits_dict[mass1][mass2][2])
                observed.append(limits_dict[mass1][mass2][5])
                expected_plus_2sigma.append(limits_dict[mass1][mass2][4])
                expected_plus_1sigma.append(limits_dict[mass1][mass2][3])
                expected_minus_1sigma.append(limits_dict[mass1][mass2][1])
                expected_minus_2sigma.append(limits_dict[mass1][mass2][0])
            plt.plot(xaxis_m, expected_median, color='black',linewidth=2,linestyle='dashed')
            # plt.plot(xaxis_m, observed,color='black',  linewidth=2, linestyle='-', marker='o')        
            plt.fill_between(xaxis_m, expected_minus_1sigma, expected_plus_1sigma, color='#647547', alpha=1)
            plt.fill_between(xaxis_m,expected_minus_2sigma, expected_minus_1sigma, color='#E6B35A', alpha=1)
            plt.fill_between(xaxis_m,expected_plus_1sigma, expected_plus_2sigma, color='#E6B35A', alpha=1)
            plt.text(xaxis_m[-1] + 10,expected_median[-1],fr'$m_X = {mass_label}\,\mathrm{{GeV}}\ (\times 10^{{{exponent}}})$',fontsize=16,va='center',ha='left')
            i = i*10
else:
    #when mY = 250GeV, mX has more than one point
    for mass1 in limits_dict.keys():
        exponent = int(math.log10(i))
        mass_label = mass1.split('Y')[1] if 'MY' in mass1 else mass1.split('X')[1]
        xaxis_m = [int(mass2) for mass2 in limits_dict[mass1].keys()]
        expected_median = []
        observed = []
        expected_plus_2sigma = []
        expected_plus_1sigma = []
        expected_minus_1sigma = []
        expected_minus_2sigma = []
        for mass2 in limits_dict[mass1].keys():
            print("mass1:", mass1, "mass2:", mass2)
            print("expected median limit", limits_dict[mass1][mass2][2])
            limits_dict[mass1][mass2] = limits_dict[mass1][mass2] * i
            expected_median.append(limits_dict[mass1][mass2][2])
            observed.append(limits_dict[mass1][mass2][5])
            expected_plus_2sigma.append(limits_dict[mass1][mass2][4])
            expected_plus_1sigma.append(limits_dict[mass1][mass2][3])
            expected_minus_1sigma.append(limits_dict[mass1][mass2][1])
            expected_minus_2sigma.append(limits_dict[mass1][mass2][0])
        if i ==1:    
            plt.plot(xaxis_m, expected_median, color='black',linestyle='dashed',linewidth=2,label='Median expected')
            # plt.plot(xaxis_m, observed,color='black',  linewidth=2, linestyle='-', marker='o', label='Observed')     
            plt.fill_between(xaxis_m, expected_minus_1sigma, expected_plus_1sigma, color='#647547', alpha=1,label=r'68% expected')
            plt.fill_between(xaxis_m,expected_minus_2sigma, expected_minus_1sigma, color='#E6B35A', alpha=1,label=r'95% expected')
            plt.fill_between(xaxis_m,expected_plus_1sigma, expected_plus_2sigma, color='#E6B35A', alpha=1)
            plt.text(xaxis_m[-1] + 10,expected_median[-1],fr'$m_Y = {mass_label}\,\mathrm{{GeV}}\ (\times 10^{{{exponent}}})$',fontsize=16,va='center',ha='left')
            i = i*10
        else:
            plt.plot(xaxis_m, expected_median, color='black',linestyle='dashed',linewidth=2)
            # plt.plot(xaxis_m, observed,color='black',  linewidth=2, linestyle='-', marker='o', label='Observed')     
            plt.fill_between(xaxis_m, expected_minus_1sigma, expected_plus_1sigma, color='#647547', alpha=1)
            plt.fill_between(xaxis_m,expected_minus_2sigma, expected_minus_1sigma, color='#E6B35A', alpha=1)
            plt.fill_between(xaxis_m,expected_plus_1sigma, expected_plus_2sigma, color='#E6B35A', alpha=1)
            plt.text(xaxis_m[-1] + 10,expected_median[-1],fr'$m_Y = {mass_label}\,\mathrm{{GeV}}\ (\times 10^{{{exponent}}})$',fontsize=16,va='center',ha='left')
            i = i*10    
if not xaxis_mX:    
    plt.xlabel(r'$m_Y$ (GeV)')
    plt.ylabel(r'$\sigma(pp\to X)\times B(X\to YH \to WW\gamma\gamma)(fb)$')
    # set x axis range
    plt.xlim(200,1000)    
    plt.yscale('log')
    # xticks = [250, 300, 400, 500, 600, 700,800,900,1000]
    xticks = [300, 400, 500, 600, 700,800,900,1000]
    plt.xticks(xticks, labels=[str(x) for x in xticks], fontsize=25)    
    yticks = [1, 100, 10000, 1000000, 100000000, 10000000000]
    plt.yticks(yticks, labels=[f'$10^{{{int(np.log10(y))}}}$' for y in yticks], fontsize=25)
    plt.ylim(0.1,10000000000)
    plt.legend(loc='upper right', bbox_to_anchor=(1., 0.98), title="95% CL upper limits")
    plt.savefig('yh_limit_'+cat+'_vs_MY.pdf')
else:
    plt.xlabel(r'$m_X$ (GeV)')        
    plt.ylabel(r'$\sigma(pp\to X)\times B(X\to YH \to WW\gamma\gamma)(fb)$')
    plt.xlim(350,1250)
    plt.yscale('log')
    xticks = [400, 500, 600, 700, 800, 900, 1000]
    plt.xticks(xticks, labels=[str(x) for x in xticks], fontsize=25)
    yticks = [1, 100, 10000, 1000000, 100000000, 10000000000]
    plt.yticks(yticks, labels=[f'$10^{{{int(np.log10(y))}}}$' for y in yticks], fontsize=25)
    plt.ylim(0.1,10000000000)
    plt.legend(loc='upper right', bbox_to_anchor=(1., 0.98), title="95% CL upper limits")
    plt.savefig('yh_limit_'+cat+'_vs_mX.pdf')