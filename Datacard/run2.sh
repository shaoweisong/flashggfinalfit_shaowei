# combineCards.py cat34_2016post=MX250_MH125_2016post_cat34.txt cat34_2016pre=MX250_MH125_2016pre_cat34.txt cat34_2017=MX250_MH125_2017_cat34.txt cat34_2018=MX250_MH125_2018_cat34.txt > MX250_MH125_cat34.txt
# cp MX250_MH125_cat34.txt MX250_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX250_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX250_MH125.txt
# echo 'MX250_MH125.txt'
# text2workspace.py MX250_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX260_MH125_2016post_cat34.txt cat34_2016pre=MX260_MH125_2016pre_cat34.txt cat34_2017=MX260_MH125_2017_cat34.txt cat34_2018=MX260_MH125_2018_cat34.txt > MX260_MH125_cat34.txt
# cp MX260_MH125_cat34.txt MX260_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX260_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX260_MH125.txt
# echo 'MX260_MH125.txt'
# text2workspace.py MX260_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX270_MH125_2016post_cat34.txt cat34_2016pre=MX270_MH125_2016pre_cat34.txt cat34_2017=MX270_MH125_2017_cat34.txt cat34_2018=MX270_MH125_2018_cat34.txt > MX270_MH125_cat34.txt
# cp MX270_MH125_cat34.txt MX270_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX270_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX270_MH125.txt
# echo 'MX270_MH125.txt'
# text2workspace.py MX270_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX280_MH125_2016post_cat34.txt cat34_2016pre=MX280_MH125_2016pre_cat34.txt cat34_2017=MX280_MH125_2017_cat34.txt cat34_2018=MX280_MH125_2018_cat34.txt > MX280_MH125_cat34.txt
# cp MX280_MH125_cat34.txt MX280_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX280_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX280_MH125.txt
# echo 'MX280_MH125.txt'
# text2workspace.py MX280_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX300_MH125_2016post_cat34.txt cat34_2016pre=MX300_MH125_2016pre_cat34.txt cat34_2017=MX300_MH125_2017_cat34.txt cat34_2018=MX300_MH125_2018_cat34.txt > MX300_MH125_cat34.txt
# cp MX300_MH125_cat34.txt MX300_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX300_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX300_MH125.txt
# echo 'MX300_MH125.txt'
# text2workspace.py MX300_MH125.txt -m 125

#-------------------------Please remind that 320 is always without SL low purity-------------------------#
#--------------------------------------------------------------------------------------------------------#
combineCards.py cat34_2016pre1=MX320_MH125_2016pre_cat34SLhighpurity.txt cat34_2016pre2=MX320_MH125_2016pre_cat34FHhighpurity.txt cat34_2016pre3=MX320_MH125_2016pre_cat34FHlowpurity.txt cat34_2016post=MX320_MH125_2016post_cat34.txt cat34_2017=MX320_MH125_2017_cat34.txt cat34_2018=MX320_MH125_2018_cat34.txt > MX320_MH125_cat34.txt
cp MX320_MH125_cat34.txt MX320_MH125.txt
echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX320_MH125.txt
echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX320_MH125.txt
combine -M AsymptoticLimits -m 125 -n MX320_MH125 -d MX320_MH125.txt --freezeParameters MH --setParameters MH=125.38        
#--------------------------------------------------------------------------------------------------------#

