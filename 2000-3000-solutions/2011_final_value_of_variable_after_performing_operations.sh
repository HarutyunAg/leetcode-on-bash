#!/bin/bash

##################################################################################
# 2011. Final Value of Variable After Performing Operations            		##
#										##
# There is a programming language with only four operations and one variable X: ##
#										##
# ++X and X++ increments the value of the variable X by 1.			##
# --X and X-- decrements the value of the variable X by 1.			##
# Initially, the value of X is 0.						##
#										##
# Given an array of strings operations containing a list of operations,		##
# return the final value of X after performing all the operations.		##
#										##
##################################################################################

X=0

operations=("X--" "--X" "X++" "X++" "--X" "X++" "X++" "++X" )

# Iterate through the operations
for operation in "${operations[@]}"; do
  case "$operation" in
    *"+"*)
      ((X++))
      ;;
    *"-"*)
      ((X--))
      ;;
  esac
done

echo "$X"

