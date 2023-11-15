#! /bin/bash/

# Usage example: bash 2652_sum_multiples.sh 10
# Output: 40

##########################################################
# 2652. Sum Multiples					##
#							##
# Given a positive integer n,				##
# find the sum of all integers in the range [1, n]	##
# inclusive that are divisible by 3, 5, or 7.		##
#							##
# Return an integer denoting the sum of all numbers	##
# in the given range satisfying the constraint.		##
##########################################################


is_divisible() {
	local num=$1
	if (($num % 3 == 0 || $num % 5 == 0 || $num % 7 == 0 ));then
		return 0
	else
		return 1
	fi
}

n=$1

sum=0
for ((i=1; i<=$n; i++)); do
	if is_divisible "$i"; then
		sum=$((sum+i))
	fi
done


echo $sum