# combineCards.py cat34_2016post=MX350_MH125_2016post_cat34.txt cat34_2016pre=MX350_MH125_2016pre_cat34.txt cat34_2017=MX350_MH125_2017_cat34.txt cat34_2018=MX350_MH125_2018_cat34.txt > MX350_MH125_cat34.txt
# cp MX350_MH125_cat34.txt MX350_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX350_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX350_MH125.txt
# echo 'MX350_MH125.txt'
# text2workspace.py MX350_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX400_MH125_2016post_cat34.txt cat34_2016pre=MX400_MH125_2016pre_cat34.txt cat34_2017=MX400_MH125_2017_cat34.txt cat34_2018=MX400_MH125_2018_cat34.txt > MX400_MH125_cat34.txt
# cp MX400_MH125_cat34.txt MX400_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX400_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX400_MH125.txt
# echo 'MX400_MH125.txt'
# text2workspace.py MX400_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX450_MH125_2016post_cat34.txt cat34_2016pre=MX450_MH125_2016pre_cat34.txt cat34_2017=MX450_MH125_2017_cat34.txt cat34_2018=MX450_MH125_2018_cat34.txt > MX450_MH125_cat34.txt
# cp MX450_MH125_cat34.txt MX450_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX450_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX450_MH125.txt
# echo 'MX450_MH125.txt'
# text2workspace.py MX450_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX500_MH125_2016post_cat34.txt cat34_2016pre=MX500_MH125_2016pre_cat34.txt cat34_2017=MX500_MH125_2017_cat34.txt cat34_2018=MX500_MH125_2018_cat34.txt > MX500_MH125_cat34.txt
# combineCards.py cat12_2016post=MX500_MH125_2016post_cat12.txt cat12_2016pre=MX500_MH125_2016pre_cat12.txt cat12_2017=MX500_MH125_2017_cat12.txt cat12_2018=MX500_MH125_2018_cat12.txt > MX500_MH125_cat12.txt
# combineCards.py cat34=MX500_MH125_cat34.txt cat12=MX500_MH125_cat12.txt > MX500_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX500_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX500_MH125.txt
# echo 'MX500_MH125.txt'
# text2workspace.py MX500_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX550_MH125_2016post_cat34.txt cat34_2016pre=MX550_MH125_2016pre_cat34.txt cat34_2017=MX550_MH125_2017_cat34.txt cat34_2018=MX550_MH125_2018_cat34.txt > MX550_MH125_cat34.txt
# combineCards.py cat12_2016post=MX550_MH125_2016post_cat12.txt cat12_2016pre=MX550_MH125_2016pre_cat12.txt cat12_2017=MX550_MH125_2017_cat12.txt cat12_2018=MX550_MH125_2018_cat12.txt > MX550_MH125_cat12.txt
# combineCards.py cat34=MX550_MH125_cat34.txt cat12=MX550_MH125_cat12.txt > MX550_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX550_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX550_MH125.txt
# echo 'MX550_MH125.txt'
# text2workspace.py MX550_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX600_MH125_2016post_cat34.txt cat34_2016pre=MX600_MH125_2016pre_cat34.txt cat34_2017=MX600_MH125_2017_cat34.txt cat34_2018=MX600_MH125_2018_cat34.txt > MX600_MH125_cat34.txt
# combineCards.py cat12_2016post=MX600_MH125_2016post_cat12.txt cat12_2016pre=MX600_MH125_2016pre_cat12.txt cat12_2017=MX600_MH125_2017_cat12.txt cat12_2018=MX600_MH125_2018_cat12.txt > MX600_MH125_cat12.txt
# combineCards.py cat34=MX600_MH125_cat34.txt cat12=MX600_MH125_cat12.txt > MX600_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX600_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX600_MH125.txt
# echo 'MX600_MH125.txt'
# text2workspace.py MX600_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX650_MH125_2016post_cat34.txt cat34_2016pre=MX650_MH125_2016pre_cat34.txt cat34_2017=MX650_MH125_2017_cat34.txt cat34_2018=MX650_MH125_2018_cat34.txt > MX650_MH125_cat34.txt
# combineCards.py cat12_2016post=MX650_MH125_2016post_cat12.txt cat12_2016pre=MX650_MH125_2016pre_cat12.txt cat12_2017=MX650_MH125_2017_cat12.txt cat12_2018=MX650_MH125_2018_cat12.txt > MX650_MH125_cat12.txt
# combineCards.py cat34=MX650_MH125_cat34.txt cat12=MX650_MH125_cat12.txt > MX650_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX650_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX650_MH125.txt
# echo 'MX650_MH125.txt'
# text2workspace.py MX650_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX700_MH125_2016post_cat34.txt cat34_2016pre=MX700_MH125_2016pre_cat34.txt cat34_2017=MX700_MH125_2017_cat34.txt cat34_2018=MX700_MH125_2018_cat34.txt > MX700_MH125_cat34.txt
# combineCards.py cat12_2016post=MX700_MH125_2016post_cat12.txt cat12_2016pre=MX700_MH125_2016pre_cat12.txt cat12_2017=MX700_MH125_2017_cat12.txt cat12_2018=MX700_MH125_2018_cat12.txt > MX700_MH125_cat12.txt
# combineCards.py cat34=MX700_MH125_cat34.txt cat12=MX700_MH125_cat12.txt > MX700_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX700_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX700_MH125.txt
# echo 'MX700_MH125.txt'
# text2workspace.py MX700_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX750_MH125_2016post_cat34.txt cat34_2016pre=MX750_MH125_2016pre_cat34.txt cat34_2017=MX750_MH125_2017_cat34.txt cat34_2018=MX750_MH125_2018_cat34.txt > MX750_MH125_cat34.txt
# combineCards.py cat12_2016post=MX750_MH125_2016post_cat12.txt cat12_2016pre=MX750_MH125_2016pre_cat12.txt cat12_2017=MX750_MH125_2017_cat12.txt cat12_2018=MX750_MH125_2018_cat12.txt > MX750_MH125_cat12.txt
# combineCards.py cat34=MX750_MH125_cat34.txt cat12=MX750_MH125_cat12.txt > MX750_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX750_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX750_MH125.txt
# echo 'MX750_MH125.txt'
# text2workspace.py MX750_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX800_MH125_2016post_cat34.txt cat34_2016pre=MX800_MH125_2016pre_cat34.txt cat34_2017=MX800_MH125_2017_cat34.txt cat34_2018=MX800_MH125_2018_cat34.txt > MX800_MH125_cat34.txt
# combineCards.py cat12_2016post=MX800_MH125_2016post_cat12.txt cat12_2016pre=MX800_MH125_2016pre_cat12.txt cat12_2017=MX800_MH125_2017_cat12.txt cat12_2018=MX800_MH125_2018_cat12.txt > MX800_MH125_cat12.txt
# combineCards.py cat34=MX800_MH125_cat34.txt cat12=MX800_MH125_cat12.txt > MX800_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX800_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX800_MH125.txt
# echo 'MX800_MH125.txt'
# text2workspace.py MX800_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX900_MH125_2016post_cat34.txt cat34_2016pre=MX900_MH125_2016pre_cat34.txt cat34_2017=MX900_MH125_2017_cat34.txt cat34_2018=MX900_MH125_2018_cat34.txt > MX900_MH125_cat34.txt
# combineCards.py cat12_2016post=MX900_MH125_2016post_cat12.txt cat12_2016pre=MX900_MH125_2016pre_cat12.txt cat12_2017=MX900_MH125_2017_cat12.txt cat12_2018=MX900_MH125_2018_cat12.txt > MX900_MH125_cat12.txt
# combineCards.py cat34=MX900_MH125_cat34.txt cat12=MX900_MH125_cat12.txt > MX900_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX900_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX900_MH125.txt
# echo 'MX900_MH125.txt'
# text2workspace.py MX900_MH125.txt -m 125
 
