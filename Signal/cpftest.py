import glob 
import os
ftest_plots=glob.glob('./outdir_2017_*cat12*wwgg/fTest/Plots/fTest_*_gghhwwgg_RV*.png')
for ftest in ftest_plots:
    input_file=ftest
    output_file=(input_file.split("outdir_2017_")[1]).split("2017_")[0]+input_file.split("/Plots/")[1]
    # output_path="/eos/user/s/shsong/www/fTest/"
    # output_path="/eos/user/s/shsong/www/fTest_fitrange115140_defaultsimufit/"
    # output_path="/eos/user/s/shsong/www/fTest_sumw2/"
    output_path="/eos/user/s/shsong/www/fTest_sumw2_160bins/"
    cpcommand="cp "+input_file+" "+output_path+output_file
    os.system(cpcommand)

    