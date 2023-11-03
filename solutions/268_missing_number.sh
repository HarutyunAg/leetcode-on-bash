#!/bin/bash

# Usage example: bash 268_missing_number.sh 0 1 2 3 4 5 6 8 9
# Output: 7

##########################################################################
#									##
# 268. Missing Number							##
#									##
# Given an array nums containing n distinct numbers in the range [0, n],##
# return the only number in the range that is missing from the array.   ##
#									##
##########################################################################

missingNumber() {
    local nums=("$@")
    local length=${#nums[@]}
    local expected_sum=$((length * (length + 1) / 2)) # Gauss's formula for the sum of the first n integers.

    local actual_sum=0

    for num in "${nums[@]}"; do
        actual_sum=$((actual_sum + num))
    done

    local missing_number=$((expected_sum - actual_sum))
    echo "$missing_number"
}

if [ $# -lt 1 ]; then
    echo "Usage: $0 <array of numbers>"
    exit 1
fi

missingNumber "$@"
