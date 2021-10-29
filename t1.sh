#!/bin/bash
a=(2 4 5 8)
b=()
for i in "${a[@]}" 
do
	rem=$((i % 2))
	if [[ $rem -eq 0 ]]
        then
		echo $i
		b=(${b[@]} $i)
	fi
done
echo "${b[@]}"
echo "${#b[@]}"
echo "${#a[@]}"
