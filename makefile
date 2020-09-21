#!/usr/bin/env bash   

README.txt: guessinggame.sh
	echo "The Gessing Game" > README.txt
	echo "the makefile was runned :" >>README.txt
	date >> README.txt
	echo "the file guessinggame.sh have this number of lines:" >> README.txt
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.txt	



