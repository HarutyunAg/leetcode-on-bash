#! /bin/bash/

# Usage example: bash 1512_number_of_good_pairs.sh 1 1 1 1

######################################################################
# 1512. Number of Good Pairs					    ##
# Given an array of integers nums, return the number of good pairs. ##
#								    ##
# A pair (i, j) is called good if nums[i] == nums[j] and i < j.	    ##
######################################################################

num_identical_pairs() {
    declare -A numFreq # Declare an associative array to store number frequencies
    goodPairs=0

    for num in "$@"; do
        ((goodPairs += numFreq[$num]))
        ((numFreq[$num]++))
    done

    echo "$goodPairs"
}

if [ $# -lt 1 ]; then
    echo "Usage: $0 <array of integers>"
    exit 1
fi

num_identical_pairs "$@"