# combineCards.py cat34_2016post=MX1000_MH125_2016post_cat34.txt cat34_2016pre=MX1000_MH125_2016pre_cat34.txt cat34_2017=MX1000_MH125_2017_cat34.txt cat34_2018=MX1000_MH125_2018_cat34.txt > MX1000_MH125_cat34.txt
# combineCards.py cat12_2016post=MX1000_MH125_2016post_cat12.txt cat12_2016pre=MX1000_MH125_2016pre_cat12.txt cat12_2017=MX1000_MH125_2017_cat12.txt cat12_2018=MX1000_MH125_2018_cat12.txt > MX1000_MH125_cat12.txt
# combineCards.py cat34=MX1000_MH125_cat34.txt cat12=MX1000_MH125_cat12.txt > MX1000_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX1000_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX1000_MH125.txt
# echo 'MX1000_MH125.txt'
# text2workspace.py MX1000_MH125.txt -m 125
 
# combineCards.py cat12_2016post=MX1100_MH125_2016post_cat12.txt cat12_2016pre=MX1100_MH125_2016pre_cat12.txt cat12_2017=MX1100_MH125_2017_cat12.txt cat12_2018=MX1100_MH125_2018_cat12.txt > MX1100_MH125_cat12.txt
# cp MX1100_MH125_cat12.txt MX1100_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX1100_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX1100_MH125.txt
# echo 'MX1100_MH125.txt'
# text2workspace.py MX1100_MH125.txt -m 125
 
