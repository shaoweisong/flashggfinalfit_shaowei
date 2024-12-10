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
import logging
import sys
import subprocess
import time
logging.basicConfig(filename='/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/logging_output.log', level=logging.INFO, filemode="w")
logging.debug('This message should go to the log file')
logging.info('So should this')
logging.warning('And this, too')
# ----------------------------  trees2WS part ---------------------------- #
def run_Tree2WS_sig(inputpath_name, inputfile_name, log_file_name, ws_path, output_sig_root_name, process):
    logging.info("begin: {}".format(time.time()))
    process_prefix = process.split('ws_')[1]
    print("process_prefix: ", process_prefix)
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Trees2WS")
    # no need to change the config file since all are auto set
    command = " python trees2ws.py --inputConfig config_sys18.py --inputTreeFile " + inputpath_name+inputfile_name + " --inputMass 125  --doSystematics --productionMode " + process_prefix + " --year 2018  > " + log_file_name+ " 2>&1"
    logging.info("the Tree2WS command:")
    logging.info(command)
    # run trees2ws at shell
    run_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("end: {}".format(time.time()))
    # create the dir for this workspace
    command = "mkdir " +inputpath_name+ process+ "_" + ws_path
    mkdir_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("mkdir for ws \n command :{0}".format(command))
    # cp the root file to the ws dir
    command = "cp " + inputpath_name +process+ "/" + inputfile_name.split('.root')[0] + '_'+process_prefix + ".root" + " " + inputpath_name +process+ "_"+ws_path +"/" + output_sig_root_name
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("cp to ws dir \n command: {0}".format(command))
def run_Tree2WS_data(inputpath_name, ws_data_path, output_data_root_name):
    logging.info("begin: {}".format(time.time()))
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Trees2WS")
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
    logging.info("cp to ws dir \n command: {0}".format(command))

# ------------------------------ Signal fit part ----------------------------- #
def run_ftest(ws_path, log_name, inputpath_name, process, isclean = False):
    logging.info("begin: {}".format(time.time()))
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal")
    # modify the config file
    #copy config_toy2018.py
    # remove the old output dir
    if isclean:
        command = "rm -rf outdir_dcb_2018_" + ws_path
        rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
        # remove the old packaged dir
        command = "rm -rf outdir_packaged_" + ws_path
        rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    #copy config_toy2018.py
    command = "cp config_toy2018.py " + "config_" +process+ ws_path + ".py"
    run_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("copy config_toy2018.py \n command :{0}".format(command))
    time.sleep(2)
    # sed config_*.py
    print("ws_path: ", ws_path)

    command1 = 'sed -i "s#ws_path#' +ws_path + '#g" ' +  "config_" +process+ ws_path + ".py" 
    sed1_p = subprocess.call(command1, shell=True)
    logging.info("sed1 config_*.py \n command :{0}".format(command1))

    command2 = 'sed -i "s#input_path#' + inputpath_name + '#g" ' + "config_" +process+ ws_path + ".py"

    sed2_p = subprocess.call(command2, shell=True)
    logging.info("sed2 config_*.py \n command :{0}".format(command2))

    command3 = 'sed -i "s#gghh#' +process + '#g" ' +  "config_" +process+ ws_path + ".py" 
    sed1_p = subprocess.call(command3, shell=True)
    logging.info("sed3 config_*.py \n command :{0}".format(command3))

    # run ftest
    command = "python RunSignalScripts.py --inputConfig " +  "config_" +process+ ws_path + ".py"+ " --mode 'fTest' --modeOpts '--doPlots' " + " > " + log_name + " 2>&1"
    run_ftest_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    command2 = "python RunSignalScripts.py --inputConfig " +  "config_" +process+ ws_path + ".py"+ " --mode 'calcPhotonSyst'" + " > " + log_name + " 2>&1"
    run_ftest_p = subprocess.call(command2, shell=True, stdout=subprocess.PIPE)
    
    logging.info("run ftest \n command :{0}".format(command))
    logging.info("end: {}".format(time.time()))

