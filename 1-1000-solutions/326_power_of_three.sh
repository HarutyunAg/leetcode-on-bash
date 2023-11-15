#!/bin/bash

##################################################################
# 326. Power of Three						##
# Given an integer n, return true if it is a power of three.	##
# Otherwise, return false.					##
#								##
# An integer n is a power of three,				##
# if there exists an integer x such that n == 3x.		##
##################################################################

is_power_of_three() {
  # Check if the input is a positive integer.
  if [[ "$1" -lt 1 ]]; then
    return 1
  fi

  # Recursively divide the input by 3 and check if the remainder is zero.
  if [[ "$1" -eq 3 ]]; then
    return 0
  elif [[ "$1" -eq 1 ]]; then
    return 1
  else
    return $(is_power_of_three "$(( $1 / 3 ))")
  fi
}

# Check if the input argument is a power of three.
if is_power_of_three "$1"; then
  echo "true"
else
  echo "false"
fi
