#! /bin/bash/

##########################################################################################
# 771. Jewels and Stones								##
#											##
# You're given strings jewels representing the types of stones that are jewels,		##
# and stones representing the stones you have.						##
#											##
# Each character in stones is a type of stone you have.					##
# You want to know how many of the stones you have are also jewels.			##
#											##
# Letters are case sensitive, so "a" is considered a different type of stone from "A".  ##
#											##
# Example:                           							##
#											##
# Input: jewels = "aA", stones = "aAAbbbb"						##
# Output: 3										##
##########################################################################################

jewels="$1"
stones="$2"

count=0

# Iterate through each character in the stones string.
for ((i=0; i<${#stones}; i++)); do
    char="${stones:$i:1}"

    # Check if the character is in the jewels string
    if [[ $jewels == *"$char"* ]]; then
        ((count++))
    fi
done

echo $count

