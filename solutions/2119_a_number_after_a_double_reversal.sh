#! /bin/bash/

##########################################################################
# 2119. A Number After a Double Reversal				##
# 									##
# Reversing an integer means to reverse all its digits.			##
#									##
# For example, reversing 2021 gives 1202.				##
# Reversing 12300 gives 321 as the leading zeros are not retained.	##
# Given an integer num, reverse num to get reversed1,			##
# then reverse reversed1 to get reversed2.				##
#									##
# Return true if reversed2 equals num. Otherwise return false.		##
#									##
##########################################################################

is_same_after_reversals() {
    num="$1"

    if [ "$num" -eq 0 ] || [ $((num % 10)) -ne 0 ]; then
        echo "true"
    else
        echo "false"
    fi
}


if [ $# -ne 1 ]; then
    echo "Usage: $0 <integer>"
    exit 1
fi

input_num="$1"
result=$(is_same_after_reversals "$input_num")
echo "$result"
