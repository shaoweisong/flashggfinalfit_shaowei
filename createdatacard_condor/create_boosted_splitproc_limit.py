# -*- coding: utf-8 -*-
'''
Hi my friend, believe it or not, I just want to create a king script to create limit with flashggfinal fit framework from ntuples(root) with only one script
let see if the magic can work
'''
import codecs
import uproot 
import awkward as ak
import json
from collections import defaultdict
# import ROOT
import os 
import sys
import subprocess
import time
import argparse

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('--mass',type=str,default="MX3000_MH125", help='mass')
parser.add_argument('--year',type=str,default="2018", help='year')
parser.add_argument('--input_dir',type=str,default="/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/", help='input_dir')
args = parser.parse_args()
mass = args.mass
year = args.year
input_dir = args.input_dir
if year == "2017" or year == "2018":
    yield_cat = year.split("20")[1]+"boosted"
    makedatacard_year = year
elif year == "2016pre" or year == "2016post" or year == "2016":
    yield_cat = "16boosted"
    makedatacard_year = year
input_path_name = input_dir + year + "/" + mass + "/"

# ----------------------------  trees2WS part ---------------------------- #
def run_Tree2WS_sig(inputpath_name, inputfile_name, ws_path, output_sig_root_name, process):
    process_prefix = process.split('ws_')[1]
    print("process_prefix: ", process_prefix)
    os.chdir("./Trees2WS")
    command = "mkdir " +inputpath_name+ process+ "_" + ws_path
    print("mkdir ws_hhgg:",command )
    mkdir_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # no need to change the config file since all are auto set
    if year == "2016pre" or year == "2016post" or year == "2016":
        command = " python trees2ws.py --inputConfig config_sys16.py --inputTreeFile " + inputpath_name+inputfile_name + " --inputMass 125  --doSystematics --productionMode " + process_prefix + " --year " + year
    else:
        command = " python trees2ws.py --inputConfig config_sys"+year.split("20")[1]+".py --inputTreeFile " + inputpath_name+inputfile_name + " --inputMass 125  --doSystematics --productionMode " + process_prefix + " --year " + year
    # run trees2ws at shell
    run_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # create the dir for this workspace
    command = "cp " + inputpath_name +process+ "/" + inputfile_name.split('.root')[0] + '_'+process_prefix + ".root" + " " + inputpath_name +process+ "_"+ws_path +"/" + output_sig_root_name
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")

def run_Tree2WS_data(inputpath_name, ws_data_path, output_data_root_name):
    os.chdir("./Trees2WS")
    # run data tree2ws
    command = "python trees2ws_data.py --inputConfig config_simple.py --inputTreeFile " + inputpath_name + output_data_root_name
    run_data_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # mkdir 
    command = "mkdir " +inputpath_name+  ws_data_path
    mkdir_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # run cp data 
    print("cp data")
    command = "cp " + inputpath_name +"ws/" + output_data_root_name + " " + inputpath_name + ws_data_path +"/" + "allData.root"
    print(command)
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")

