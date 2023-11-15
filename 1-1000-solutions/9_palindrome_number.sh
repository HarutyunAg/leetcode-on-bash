#! /bin/bash/

# Usage example: bash 9_palindrome_number.sh 121
# Output: true

###############################################
# 9. Palindrome Number			     ##
#					     ##
# Given an integer x return true	     ##
# if x is a palindrome, and false otherwise. ##
#					     ##
###############################################

is_palindrome() {
    local str=$1
    local reversed=$(echo "$str" | rev)

    if [ "$str" == "$reversed" ]; then
        return 0
    else
        return 1
    fi
}

x=$1
x_string="$x"

if is_palindrome "$x_string"; then
    echo "true"
else
    echo "false"
fi