# combineCards.py cat12_2016post=MX1200_MH125_2016post_cat12.txt cat12_2016pre=MX1200_MH125_2016pre_cat12.txt cat12_2017=MX1200_MH125_2017_cat12.txt cat12_2018=MX1200_MH125_2018_cat12.txt > MX1200_MH125_cat12.txt
# cp MX1200_MH125_cat12.txt MX1200_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX1200_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX1200_MH125.txt
# echo 'MX1200_MH125.txt'
# text2workspace.py MX1200_MH125.txt -m 125
 
# combineCards.py cat12_2016post=MX1300_MH125_2016post_cat12.txt cat12_2016pre=MX1300_MH125_2016pre_cat12.txt cat12_2017=MX1300_MH125_2017_cat12.txt cat12_2018=MX1300_MH125_2018_cat12.txt > MX1300_MH125_cat12.txt
# cp MX1300_MH125_cat12.txt MX1300_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX1300_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX1300_MH125.txt
# echo 'MX1300_MH125.txt'
# text2workspace.py MX1300_MH125.txt -m 125
 
# combineCards.py cat12_2016post=MX1400_MH125_2016post_cat12.txt cat12_2016pre=MX1400_MH125_2016pre_cat12.txt cat12_2017=MX1400_MH125_2017_cat12.txt cat12_2018=MX1400_MH125_2018_cat12.txt > MX1400_MH125_cat12.txt
# cp MX1400_MH125_cat12.txt MX1400_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX1400_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX1400_MH125.txt
# echo 'MX1400_MH125.txt'
# text2workspace.py MX1400_MH125.txt -m 125
 
# combineCards.py cat12_2016post=MX1500_MH125_2016post_cat12.txt cat12_2016pre=MX1500_MH125_2016pre_cat12.txt cat12_2017=MX1500_MH125_2017_cat12.txt cat12_2018=MX1500_MH125_2018_cat12.txt > MX1500_MH125_cat12.txt
# cp MX1500_MH125_cat12.txt MX1500_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX1500_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX1500_MH125.txt
# echo 'MX1500_MH125.txt'
# text2workspace.py MX1500_MH125.txt -m 125
 
# combineCards.py cat12_2016post=MX1600_MH125_2016post_cat12.txt cat12_2016pre=MX1600_MH125_2016pre_cat12.txt cat12_2017=MX1600_MH125_2017_cat12.txt cat12_2018=MX1600_MH125_2018_cat12.txt > MX1600_MH125_cat12.txt
# cp MX1600_MH125_cat12.txt MX1600_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX1600_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX1600_MH125.txt
# echo 'MX1600_MH125.txt'
# text2workspace.py MX1600_MH125.txt -m 125
 
# combineCards.py cat12_2016post=MX1700_MH125_2016post_cat12.txt cat12_2016pre=MX1700_MH125_2016pre_cat12.txt cat12_2017=MX1700_MH125_2017_cat12.txt cat12_2018=MX1700_MH125_2018_cat12.txt > MX1700_MH125_cat12.txt
# cp MX1700_MH125_cat12.txt MX1700_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX1700_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX1700_MH125.txt
# echo 'MX1700_MH125.txt'
# text2workspace.py MX1700_MH125.txt -m 125
 
# combineCards.py cat12_2016post=MX1800_MH125_2016post_cat12.txt cat12_2016pre=MX1800_MH125_2016pre_cat12.txt cat12_2017=MX1800_MH125_2017_cat12.txt cat12_2018=MX1800_MH125_2018_cat12.txt > MX1800_MH125_cat12.txt
# cp MX1800_MH125_cat12.txt MX1800_MH125.txt
# echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX1800_MH125.txt
# echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX1800_MH125.txt
# echo 'MX1800_MH125.txt'
# text2workspace.py MX1800_MH125.txt -m 125
 
