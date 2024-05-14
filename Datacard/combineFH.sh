
  combineCards.py  cat8_M250=Datacard_M250_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M250_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M250_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M250_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M250_cat8.txt

  combineCards.py  cat8_M300=Datacard_M300_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M300_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M300_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M300_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M300_cat8.txt

  combineCards.py  cat8_M400=Datacard_M400_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M400_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M400_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M400_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M400_cat8.txt

  combineCards.py  cat8_M500=Datacard_M500_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M500_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M500_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M500_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M500_cat8.txt

  combineCards.py  cat8_M600=Datacard_M600_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M600_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M600_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M600_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M600_cat8.txt

  combineCards.py  cat8_M700=Datacard_M700_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M700_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M700_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M700_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M700_cat8.txt

  combineCards.py  cat8_M800=Datacard_M800_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M800_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M800_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M800_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M800_cat8.txt

  combineCards.py  cat8_M900=Datacard_M900_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M900_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M900_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M900_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M900_cat8.txt

  combineCards.py  cat8_M1000=Datacard_M1000_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M1000_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M1000_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M1000_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M1000_cat8.txt

combine -M AsymptoticLimits -m 125 -n combineFHSL_M250 -d Datacard_M250_cat8.txt --run expected    --rMax 50000 
combine -M AsymptoticLimits -m 125 -n combineFHSL_M300 -d Datacard_M300_cat8.txt --run expected    --rMax 50000 
combine -M AsymptoticLimits -m 125 -n combineFHSL_M400 -d Datacard_M400_cat8.txt --run expected    --rMax 50000 
combine -M AsymptoticLimits -m 125 -n combineFHSL_M500 -d Datacard_M500_cat8.txt --run expected     --rMax 8000 
combine -M AsymptoticLimits -m 125 -n combineFHSL_M600 -d Datacard_M600_cat8.txt --run expected    --rMax 8000 
combine -M AsymptoticLimits -m 125 -n combineFHSL_M700 -d Datacard_M700_cat8.txt --run expected   --rMax 8000  
combine -M AsymptoticLimits -m 125 -n combineFHSL_M800 -d Datacard_M800_cat8.txt --run expected    
combine -M AsymptoticLimits -m 125 -n combineFHSL_M900 -d Datacard_M900_cat8.txt --run expected    
combine -M AsymptoticLimits -m 125 -n combineFHSL_M1000 -d Datacard_M1000_cat8.txt --run expected    

  combineCards.py  cat8_M500=Datacard_M500_FH_2016pre_combineFHSL_cat8lowestpurity.txt Datacard_M500_FH_2016pre_combineFHSL_cat8lowpurity.txt Datacard_M500_FH_2016pre_combineFHSL_cat8mediumpurity.txt Datacard_M500_FH_2016pre_combineFHSL_cat8highpurity.txt  > Datacard_M500_cat8.txt