#!/usr/bin/env bash   

README.txt: guessinggame.sh
	echo "# The Gessing Game" > README.md
	echo "1. **the makefile was runned :**" >>README.md
	date >> README.md
	echo "2. **the file ```guessinggame.sh``` have this number of lines:**" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md	