# ------------------------------ Signal fit part ----------------------------- #
def run_ftest(ws_path,inputpath_name, process):
    os.chdir("./Signal")
    #copy the configuration file
    command = "cp config_toy"+year+".py " + "config_" +process+ ws_path + ".py"
    run_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    time.sleep(2)
    # sed config_*.py
    print("ws_path: ", ws_path)

    command1 = 'sed -i "s#ws_path#' +ws_path + '#g" ' +  "config_" +process+ ws_path + ".py" 
    sed1_p = subprocess.call(command1, shell=True)

    command2 = 'sed -i "s#input_path#' + inputpath_name + '#g" ' + "config_" +process+ ws_path + ".py"

    sed2_p = subprocess.call(command2, shell=True)

    command3 = 'sed -i "s#gghh#' +process + '#g" ' +  "config_" +process+ ws_path + ".py" 
    sed1_p = subprocess.call(command3, shell=True)

    # run ftest
    command = "python RunSignalScripts.py --inputConfig " +  "config_" +process+ ws_path + ".py"+ " --mode 'fTest' --modeOpts '--doPlots' " 
    run_ftest_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    command2 = "python RunSignalScripts.py --inputConfig " +  "config_" +process+ ws_path + ".py"+ " --mode 'calcPhotonSyst'" 
    run_ftest_p = subprocess.call(command2, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")
def run_signalfit(ws_path, inputpath_name, process):
    os.chdir("./Signal")
    # run signalfit
    # process for the config file name should be the same as the process name
    process_prefix = process.split('ws_')[1]
    print("signal fit process_prefix: ", process_prefix)
    command = "python RunSignalScripts.py --inputConfig " +  "config_" +process_prefix+ ws_path + ".py"+ " --mode 'signalFit'  "
    run_signalfit_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # cp the signalfit output root file to ws
    command = "cp outdir_dcb_"+year+"_" + ws_path + "/signalFit/output/*.root" + " " + inputpath_name +  process + "_"+ws_path
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")
def run_signal_plot(outputExt, cats, exts,ws_path,inputpath_name, cp_name, process):
    os.chdir("./Signal")
    # run packaged
    command = "python RunPackager.py --cats " + cats + " --exts " + exts + "  --batch local  --massPoints 125 --year "+year+" --outputExt " + outputExt 
    run_packaged_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # run plotter
    command = "python RunPlotter"+year+".py --cats " + cats + " --procs all --years "+year+" --ext " + outputExt 
    run_plotter_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # cp the signalfit output root file to ws
    command = "cp outdir_packaged_" + ws_path + "/*.root" + " " + inputpath_name +  process + "_"+ ws_path + "/" + cp_name
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    command = "cp outdir_packaged_" + ws_path + "/Plots/*.pdf" + " " + inputpath_name +  process + "_"+ ws_path + "/" 
    cppng_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")

# ---------------------------- Background fit part --------------------------- #
def run_backgroundfit(ws_data_path, inputpath_name, ext_name, cp_name):
    os.chdir("./Background")
    #remove the old output dir
    command = "rm -rf outdir_" + ext_name
    rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # modify the config file
    #copy config_toy2017.py
    command = "cp config_toy"+year+".py " + "config_" + ws_data_path + ".py"
    run_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    time.sleep(2)
    # sed config_*.py
    command1 = 'sed -i "s#ws_path#' + ws_data_path + '#g" ' +  "config_" + ws_data_path + ".py" 
    sed1_p = subprocess.call(command1, shell=True)

    command2 = 'sed -i "s#input_path#' + inputpath_name + '#g" ' + "config_" + ws_data_path + ".py"

    sed2_p = subprocess.call(command2, shell=True)

    command3 = 'sed -i "s#ext_name#' + ext_name + '#g" ' + "config_" + ws_data_path + ".py"

    sed2_p = subprocess.call(command3, shell=True)
    # run ftest
    command =  "python RunBackgroundScripts.py --inputConfig " +   "config_" + ws_data_path + ".py" + " --mode fTestParallel" 
    run_ftest_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # run cp data 
    command = "cp outdir_" + ext_name + "/*.root" +  " " + inputpath_name + ws_data_path +"/" + cp_name
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    
    command = "cp outdir_" + ext_name + "/bkgfTest-Data/*.pdf" +  " " + inputpath_name + ws_data_path +"/" 
    cppng_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..") 
def run_background_only_cp(ws_data_path, inputpath_name, exist_background_path_name):
    # mkdir ws_data_path
    command = "mkdir " + inputpath_name + ws_data_path
    mkdir_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Background")
    # run cp data 
    command = "cp " + exist_background_path_name + ws_data_path+ "/*.root" +  " " + inputpath_name + ws_data_path +"/"
    # print(command)
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")

# ---------------------------- data card part --------------------------- #
def run_yields(ws_sig_path,ws_bkg_path, inputpath_name, process):
    os.chdir("./Datacard")
    # run Runyields
    if "bbgg" in process:
        print("bbgg in process")
        command = "python RunYields_"+yield_cat+"_bbgg.py --inputWSDirMap "+year+"=" +inputpath_name+ process + "_" + ws_sig_path+" --sigModelWSDir " + inputpath_name+ process + "_" + ws_sig_path+" --bkgModelWSDir " + inputpath_name+  ws_bkg_path + " --cats auto --doSystematics --procs "+process.split("ws_")[-1]+" --batch local --ext "+ ws_sig_path
    else:
        command = "python RunYields_"+yield_cat+".py --inputWSDirMap "+year+"=" +inputpath_name+ process + "_" + ws_sig_path+" --sigModelWSDir " + inputpath_name+ process + "_" + ws_sig_path+" --bkgModelWSDir " + inputpath_name+  ws_bkg_path + " --cats auto --doSystematics --procs "+process.split("ws_")[-1]+" --batch local --ext "+ ws_sig_path
    run_yields_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")
def run_makeDatacard(ws_sig_path,output_card_name,channel,process):
    os.chdir("./Datacard")
    # run RunmakeDatacard
    if "wwgg" in process:
        command = "python makeDatacard_"+yield_cat+".py --years "+year+" --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name  
    elif "bbgg" in process:
        command = "python makeDatacard_"+yield_cat+"_bbgg.py --years "+year+" --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name  
    elif "zzgg" in process:
        command = "python makeDatacard_"+yield_cat+"_zzgg.py --years "+year+" --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name  
    else:
        command = "python makeDatacard_"+yield_cat+"_singlehiggs.py --years "+year+" --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name
    run_makeDatacard_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # write the branching ratio info in it 
    # if("FHSL" in channel):
    add_br_note = open(output_card_name+".txt", 'a')
    # add_br_note.write("CMS_wwgg_br_HH_WWgg      rateParam  *  " +process+ "*  0.000970198 \n CMS_wwgg_br_WW_4Q_2Qlnu     rateParam  *  " +process+ "*  0.8899 \n nuisance  edit  freeze  CMS_wwgg_br_HH_WWgg \n nuisance  edit  freeze  CMS_wwgg_br_WW_4Q_2Qlnu")
    add_br_note.write("CMS_wwgg_br_HH_WWgg      rateParam  *  " +process+ "*  2 \n nuisance  edit  freeze  CMS_wwgg_br_HH_WWgg")
    os.chdir("..")
def clean_directory():
    os.chdir("./Signal")
    command = "rm -rf outdir_*/"
    rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")
    os.chdir("./Datacard")
    command = "rm -rf yields_*/"
    rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")
    print("cleaned")

cat_list = ['cat12lowpurity','cat12highpurity']
final_state_list = ["wwgg","bbgg","zzgg","VBF","GGH","VH","TTH"]
for cat in cat_list:
    # ------------------------------------- background fit -------------------------------------
    ws_data_path = "ws_"+year+"_"+ cat
    output_data_root_name = "Data_"+year+"_"+ cat + "_"+ mass + ".root"
    run_Tree2WS_data(inputpath_name = input_path_name , ws_data_path=ws_data_path, output_data_root_name=output_data_root_name)
    ext_name = "ws_"+year+"_" + cat
    run_backgroundfit(ws_data_path=ws_data_path, inputpath_name = input_path_name , ext_name=ext_name, cp_name="CMS-HGG_multipdf_"+cat+"_"+year+".root")
    for final_state in final_state_list:   
        # # # ------------------------------------- signal fit -------------------------------------
        input_file_name_signal = mass +"_"+year+"_"+final_state+"_"+cat+".root"
        ws_path_signal = mass +"_"+year+"_"+cat
        output_root_name_signal = "output_Signal"+mass + cat + "_M125_"+year+"_13TeV_amcatnloFXFX_pythia8_gghh" + final_state + ".root"
        run_Tree2WS_sig(inputpath_name = input_path_name ,inputfile_name=input_file_name_signal, ws_path = ws_path_signal, output_sig_root_name=output_root_name_signal, process='ws_gghh'+ final_state)
        run_ftest(ws_path = ws_path_signal, inputpath_name= input_path_name, process='gghh'+ final_state)
        run_signalfit(ws_path = ws_path_signal, inputpath_name=input_path_name, process='ws_gghh'+ final_state)
        run_signal_plot(cats=cat, exts="dcb_"+year+"_" + mass +"_"+year+"_" + cat, outputExt="packaged_" + mass +"_"+year+"_" + cat, ws_path=ws_path_signal, inputpath_name =input_path_name,  cp_name="CMS-HGG_sigfit_packaged_"+cat+"_"+year+".root", process = 'ws_gghh'+ final_state)
        run_yields(ws_sig_path=ws_path_signal, inputpath_name = input_path_name, ws_bkg_path = ws_data_path, process='ws_gghh'+ final_state)
        run_makeDatacard(ws_sig_path=ws_path_signal, output_card_name = "Datacard_" + mass +"_"+year+"_" +final_state +"_"+ cat, channel=mass,process='gghh'+ final_state) 
        clean_directory()
