#!/bin/bash
year=2016post
# year=2016post
# year=2017
# year=2018
###################################### run cat34 per year limit ###################################### 
MX_VALUES=(400 500 600 700 800 900 1000)
MY_VALUES=(250 300 400 500 600 700 800)
# for MX in "${MX_VALUES[@]}"; do
#   for MY in "${MY_VALUES[@]}"; do
#       if [ $MX -gt $((MY+100)) ]; then
#           FILENAME="MX${MX}_MY${MY}_${year}_cat34.txt"    
#           echo "Processing file: $FILENAME"
#           combine -M AsymptoticLimits -m 125 -n MX${MX}_MY${MY}_${year}_cat34 -d MX${MX}_MY${MY}_${year}_cat34.txt --freezeParameters MH --setParameters MH=125.38
#       fi
#     done
# done
###################################### run2 cat34 limit ###################################### 
MX_VALUES=(400 500 600 700 800 900 1000)
MY_VALUES=(250 300 400 500 600 700 800)
for MX in "${MX_VALUES[@]}"; do
  for MY in "${MY_VALUES[@]}"; do
      if [ $MX -gt $((MY+100)) ]; then
          FILENAME="MX${MX}_MY${MY}_run2_cat34.txt"    
          echo "Processing file: $FILENAME"
          combineCards.py  cat34_2016pre=MX${MX}_MY${MY}_2016pre_cat34.txt cat34_2016post=MX${MX}_MY${MY}_2016post_cat34.txt cat34_2017=MX${MX}_MY${MY}_2017_cat34.txt cat34_2018=MX${MX}_MY${MY}_2018_cat34.txt > MX${MX}_MY${MY}_run2_cat34.txt
          # combine -M AsymptoticLimits -m 125 -n MX${MX}_MY${MY}_run2_cat34 -d MX${MX}_MY${MY}_run2_cat34.txt --freezeParameters MH --setParameters MH=125.38
      fi
    done
done
