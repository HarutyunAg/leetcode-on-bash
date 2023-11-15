#! /bin/bash/

# Usage example: bash 258_add_digits.sh input_number

##########################################
# 258. Add Digits			##
#					##
# Given an integer num,			##
# repeatedly add all its digits		##
# until the result has only one digit,  ##
# and return it.			##
##########################################

addDigits(){
        num=$1
        if [[ $num -eq 0 ]]; then
                echo 0
        else
                digital_root=$((1 + (num - 1) % 9))
                echo $digital_root
        fi
}

echo $(addDigits $1)
