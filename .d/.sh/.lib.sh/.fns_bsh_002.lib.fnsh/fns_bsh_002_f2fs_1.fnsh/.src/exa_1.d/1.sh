#!/bin/bash

str="csadc csac^vsfdv sfes"
arr=()
IFS=$'^'
printf '%q\n' "${IFS}"
for word in ${str[@]}; do
	arr+=("$word")
done

echo ${arr[0]}
echo ${arr[1]}

# IFS=$'\n'
# printf '%q\n' "${IFS}"
# for line in ${arr[@]}; do
# 	echo "$line"
# done
