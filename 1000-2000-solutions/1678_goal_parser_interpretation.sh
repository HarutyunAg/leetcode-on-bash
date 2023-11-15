#! /bin/bash/

# Usage example: bash 1678_goal_parser_interpretation.sh "G()()()()(al)"
# Output: "Gooooal"

##################################################################################
# 1678. Goal Parser Interpretation						##
#										##
# You own a Goal Parser that can interpret a string command.			##
# The command consists of an alphabet of "G", "()" and/or "(al)" in some order. ##
# The Goal Parser will interpret "G" as the string "G",				##
# "()" as the string "o", and "(al)" as the string "al".			##
# The interpreted strings are then concatenated in the original order.		##
#										##
# Given the string command, return the Goal Parser's interpretation of command. ##
##################################################################################

command="$1"
command=$(echo "$command" | sed 's/()/"o"/g' | sed 's/(al)/"al"/g')

# Remove double quotes added during sed substitution
command=$(echo "$command" | tr -d '"')

echo "$command"
