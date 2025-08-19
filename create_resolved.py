# -*- coding: utf-8 -*-
'''
Hi my friend, believe it or not, I just want to create a king script to create limit with flashggfinal fit framework from ntuples(root) with only one script
let see if the magic can work
'''
import glob
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
def run_backgroundfit(ws_data_path, log_name, inputpath_name, ext_name, cp_name,year):
    logging.info("begin: {}".format(time.time()))
    os.chdir("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Background")
    #remove the old output dir
    command = "rm -rf outdir_" + ext_name
    rm_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    # modify the config file
    #copy config_toy"+year+".py
    command = "cp config_toy"+year+".py " + "config_" + ws_data_path + ".py"
    run_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("copy config_toy"+year+".py \n command :{0}".format(command))
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
    pdfname = glob.glob("outdir_" + ext_name + "/bkgfTest-Data/multi*.pdf")[0]
    # command = "cp outdir_" + ext_name + "/bkgfTest-Data/multi*.pdf" +  " /eos/user/s/shsong/AN-23-071/Images/unblind/Background_Models/MX1000_" +pdfname.split("_")[-1].split(".pdf")[0] + year + ".pdf"
    command = "cp outdir_" + ext_name + "/bkgfTest-Data/multi*.pdf" +  " /eos/user/s/shsong/AN-23-071/Images/Background_Models/MX1000_" +pdfname.split("_")[-1].split(".pdf")[0] + year + ".pdf"
    cppng_p = subprocess.call(command, shell=True, stdout=subprocess.PIPE)
    logging.info("end: {}".format(time.time()))
# year_list = ['2016pre','2016post','2017','2018']
year_list = ['2017']
mass_list=["MX1000_MH125"]
# cat_list = ['cat34FHlowpurity','cat34FHhighpurity','cat34SLlowpurity','cat34SLhighpurity']
cat_list = ['cat34FHlowpurity','cat34FHhighpurity']

final_state_list = ["wwgg"]
for year in year_list:
    for mass in mass_list:
        for cat in cat_list:
            # ------------------------------------- log path -------------------------------------
            log_path = "/eos/user/s/shsong/hhwwgg_workspace/Final_limit/cat34log/"
            # ------------------------------------- background fit -------------------------------------
            input_path_name = "/eos/cms/store/group/phys_b2g/shsong/flashggws/cat34/"+year+"/" + mass + "/"
            ws_data_path = "ws_"+year+"_"+ cat
            output_data_root_name = "Data_"+year+"_"+ cat + "_"+ mass + ".root"
            log_name_data = log_path + "bkg_"+year+"_"+cat+".log"
            # run_Tree2WS_data(inputpath_name = input_path_name , ws_data_path=ws_data_path, output_data_root_name=output_data_root_name)
            ext_name = "ws_"+year+"_" + cat + "_"+ mass
            run_backgroundfit(ws_data_path=ws_data_path, log_name = log_name_data , inputpath_name = input_path_name , ext_name=ext_name, cp_name="CMS-HGG_multipdf_"+cat+"_"+year+".root",year=year)
