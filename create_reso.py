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
# ----------------------------  trees2WS part ---------------------------- #
def run_Tree2WS_sig(inputpath_name, inputfile_name, log_file_name, ws_path, output_sig_root_name, process):
    print("signal tree2ws")
    process_prefix = process.split('ws_')[1]
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Trees2WS")
    # no need to change the config file since all are auto set
    command = " python trees2ws.py --inputConfig config_sys17.py --inputTreeFile " + inputpath_name+inputfile_name + " --inputMass 125  --doSystematics --productionMode " + process_prefix + " --year 2017  > " + log_file_name+ " 2>&1"
    # run trees2ws at shell
    run_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    print(command)
    # create the dir for this workspace
    command = "mkdir " +inputpath_name+ process+ "_" + ws_path
    print(command)
    mkdir_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # cp the root file to the ws dir
    command = "cp " + inputpath_name +process+ "/" + inputfile_name.split('.root')[0] + '_'+process_prefix + ".root" + " " + inputpath_name +process+ "_"+ws_path +"/" + output_sig_root_name
    print(command)
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
def run_Tree2WS_data(inputpath_name, ws_data_path, output_data_root_name):
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Trees2WS")
    print("data tree2ws")
    # run data tree2ws
    command = "python trees2ws_data.py --inputConfig config_simple.py --inputTreeFile " + inputpath_name + output_data_root_name
    print(command)
    run_data_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # mkdir 
    command = "mkdir " +inputpath_name+  ws_data_path
    print(command)
    mkdir_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # run cp data 
    command = "cp " + inputpath_name +"ws/" + output_data_root_name + " " + inputpath_name + ws_data_path +"/" + "allData.root"
    print(command)
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)

# ------------------------------ Signal fit part ----------------------------- #
def run_ftest(ws_path, log_name, inputpath_name, process):
    print("signal ftest")
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal")
    # modify the config file
    #copy config_toy2017.py
    # remove the old output dir
    command = "rm -rf outdir_dcb_2017_" + ws_path
    print(command)
    rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # remove the old packaged dir
    command = "rm -rf outdir_packaged_" + ws_path
    print(command)
    rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    #copy config_toy2017.py
    command = "cp config_toy2017.py " + "config_" +process+ ws_path + ".py"
    print(command)
    run_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    time.sleep(2)
    # sed config_*.py
    command1 = 'sed -i "s#ws_path#' +ws_path + '#g" ' +  "config_" +process+ ws_path + ".py" 
    print(command1)
    sed1_p = subprocess.call(command1, shell=True)
    command2 = 'sed -i "s#input_path#' + inputpath_name + '#g" ' + "config_" +process+ ws_path + ".py"
    print(command2)
    sed2_p = subprocess.call(command2, shell=True)
    command3 = 'sed -i "s#gghh#' +process + '#g" ' +  "config_" +process+ ws_path + ".py" 
    print(command3)
    sed1_p = subprocess.call(command3, shell=True)
    # run ftest
    command = "python RunSignalScripts.py --inputConfig " +  "config_" +process+ ws_path + ".py"+ " --mode 'fTest' --modeOpts '--doPlots' " + " > " + log_name + " 2>&1"
    print(command)
    run_ftest_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    command2 = "python RunSignalScripts.py --inputConfig " +  "config_" +process+ ws_path + ".py"+ " --mode 'calcPhotonSyst'" + " > " + log_name + " 2>&1"
    print(command2)
    run_ftest_p = subprocess.call(command2, shell=True, stdout=subprocess.PIPE)
    

def run_signalfit(ws_path, log_name, inputpath_name, process):
    print("signal signalfit")
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal")
    # run signalfit
    # process for the config file name should be the same as the process name
    process_prefix = process.split('ws_')[1]
    command = "python RunSignalScripts.py --inputConfig " +  "config_" +process_prefix+ ws_path + ".py"+ " --mode 'signalFit'  " + " > " + log_name + " 2>&1"
    print(command)
    run_signalfit_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # cp the signalfit output root file to ws
    command = "cp outdir_dcb_2017_" + ws_path + "/signalFit/output/*.root" + " " + inputpath_name +  process + "_"+ws_path
    print(command)
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)


