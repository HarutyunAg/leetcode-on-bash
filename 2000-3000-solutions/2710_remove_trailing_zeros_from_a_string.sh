#! /bash/bin/

###############################################################
# 2710. Remove Trailing Zeros From a String		     ##
#							     ##
# Given a positive integer num represented as a string,	     ##
# return the integer num without trailing zeros as a string. ##
#							     ##							
###############################################################

num="$1"

reversed_str=$(echo "$num" | rev)

# When we convert a reversed string to an integer, the 0's in front of the numbers disappear.
integer_value=$(echo "$reversed_str" | bc)

reversed_int_str=$(echo "$integer_value" | rev)

echo "$reversed_int_str"
