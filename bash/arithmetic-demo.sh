#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#firstnum=5
#secondnum=2
read -p "Tell me a number: " firstnum
read -p "Tell me a second number: " secondnum
read -p "Tell me a third number: " thirdnum
#==============================================

sum=$((firstnum + secondnum + thirdnum))

product=$((firstnum * secondnum * thirdnum))

cat <<EOF
The sum of $firstnum,$secondnum,$thirdnum is $sum
And the product of $firstnum,$secondnum,$thirdnum is $product
EOF