def run_signalfit(ws_path, log_name, inputpath_name, process):
    logging.info("begin: {}".format(time.time()))
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal")
    # run signalfit
    # process for the config file name should be the same as the process name
    process_prefix = process.split('ws_')[1]
    print("signal fit process_prefix: ", process_prefix)
    print("config file name:", "config_" +process_prefix+ ws_path + ".py")
    command = "python RunSignalScripts.py --inputConfig " +  "config_" +process_prefix+ ws_path + ".py"+ " --mode 'signalFit'  " + " > " + log_name + " 2>&1"
    logging.info("run signalfit \n command :{0}".format(command))
    run_signalfit_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # cp the signalfit output root file to ws
    command = "cp outdir_dcb_2018_" + ws_path + "/signalFit/output/*.root" + " " + inputpath_name +  process + "_"+ws_path
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("run cp the signalfit output root file to ws \n command :{0}".format(command))

    logging.info("end: {}".format(time.time()))

def run_signal_plot(outputExt, cats, exts,log_packaged_name,ws_path,inputpath_name,log_plotter_name, cp_name, process):
    logging.info("begin: {}".format(time.time()))
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal")
    # run packaged
    command = "python RunPackager.py --cats " + cats + " --exts " + exts + "  --batch local  --massPoints 125 --year 2018 --outputExt " + outputExt + " > " + log_packaged_name + " 2>&1"
    print(command)
    run_packaged_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("run packaged \n command :{0}".format(command))
    # run plotter
    command = "python RunPlotter2018.py --cats " + cats + " --procs all --years 2018 --ext " + outputExt + " > " + log_plotter_name + " 2>&1"
    run_plotter_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    print(command)
    logging.info("run plotter \n command :{0}".format(command))
    # cp the signalfit output root file to ws
    command = "cp outdir_packaged_" + ws_path + "/*.root" + " " + inputpath_name +  process + "_"+ ws_path + "/" + cp_name
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("run cp the signalfit output root file to ws \n command :{0}".format(command))
    command = "cp outdir_packaged_" + ws_path + "/Plots/*.pdf" + " " + inputpath_name +  process + "_"+ ws_path + "/" 
    cppng_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("run cp the signalfit output root file to ws \n command :{0}".format(command))
    logging.info("end: {}".format(time.time()))
# ---------------------------- Background fit part --------------------------- #
def run_backgroundfit(ws_data_path, log_name, inputpath_name, ext_name, cp_name):
    logging.info("begin: {}".format(time.time()))
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Background")
    #remove the old output dir
    command = "rm -rf outdir_" + ext_name
    rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # modify the config file
    #copy config_toy2018.py
    command = "cp config_toy2018.py " + "config_" + ws_data_path + ".py"
    run_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("copy config_toy2018.py \n command :{0}".format(command))
    time.sleep(2)
    # sed config_*.py
    command1 = 'sed -i "s#ws_path#' + ws_data_path + '#g" ' +  "config_" + ws_data_path + ".py" 
    sed1_p = subprocess.call(command1, shell=True)
    logging.info("sed1 config_*.py \n command :{0}".format(command1))

    command2 = 'sed -i "s#input_path#' + inputpath_name + '#g" ' + "config_" + ws_data_path + ".py"

    sed2_p = subprocess.call(command2, shell=True)
    logging.info("sed2 config_*.py \n command :{0}".format(command2))

    command3 = 'sed -i "s#ext_name#' + ext_name + '#g" ' + "config_" + ws_data_path + ".py"

    sed2_p = subprocess.call(command3, shell=True)
    logging.info("sed2 config_*.py \n command :{0}".format(command3))
    # run ftest
    command =  "python RunBackgroundScripts.py --inputConfig " +   "config_" + ws_data_path + ".py" + " --mode fTestParallel" + " > " + log_name + " 2>&1"
    run_ftest_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("run ftest \n command :{0}".format(command))
    # run cp data 
    command = "cp outdir_" + ext_name + "/*.root" +  " " + inputpath_name + ws_data_path +"/" + cp_name
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("end: {}".format(time.time()))
    
    command = "cp outdir_" + ext_name + "/bkgfTest-Data/*.pdf" +  " " + inputpath_name + ws_data_path +"/" 
    cppng_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("end: {}".format(time.time()))
 