def run_signal_plot(outputExt, cats, exts,log_packaged_name,ws_path,inputpath_name,log_plotter_name, cp_name, process):
    print("signal plot")
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal")
    # run packaged
    command = "python RunPackager.py --cats " + cats + " --exts " + exts + "  --batch local  --massPoints 125 --year 2017 --outputExt " + outputExt + " > " + log_packaged_name + " 2>&1"
    print(command)
    run_packaged_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # run plotter
    command = "python RunPlotter2017.py --cats " + cats + " --procs all --years 2017 --ext " + outputExt + " > " + log_plotter_name + " 2>&1"
    print(command)
    run_plotter_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # cp the signalfit output root file to ws
    command = "cp outdir_packaged_" + ws_path + "/*.root" + " " + inputpath_name +  process + "_"+ ws_path + "/" + cp_name
    print(command)
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    command = "cp outdir_packaged_" + ws_path + "/Plots/*.pdf" + " " + inputpath_name +  process + "_"+ ws_path + "/" 
    print(command)
    cppng_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
# ---------------------------- Background fit part --------------------------- #
def run_backgroundfit(ws_data_path, log_name, inputpath_name, ext_name, cp_name):
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Background")
    print("background fit")
    #remove the old output dir
    command = "rm -rf outdir_" + ext_name
    print(command)
    rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # modify the config file
    #copy config_toy2017.py
    command = "cp config_toy2017.py " + "config_" + ws_data_path + ".py"
    print(command)
    run_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    time.sleep(2)
    # sed config_*.py
    command1 = 'sed -i "s#ws_path#' + ws_data_path + '#g" ' +  "config_" + ws_data_path + ".py" 
    print(command1)
    sed1_p = subprocess.call(command1, shell=True)

    command2 = 'sed -i "s#input_path#' + inputpath_name + '#g" ' + "config_" + ws_data_path + ".py"
    print(command2)

    sed2_p = subprocess.call(command2, shell=True)

    command3 = 'sed -i "s#ext_name#' + ext_name + '#g" ' + "config_" + ws_data_path + ".py"
    print(command3)

    sed2_p = subprocess.call(command3, shell=True)
    # run ftest
    command =  "python RunBackgroundScripts.py --inputConfig " +   "config_" + ws_data_path + ".py" + " --mode fTestParallel" + " > " + log_name + " 2>&1"
    print(command)
    run_ftest_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # run cp data 
    command = "cp outdir_" + ext_name + "/*.root" +  " " + inputpath_name + ws_data_path +"/" + cp_name
    print(command)
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    
    command = "cp outdir_" + ext_name + "/bkgfTest-Data/*.pdf" +  " " + inputpath_name + ws_data_path +"/" 
    print(command)
    cppng_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)

def run_yields(ws_sig_path,ws_bkg_path, inputpath_name,log_name, process):
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard")
    # run Runyields
    if "bbgg" in process:
        command = "python RunYields_17resolved_bbgg.py --inputWSDirMap 2017=" +inputpath_name+ process + "_" + ws_sig_path+" --sigModelWSDir " + inputpath_name+ process + "_" + ws_sig_path+" --bkgModelWSDir " + inputpath_name+  ws_bkg_path + " --cats auto --doSystematics --procs "+process.split("ws_")[-1]+" --batch local --ext "+ ws_sig_path+ ">" + log_name+ " 2>&1"
    else:
        command = "python RunYields_17resolved.py --inputWSDirMap 2017=" +inputpath_name+ process + "_" + ws_sig_path+" --sigModelWSDir " + inputpath_name+ process + "_" + ws_sig_path+" --bkgModelWSDir " + inputpath_name+  ws_bkg_path + " --cats auto --doSystematics --procs "+process.split("ws_")[-1]+" --batch local --ext "+ ws_sig_path+ ">" + log_name+ " 2>&1"
        print(command)
    run_yields_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)

def run_makeDatacard(ws_sig_path,output_card_name,log_name,channel,process):
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard")
    # run RunmakeDatacard
    if "wwgg" in process:
        command = "python makeDatacard_17resolved.py --years 2017 --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name+  ">" + log_name+ " 2>&1"
    elif "bbgg" in process:
        command = "python makeDatacard_17resolved_bbgg.py --years 2017 --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name+  ">" + log_name+ " 2>&1"
    elif "zzgg" in process:
        command = "python makeDatacard_17resolved_zzgg.py --years 2017 --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name+  ">" + log_name+ " 2>&1"
    else:
        command = "python makeDatacard_17resolved_singlehiggs.py --years 2017 --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name+  ">" + log_name+ " 2>&1"
    print(command)
    run_makeDatacard_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # write the branching ratio info in it 
    # if("FHSL" in channel):
    add_br_note = open(output_card_name+".txt", 'a')
    # add_br_note.write("CMS_wwgg_br_HH_WWgg      rateParam  *  " +process+ "*  2 \n nuisance  edit  freeze  CMS_wwgg_br_HH_WWgg")

