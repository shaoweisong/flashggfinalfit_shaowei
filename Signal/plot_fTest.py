import glob
import json
import matplotlib.pyplot as plt
lowmasslist=["MX250","MX260","MX270","MX280","MX300","MX320","MX350","MX400","MX450","MX500","MX550","MX600","MX650","MX700","MX750","MX800","MX850","MX1000"]
highmasslist=["MX500","MX550","MX600","MX650","MX700","MX750","MX800","MX850","MX1000","MX1100","MX1200","MX1300","MX1400","MX1500","MX1600","MX1800","MX2000","MX2200","MX2400","MX2600","MX2800","MX3000"]
cat34FH_cat0_nGauss=[]
cat34FH_cat0_mass=[]
cat34FH_cat1_nGauss=[]
cat34FH_cat1_mass=[]
cat34SL_cat0_nGauss=[]
cat34SL_cat0_mass=[]
cat34SL_cat1_nGauss=[]
cat34SL_cat1_mass=[]
cat12_cat0_nGauss=[]
cat12_cat0_mass=[]
cat12_cat1_nGauss=[]
cat12_cat1_mass=[]
for mass in lowmasslist:
    cat34FHlowpurity_files=glob.glob("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/outdir_2017_"+mass+"*cat34FHlowpurity/fTest/json/nGauss_*.json")
    cat34FHhighpurity_files=glob.glob("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/outdir_2017_"+mass+"*cat34FHhighpurity/fTest/json/nGauss_*.json")
    cat34SLlowpurity_files=glob.glob("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/outdir_2017_"+mass+"*cat34SLlowpurity/fTest/json/nGauss_*.json")
    cat34SLhighpurity_files=glob.glob("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/outdir_2017_"+mass+"*cat34SLhighpurity/fTest/json/nGauss_*.json")
    if len(cat34FHhighpurity_files)!=0:
        cat34FH_cat0_nGauss.append(json.load(open(cat34FHhighpurity_files[0]))["gghhwwgg__cat34FHhighpurity"]["nRV"])
        cat34FH_cat0_mass.append(int(mass.split("MX")[1]))
    if len(cat34FHlowpurity_files)!=0:
        cat34FH_cat1_nGauss.append(json.load(open(cat34FHlowpurity_files[0]))["gghhwwgg__cat34FHlowpurity"]["nRV"])
        cat34FH_cat1_mass.append(int(mass.split("MX")[1]))
    if len(cat34SLhighpurity_files)!=0:    
        cat34SL_cat0_nGauss.append(json.load(open(cat34SLhighpurity_files[0]))["gghhwwgg__cat34SLhighpurity"]["nRV"])
        cat34SL_cat0_mass.append(int(mass.split("MX")[1]))
    if len(cat34SLlowpurity_files)!=0:
        cat34SL_cat1_nGauss.append(json.load(open(cat34SLlowpurity_files[0]))["gghhwwgg__cat34SLlowpurity"]["nRV"])
        cat34SL_cat1_mass.append(int(mass.split("MX")[1]))
for mass in highmasslist:
    cat12highpurity_files=glob.glob("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/outdir_2017_"+mass+"*cat12highpurity/fTest/json/nGauss_*.json")
    cat12lowpurity_files=glob.glob("/afs/cern.ch/user/s/shsong/CMSSW_10_6_20/src/flashggFinalFit/Signal/outdir_2017_"+mass+"*cat12lowpurity/fTest/json/nGauss_*.json")
    if len(cat12highpurity_files)!=0:
        cat12_cat0_nGauss.append(json.load(open(cat12highpurity_files[0]))["gghhwwgg__cat12highpurity"]["nRV"])
        cat12_cat0_mass.append(int(mass.split("MX")[1]))
    if len(cat12lowpurity_files)!=0:
        cat12_cat1_nGauss.append(json.load(open(cat12lowpurity_files[0]))["gghhwwgg__cat12lowpurity"]["nRV"])
        cat12_cat1_mass.append(int(mass.split("MX")[1]))
plt.figure(figsize=(10,10))
plt.plot(cat34FH_cat0_mass,cat34FH_cat0_nGauss,"ro",label="cat34FH high purity")
plt.title("FH resolved cat0")
plt.legend()
plt.savefig("cat34FH_highpurity.png")
plt.figure(figsize=(10,10))
plt.plot(cat34FH_cat1_mass,cat34FH_cat1_nGauss,"ro",label="cat34FH low purity")
plt.title("FH resolved cat1")
plt.legend()
plt.savefig("cat34FH_lowpurity.png")
plt.figure(figsize=(10,10))
plt.plot(cat34SL_cat0_mass,cat34SL_cat0_nGauss,"ro",label="cat34SL high purity")
plt.title("SL resolved cat0")
plt.legend()
plt.savefig("cat34SL_highpurity.png")
plt.figure(figsize=(10,10))
plt.plot(cat34SL_cat1_mass,cat34SL_cat1_nGauss,"ro",label="cat34SL low purity")
plt.title("SL resolved cat1")
plt.legend()
plt.savefig("cat34SL_lowpurity.png")
plt.figure(figsize=(10,10))
plt.plot(cat12_cat0_mass,cat12_cat0_nGauss,"ro",label="cat12 high purity")
plt.title("boosted cat0")  
plt.legend()
plt.savefig("cat12_highpurity.png")
plt.figure(figsize=(10,10))
plt.plot(cat12_cat1_mass,cat12_cat1_nGauss,"ro",label="cat12 low purity")
plt.title("boosted cat1")
plt.savefig("cat12_lowpurity.png")
