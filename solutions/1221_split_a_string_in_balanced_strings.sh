#! /bin/bash/

# Usage example: bash 1221_split_a_string_in_balanced_strings.sh "RLRRLLRLRL"
# output: 4

##################################################################################
# 1221. Split a String in Balanced Strings					##
#										##
# Balanced strings have an equal quantity of 'L' and 'R' characters.		##
#										##
# Given a balanced string s, split it into some number of substrings such that: ##
# 										##
# Each substring is balanced.							##
# Return the maximum number of balanced strings you can obtain.			##
##################################################################################

str="$1"
R=0
L=0
counter=0

for ((i=0; i<${#str}; i++)); do
	if [[ "${str:i:1}" == "R" ]]; then
		((R++))
	else
		((L++))
	fi

	if [[ R -eq L ]]; then
		((counter ++))
	fi
done

echo "$counter"
