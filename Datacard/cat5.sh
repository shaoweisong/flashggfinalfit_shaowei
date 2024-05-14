combineCards.py  cat5_M250=Datacard_M250_cat5highpt.txt Datacard_M250_cat5lowpt.txt > Datacard_M250_cat5.txt
 combineCards.py  cat5_M300=Datacard_M300_cat5highpt.txt Datacard_M300_cat5lowpt.txt > Datacard_M300_cat5.txt
 combineCards.py  cat5_M400=Datacard_M400_cat5highpt.txt Datacard_M400_cat5lowpt.txt > Datacard_M400_cat5.txt
 combineCards.py  cat5_M500=Datacard_M500_cat5highpt.txt Datacard_M500_cat5lowpt.txt > Datacard_M500_cat5.txt
 combineCards.py  cat5_M600=Datacard_M600_cat5highpt.txt Datacard_M600_cat5lowpt.txt > Datacard_M600_cat5.txt
 combineCards.py  cat5_M700=Datacard_M700_cat5highpt.txt Datacard_M700_cat5lowpt.txt > Datacard_M700_cat5.txt
 combineCards.py  cat5_M800=Datacard_M800_cat5highpt.txt Datacard_M800_cat5lowpt.txt > Datacard_M800_cat5.txt
 combineCards.py  cat5_M900=Datacard_M900_cat5highpt.txt Datacard_M900_cat5lowpt.txt > Datacard_M900_cat5.txt
 combineCards.py  cat5_M1000=Datacard_M1000_cat5highpt.txt Datacard_M1000_cat5lowpt.txt > Datacard_M1000_cat5.txt
 combineCards.py  cat5_M2000=Datacard_M2000_cat5highpt.txt Datacard_M2000_cat5lowpt.txt > Datacard_M2000_cat5.txt
 combineCards.py  cat5_M3000=Datacard_M3000_cat5highpt.txt Datacard_M3000_cat5lowpt.txt > Datacard_M3000_cat5.txt

  combineCards.py  M3000_cat3=Datacard_M3000_cat3lowpt.txt Datacard_M3000_cat3highpt.txt  > Datacard_M3000_cat3.txt
  combineCards.py  M3000_cat5=Datacard_M3000_cat5lowpt.txt Datacard_M3000_cat5highpt.txt  > Datacard_M3000_cat5.txt
  combineCards.py  M3000=Datacard_M3000_cat1.txt Datacard_M3000_cat3.txt Datacard_M3000_cat5.txt > Datacard_M3000.txt

  combineCards.py  M2000_cat3=Datacard_M2000_cat3lowpt.txt Datacard_M2000_cat3highpt.txt  > Datacard_M2000_cat3.txt
  combineCards.py  M2000_cat5=Datacard_M2000_cat5lowpt.txt Datacard_M2000_cat5highpt.txt  > Datacard_M2000_cat5.txt
  combineCards.py  M2000=Datacard_M2000_cat1.txt Datacard_M2000_cat3.txt Datacard_M2000_cat5.txt > Datacard_M2000.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M2000 -d Datacard_M2000_cat3.txt --run expected    --rMax 50000
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M2000 -d Datacard_M2000_cat5.txt --run expected    --rMax 50000 --freeze
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M3000_cat3high -d Datacard_M3000_cat3highpt.txtt --run expected    --rMax 50000 --freeze

  combineCards.py  cat8_M250=Datacard_M250_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M250_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M250_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M250_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M250_cat8.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M250 -d Datacard_M250_cat8.txt --run expected    --rMax 50000 

  combineCards.py  cat8_M250=Datacard_M250_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M250_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M250_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M250_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M250_cat8.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M250 -d Datacard_M250_cat8.txt --run expected    --rMax 50000 

  combineCards.py  cat8_M300=Datacard_M300_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M300_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M300_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M300_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M300_cat8.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M300 -d Datacard_M300_cat8.txt --run expected    --rMax 50000 

  combineCards.py  cat8_M400=Datacard_M400_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M400_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M400_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M400_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M400_cat8.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M400 -d Datacard_M400_cat8.txt --run expected    --rMax 50000 

  combineCards.py  cat8_M500=Datacard_M500_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M500_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M500_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M500_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M500_cat8.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M500 -d Datacard_M500_cat8.txt --run expected    --rMax 50000 

  combineCards.py  cat8_M600=Datacard_M600_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M600_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M600_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M600_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M600_cat8.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M600 -d Datacard_M600_cat8.txt --run expected    --rMax 50000 

  combineCards.py  cat8_M700=Datacard_M700_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M700_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M700_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M700_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M700_cat8.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M700 -d Datacard_M700_cat8.txt --run expected    --rMax 50000 

  combineCards.py  cat8_M800=Datacard_M800_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M800_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M800_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M800_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M800_cat8.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M800 -d Datacard_M800_cat8.txt --run expected    --rMax 50000 

  combineCards.py  cat8_M900=Datacard_M900_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M900_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M900_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M900_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M900_cat8.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M900 -d Datacard_M900_cat8.txt --run expected    --rMax 50000 

  combineCards.py  cat8_M1000=Datacard_M1000_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M1000_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M1000_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M1000_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M1000_cat8.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M1000 -d Datacard_M1000_cat8.txt --run expected    --rMax 50000 


  combineCards.py  cat2_M300=Datacard_M300_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M300_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M300_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M300_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M300_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M300_cat2.txt
  mv  Datacard_M300_cat2.txt datacard_M300
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M300_cat2 -d Datacard_M300_cat2.txt --run expected    --rMax 50000 

  combineCards.py  cat2_M250=Datacard_M250_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M250_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M250_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M250_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M250_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M250_cat2.txt
  mv  Datacard_M250_cat2.txt datacard_M250
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M250_cat2 -d Datacard_M250_cat2.txt --run expected    --rMax 50000 

  combineCards.py  cat2_M500=Datacard_M500_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M500_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M500_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M500_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M500_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M500_cat2.txt
  mv  Datacard_M500_cat2.txt datacard_M500
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M500_cat2 -d Datacard_M500_cat2.txt --run expected    --rMax 50000 
 
  combineCards.py  cat2_M600=Datacard_M600_SL_2016pre_combineFHSL_cat2lowpt.txt Datacard_M600_SL_2016pre_combineFHSL_cat2highpt.txt Datacard_M600_SL_2016pre_combineFHSL_cat2lowpurity.txt Datacard_M600_SL_2016pre_combineFHSL_cat2mediumpurity.txt Datacard_M600_SL_2016pre_combineFHSL_cat2highpurity.txt > Datacard_M600_cat2.txt
  mv  Datacard_M600_cat2.txt datacard_M600
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M600_cat2 -d Datacard_M600_cat2.txt --run expected    --rMax 50000 
 combineCards.py  cat3_M500=Datacard_M500_cat3highpt.txt Datacard_M500_cat3lowpt.txt > Datacard_M500_cat3.txt
 combineCards.py  cat3_M600=Datacard_M600_cat3highpt.txt Datacard_M600_cat3lowpt.txt > Datacard_M600_cat3.txt
 combineCards.py  cat5_M600=Datacard_M600_cat5highpt.txt Datacard_M600_cat5lowpt.txt > Datacard_M600_cat5.txt
combineCards.py  cat3_M400=Datacard_M400_cat3lowpt.txt Datacard_M400_cat3highpt.txt > Datacard_M400_cat3.txt
  combine -M AsymptoticLimits -m 125 -n combineFHSL_M400_cat3 -d Datacard_M400_cat3.txt --run expected  
