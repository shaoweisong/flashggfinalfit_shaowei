    #!/bin/bash

    # Set the mass value and category
    mass="M600"
    cat="cat3"

    # Set the file names
    datacard_base="Datacard"
    datacard_file="${datacard_base}_M600_${cat}"

    # Combine datacards
    combineCards.py "combineFHSL_cat3_${mass}"="${datacard_file}lowpt.txt" "${datacard_file}highpt.txt" > "${datacard_file}.txt"

    # Run AsymptoticLimits
    combine -M AsymptoticLimits -m 125 -n "combineFHSL_cat3_${mass}" -d "${datacard_file}.txt" --run expected --rMax 50000
    