def run_background_only_cp(ws_data_path, inputpath_name, exist_background_path_name):
    logging.info("begin: {}".format(time.time()))
    # mkdir ws_data_path
    command = "mkdir " + inputpath_name + ws_data_path
    mkdir_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Background")
    # run cp data 
    command = "cp " + exist_background_path_name + ws_data_path+ "/*.root" +  " " + inputpath_name + ws_data_path +"/"
    # print(command)
    cp_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("end: {}".format(time.time()))
# ---------------------------- data card part --------------------------- #
def run_yields(ws_sig_path,ws_bkg_path, inputpath_name,log_name, process):
    logging.info("begin: {}".format(time.time()))
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard")
    # run Runyields
    if "bbgg" in process:
        print("bbgg in process")
        command = "python RunYields_18resolved_bbgg.py --inputWSDirMap 2018=" +inputpath_name+ process + "_" + ws_sig_path+" --sigModelWSDir " + inputpath_name+ process + "_" + ws_sig_path+" --bkgModelWSDir " + inputpath_name+  ws_bkg_path + " --cats auto --doSystematics --procs "+process.split("ws_")[-1]+" --batch local --ext "+ ws_sig_path+ ">" + log_name+ " 2>&1"
    else:
        command = "python RunYields_18resolved.py --inputWSDirMap 2018=" +inputpath_name+ process + "_" + ws_sig_path+" --sigModelWSDir " + inputpath_name+ process + "_" + ws_sig_path+" --bkgModelWSDir " + inputpath_name+  ws_bkg_path + " --cats auto --doSystematics --procs "+process.split("ws_")[-1]+" --batch local --ext "+ ws_sig_path+ ">" + log_name+ " 2>&1"
    print(command)
    run_yields_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("run yields \n command :{0}".format(command))
    logging.info("end: {}".format(time.time()))

def run_makeDatacard(ws_sig_path,output_card_name,log_name,channel,process):
    logging.info("begin: {}".format(time.time()))
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard")
    # run RunmakeDatacard
    if "wwgg" in process:
        command = "python makeDatacard_18resolved.py --years 2018 --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name+  ">" + log_name+ " 2>&1"
    elif "bbgg" in process:
        command = "python makeDatacard_18resolved_bbgg.py --years 2018 --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name+  ">" + log_name+ " 2>&1"
    elif "zzgg" in process:
        command = "python makeDatacard_18resolved_zzgg.py --years 2018 --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name+  ">" + log_name+ " 2>&1"
    else:
        command = "python makeDatacard_18resolved_singlehiggs.py --years 2018 --doSystematics --prune --ext " + ws_sig_path + " --output "+ output_card_name+  ">" + log_name+ " 2>&1"
    run_makeDatacard_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("run makeDatacard \n command :{0}".format(command))
    # write the branching ratio info in it 
    # if("FHSL" in channel):
    add_br_note = open(output_card_name+".txt", 'a')
    # add_br_note.write("CMS_wwgg_br_HH_WWgg      rateParam  *  " +process+ "*  0.000970198 \n CMS_wwgg_br_WW_4Q_2Qlnu     rateParam  *  " +process+ "*  0.8899 \n nuisance  edit  freeze  CMS_wwgg_br_HH_WWgg \n nuisance  edit  freeze  CMS_wwgg_br_WW_4Q_2Qlnu")
    add_br_note.write("CMS_wwgg_br_HH_WWgg      rateParam  *  " +process+ "*  2 \n nuisance  edit  freeze  CMS_wwgg_br_HH_WWgg")
    logging.info("end: {}".format(time.time()))
def clean_directory():
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal")
    command = "rm -rf outdir_*/"
    rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Datacard")
    command = "rm -rf yields_*/"
    rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    os.chdir("..")
    print("cleaned")
