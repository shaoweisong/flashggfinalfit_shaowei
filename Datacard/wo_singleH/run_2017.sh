text2workspace.py MX250_MH125_2017_cat34.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX250_MH125_2017_cat34 -d MX250_MH125_2017_cat34.root --run expected 
text2workspace.py MX500_MH125_2017_cat34.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX500_MH125_2017_cat34 -d MX500_MH125_2017_cat34.root --run expected 
text2workspace.py MX1000_MH125_2017_cat34.txt -m 125
combine -M AsymptoticLimits -m 125 -n MX1000_MH125_2017_cat34 -d MX1000_MH125_2017_cat34.root --run expected 