combineCards.py cat12_2016post=MX1900_MH125_2016post_cat12.txt cat12_2016pre=MX1900_MH125_2016pre_cat12.txt cat12_2017=MX1900_MH125_2017_cat12.txt cat12_2018=MX1900_MH125_2018_cat12.txt > MX1900_MH125_cat12.txt
cp MX1900_MH125_cat12.txt MX1900_MH125.txt
echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX1900_MH125.txt
echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX1900_MH125.txt
echo 'MX1900_MH125.txt'
text2workspace.py MX1900_MH125.txt -m 125
 
combineCards.py cat12_2016post=MX2000_MH125_2016post_cat12.txt cat12_2016pre=MX2000_MH125_2016pre_cat12.txt cat12_2017=MX2000_MH125_2017_cat12.txt cat12_2018=MX2000_MH125_2018_cat12.txt > MX2000_MH125_cat12.txt
cp MX2000_MH125_cat12.txt MX2000_MH125.txt
echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX2000_MH125.txt
echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX2000_MH125.txt
echo 'MX2000_MH125.txt'
text2workspace.py MX2000_MH125.txt -m 125
 
combineCards.py cat12_2016post=MX2200_MH125_2016post_cat12.txt cat12_2016pre=MX2200_MH125_2016pre_cat12.txt cat12_2017=MX2200_MH125_2017_cat12.txt cat12_2018=MX2200_MH125_2018_cat12.txt > MX2200_MH125_cat12.txt
cp MX2200_MH125_cat12.txt MX2200_MH125.txt
echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX2200_MH125.txt
echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX2200_MH125.txt
echo 'MX2200_MH125.txt'
text2workspace.py MX2200_MH125.txt -m 125
 
combineCards.py cat12_2016post=MX2400_MH125_2016post_cat12.txt cat12_2016pre=MX2400_MH125_2016pre_cat12.txt cat12_2017=MX2400_MH125_2017_cat12.txt cat12_2018=MX2400_MH125_2018_cat12.txt > MX2400_MH125_cat12.txt
cp MX2400_MH125_cat12.txt MX2400_MH125.txt
echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX2400_MH125.txt
echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX2400_MH125.txt
echo 'MX2400_MH125.txt'
text2workspace.py MX2400_MH125.txt -m 125
 
combineCards.py cat12_2016post=MX2600_MH125_2016post_cat12.txt cat12_2016pre=MX2600_MH125_2016pre_cat12.txt cat12_2017=MX2600_MH125_2017_cat12.txt cat12_2018=MX2600_MH125_2018_cat12.txt > MX2600_MH125_cat12.txt
cp MX2600_MH125_cat12.txt MX2600_MH125.txt
echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX2600_MH125.txt
echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX2600_MH125.txt
echo 'MX2600_MH125.txt'
text2workspace.py MX2600_MH125.txt -m 125
 
combineCards.py cat12_2016post=MX2800_MH125_2016post_cat12.txt cat12_2016pre=MX2800_MH125_2016pre_cat12.txt cat12_2017=MX2800_MH125_2017_cat12.txt cat12_2018=MX2800_MH125_2018_cat12.txt > MX2800_MH125_cat12.txt
cp MX2800_MH125_cat12.txt MX2800_MH125.txt
echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX2800_MH125.txt
echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX2800_MH125.txt
echo 'MX2800_MH125.txt'
text2workspace.py MX2800_MH125.txt -m 125
 
combineCards.py cat12_2016post=MX3000_MH125_2016post_cat12.txt cat12_2016pre=MX3000_MH125_2016pre_cat12.txt cat12_2017=MX3000_MH125_2017_cat12.txt cat12_2018=MX3000_MH125_2018_cat12.txt > MX3000_MH125_cat12.txt
cp MX3000_MH125_cat12.txt MX3000_MH125.txt
echo 'CMS_1000fb      rateParam  * gghh*gg_*_hgg 1000' >>  MX3000_MH125.txt
echo 'nuisance  edit  freeze  CMS_1000fb' >>  MX3000_MH125.txt
echo 'MX3000_MH125.txt'
text2workspace.py MX3000_MH125.txt -m 125