# mass_list=['MX300_MH125','MX400_MH125','MX600_MH125','MX700_MH125','MX800_MH125','MX900_MH125','MX1000_MH125']
# mass_list=["MX1000_MH125","MX250_MH125","MX260_MH125","MX270_MH125","MX280_MH125","MX300_MH125","MX320_MH125","MX350_MH125","MX400_MH125","MX450_MH125","MX500_MH125","MX550_MH125","MX600_MH125","MX650_MH125","MX700_MH125","MX750_MH125","MX800_MH125","MX850_MH125","MX900_MH125"]
mass_list=["MX1000_MH125"]
cat_list = ['cat34FHlowpurity']
final_state_list = ["wwgg"]
for mass in mass_list:
    for cat in cat_list:
        # ------------------------------------- log path -------------------------------------
        log_path = "/eos/user/s/shsong/hhwwgg_workspace/Final_limit/cat34log/"
        # ------------------------------------- background fit -------------------------------------
        input_path_name = "/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34test/2017/" + mass + "/"
        ws_data_path = "ws_2017_"+ cat
        output_data_root_name = "Data_2017_"+ cat + "_"+ mass + ".root"
        log_name_data = log_path + "bkg_2017_"+cat+".log"
        run_Tree2WS_data(inputpath_name = input_path_name , ws_data_path=ws_data_path, output_data_root_name=output_data_root_name)
        ext_name = "ws_2017_" + cat
        run_backgroundfit(ws_data_path=ws_data_path, log_name = log_name_data , inputpath_name = input_path_name , ext_name=ext_name, cp_name="CMS-HGG_multipdf_"+cat+"_2017.root")
        for final_state in final_state_list:   

            # # # ------------------------------------- signal fit -------------------------------------

            input_file_name_signal = mass +"_2017_"+final_state+"_"+cat+".root"
            log_file_name_signal = mass +"_hhwwgg_MC_2017_"+cat+final_state+".log"
            ws_path_signal = mass +"_2017_"+cat
            output_root_name_signal = "output_Signal"+mass + cat + "_M125_2017_13TeV_amcatnloFXFX_pythia8_gghh" + final_state + ".root"
            run_Tree2WS_sig(inputpath_name = input_path_name ,inputfile_name=input_file_name_signal,log_file_name= log_path + "Tree2WS_" + log_file_name_signal, ws_path = ws_path_signal, output_sig_root_name=output_root_name_signal, process='ws_gghh'+ final_state)
            run_ftest(ws_path = ws_path_signal, log_name = log_path + "signal_ftest_" + log_file_name_signal, inputpath_name= input_path_name, process='gghh'+ final_state)
            run_signalfit(ws_path = ws_path_signal, log_name = log_path +  "signal_signalfit_" + log_file_name_signal, inputpath_name=input_path_name, process='ws_gghh'+ final_state)
            run_signal_plot(cats=cat, exts="dcb_2017_" + mass +"_2017_" + cat, outputExt="packaged_" + mass +"_2017_" + cat, log_packaged_name = log_path + "packaged_" + mass + cat+".log", ws_path=ws_path_signal, inputpath_name =input_path_name, log_plotter_name = log_path + "plotter_" + mass + cat+".log", cp_name="CMS-HGG_sigfit_packaged_"+cat+"_2017.root", process = 'ws_gghh'+ final_state)
            run_yields(ws_sig_path=ws_path_signal, log_name = log_path + mass +"_2017_" + cat +"_yields.log" , inputpath_name = input_path_name, ws_bkg_path = ws_data_path, process='ws_gghh'+ final_state )
            run_makeDatacard(ws_sig_path=ws_path_signal, log_name = log_path + mass + cat + "_makeDatacard.log" , output_card_name = "Datacard_" + mass +"_2017_" +final_state +"_"+ cat, channel=mass,process='gghh'+ final_state) 
