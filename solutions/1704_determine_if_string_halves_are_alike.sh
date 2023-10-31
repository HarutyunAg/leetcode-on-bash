#! /bin/bash/

# Usage example: bash 1704_determine_if_string_halves_are_alike.sh any_kind_of_word

##################################################################
# 1704. Determine if String Halves Are Alike			##
#								##
# You are given a string s of even length.			##
# Split this string into two halves of equal lengths,		##
# and let a be the first half and b be the second half.		##
# 								##
# Two strings are alike if they have the same number of vowels  ##
# ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U').		##
# 								##
# Notice that s contains uppercase and lowercase letters.	##
# 								##
# Return true if a and b are alike. Otherwise, return false.	##
# 								##
##################################################################

count_vowels() {
    local input="$1"
    local vowels="aeiouAEIOU"
    local count=0

    for ((i = 0; i < ${#input}; i++)); do
        char="${input:$i:1}"
        if [[ "$vowels" == *"$char"* ]]; then
            ((count++))
        fi
    done

    echo "$count"
}

main() {
    input="$1"
    length=${#input}
    half_length=$((length / 2))

    first_half="${input:0:half_length}"
    second_half="${input:half_length}"

    # Count vowels in both halves
    count1=$(count_vowels "$first_half")
    count2=$(count_vowels "$second_half")

    if [ "$count1" -eq "$count2" ]; then
        echo "true"
    else
        echo "false"
    fi
}

main "$1"
