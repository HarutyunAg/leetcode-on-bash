# /bin/bash/

# Explanation of this task is too messi.
# We just need to count the number of all unique characters in the string.

# Usage example : bash 2716_minimize_string_length.sh aaaaccccccdddddqqqqqq
# Output: 4

##########################################################################
# 2716. Minimize String Length                                          ##
#                                                                       ##
# Given a 0-indexed string s,                                           ##
# repeatedly perform the following operation any number of times:       ##
#                                                                       ##
# Choose an index i in the string,                                      ##
# and let c be the character in position i.                             ##
# Delete the closest occurrence of c to the left of i (if any)          ##
# and the closest occurrence of c to the right of i (if any).           ##
# Your task is to minimize the length of s                              ##
# by performing the above operation any number of times.                ##
#                                                                       ##
# Return an integer denoting the length of the minimized string.        ##
#                                                                       ##
##########################################################################

input_string=$1

# Use a loop to iterate through each character and count unique characters
unique_chars=()
for ((i = 0; i < ${#input_string}; i++)); do
    char="${input_string:$i:1}"
    if [[ ! " ${unique_chars[@]} " =~ " $char " ]]; then
        unique_chars+=("$char")
    fi
done

num_unique_chars=${#unique_chars[@]}

echo "$num_unique_chars"
