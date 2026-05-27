
MX_VALUES=(400 500 600 700 800 900 1000)
MY_VALUES=(250 300 400 500 600 700 800)
# step one, prepare the workspace and run the initial fit and submit fits for all the nuisances
# for MX in "${MX_VALUES[@]}"; do
#   for MY in "${MY_VALUES[@]}"; do
#       if [ $MX -gt $((MY+100)) ]; then
#           FILENAME="MX${MX}_MY${MY}_run2_cat34.txt"    
#           echo "Processing file: $FILENAME"
#           mkdir YH_cat34_impact_unblind_statonly/MX${MX}_MY${MY}/
#           cp $FILENAME YH_cat34_impact_unblind_statonly/MX${MX}_MY${MY}/
#           cd YH_cat34_impact_unblind_statonly/MX${MX}_MY${MY}/
#           text2workspace.py $FILENAME -m 125
#           combineTool.py -M Impacts -d MX${MX}_MY${MY}_run2_cat34.root -m 125 --doInitialFit --robustFit 1 --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants  --setParameter MH=125.38 --freezeParameters rgx{.*},MH --rMin -20 --rMax 20
#           combineTool.py -M Impacts -d MX${MX}_MY${MY}_run2_cat34.root -m 125 --robustFit 1 --doFits --cminDefaultMinimizerStrategy 0 --X-rtd MINIMIZER_freezeDisassociatedParams --X-rtd MINIMIZER_multiMin_hideConstants --setParameter MH=125.38 --freezeParameters rgx{.*},MH --job-mode condor --sub-opts='+JobFlavour="microcentury"' --task-name mytask --rMin -20 --rMax 20
#           cd -
#       fi
#     done
# done
# step two, after all the jobs are done, collect the impacts and plot
for MX in "${MX_VALUES[@]}"; do
  for MY in "${MY_VALUES[@]}"; do
      if [ $MX -gt $((MY+100)) ]; then
          FILENAME="MX${MX}_MY${MY}_run2_cat34.txt"    
          echo "Processing file: $FILENAME"
          cd YH_cat34_impact_unblind_statonly/MX${MX}_MY${MY}/
          combineTool.py -M Impacts -d MX${MX}_MY${MY}_run2_cat34.root -m 125 --setParameter MH=125.38 --freezeParameters rgx{.*},MH -o MX${MX}_MY${MY}_run2_cat34.json
          plotImpacts.py -i MX${MX}_MY${MY}_run2_cat34.json -o MX${MX}_MY${MY}_run2_cat34 --blind
          cd -
      fi
    done
done
