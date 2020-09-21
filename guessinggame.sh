#!/usr/bin/env bash

#the guessing game by hider vargas 
#in this line i'm counting the number of files in the current directory
n_file="$(ls -l |egrep ^[^d.*] |wc -l)"

#uncounting the "total" line  
let n_file=$n_file-1

function guessing { 

while  [[ $guessing_n != $n_file ]] 
do	
	echo "guess the number of files in current directory : "

	read guessing_n

	if [[ $guessing_n -gt $n_file ]]
	then
		echo "too high"
	elif [[ $guessing_n -lt $n_file ]]
	then 
		echo "too low"
	fi
done

echo "congrats you guessed it !!"

}

guessing

