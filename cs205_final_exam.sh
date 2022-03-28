# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

"cat pokemon .dat | grep -v Legendary=1 | wc -l" =M
"cat pokemon.dat | cut 1,2,3,4,5,7,8,9,10,11,12,13 | sort median| wc -l" =B
"cat pokemon.dat | cut 1,2,3,4,5,6,7,9,10,11,12,13 | sort median |wc -l" =c
echo "Total Non-Legendary Pokemon: ["A"]"
echo "Avg. HP: ["B"]"
echo "Avg. Defense: ["c"]"
#Note I did not finish and some labels are place holders.

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
