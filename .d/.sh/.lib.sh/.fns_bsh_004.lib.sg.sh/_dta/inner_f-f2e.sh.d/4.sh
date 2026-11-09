#!/bin/bash

# add tab as ((num #..#))-1

# if [[ "${line:0:1}" != "#" ]]; then
# 	eval "echo ${line} \<p hidden\>${RANDOM}\<\/p\>"
# fi

# eval "echo ${line} | grep -o ^#*"
rrr=$(echo ${line} | grep -o ^#*)
# num=${#rrr}
# for ((i = 0; i < num - 1; i++)); do
# 	echo $i
# 	line="	"$line
# done

# echo "$line"
echo $((${#rrr} - 1))