mass_list=['MX500_MH125']
# mass_list=["MX1000_MH125","MX250_MH125","MX260_MH125","MX270_MH125","MX280_MH125","MX300_MH125","MX320_MH125","MX350_MH125","MX400_MH125","MX450_MH125","MX500_MH125","MX550_MH125","MX600_MH125","MX650_MH125","MX700_MH125","MX750_MH125","MX800_MH125","MX850_MH125","MX900_MH125"]
cat_list = ['cat34FHlowpurity','cat34FHhighpurity','cat34SLlowpurity','cat34SLhighpurity']
# final_state_list = ["wwgg","bbgg","zzgg","VBF","GGH","VH","TTH"]
final_state_list = ["wwgg"]
for mass in mass_list:
    for cat in cat_list:
        # ------------------------------------- log path -------------------------------------
        log_path = "/eos/user/s/shsong/hhwwgg_workspace/Final_limit/cat34log/"
        # ------------------------------------- background fit -------------------------------------
        input_path_name = "/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/2018/" + mass + "/"
        ws_data_path = "ws_2018_"+ cat
        output_data_root_name = "Data_2018_"+ cat + "_"+ mass + ".root"
        log_name_data = log_path + "bkg_2018_"+cat+".log"
        # run_Tree2WS_data(inputpath_name = input_path_name , ws_data_path=ws_data_path, output_data_root_name=output_data_root_name)
        ext_name = "ws_2018_" + cat
        # run_backgroundfit(ws_data_path=ws_data_path, log_name = log_name_data , inputpath_name = input_path_name , ext_name=ext_name, cp_name="CMS-HGG_multipdf_"+cat+"_2018.root")
        for final_state in final_state_list:   

            # # # ------------------------------------- signal fit -------------------------------------

            input_file_name_signal = mass +"_2018_"+final_state+"_"+cat+".root"
            log_file_name_signal = mass +"_hhwwgg_MC_2018_"+cat+final_state+".log"
            ws_path_signal = mass +"_2018_"+cat
            output_root_name_signal = "output_Signal"+mass + cat + "_M125_2018_13TeV_amcatnloFXFX_pythia8_gghh" + final_state + ".root"
            run_Tree2WS_sig(inputpath_name = input_path_name ,inputfile_name=input_file_name_signal,log_file_name= log_path + "Tree2WS_" + log_file_name_signal, ws_path = ws_path_signal, output_sig_root_name=output_root_name_signal, process='ws_gghh'+ final_state)
            run_ftest(ws_path = ws_path_signal, log_name = log_path + "signal_ftest_" + log_file_name_signal, inputpath_name= input_path_name, process='gghh'+ final_state, isclean = False)
            run_signalfit(ws_path = ws_path_signal, log_name = log_path +  "signal_signalfit_" + log_file_name_signal, inputpath_name=input_path_name, process='ws_gghh'+ final_state)
            run_signal_plot(cats=cat, exts="dcb_2018_" + mass +"_2018_" + cat, outputExt="packaged_" + mass +"_2018_" + cat, log_packaged_name = log_path + "packaged_" + mass + cat+".log", ws_path=ws_path_signal, inputpath_name =input_path_name, log_plotter_name = log_path + "plotter_" + mass + cat+".log", cp_name="CMS-HGG_sigfit_packaged_"+cat+"_2018.root", process = 'ws_gghh'+ final_state)
            # run_yields(ws_sig_path=ws_path_signal, log_name = log_path + mass +"_2018_" + cat +"_yields.log" , inputpath_name = input_path_name, ws_bkg_path = ws_data_path, process='ws_gghh'+ final_state )
            # run_makeDatacard(ws_sig_path=ws_path_signal, log_name = log_path + mass + cat + "_makeDatacard.log" , output_card_name = "Datacard_" + mass +"_2018_" +final_state +"_"+ cat, channel=mass,process='gghh'+ final_state) 
            # clean_directory()