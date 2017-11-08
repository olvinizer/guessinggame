#!/usr/bin/env bash

function game {
	local userGuess=-1
	local filesCount=$(ls -1|wc -l|egrep -o "\d+")
	echo "There are $filesCount files"
	while [[ $userGuess -ne $filesCount ]]
	do
		read -p "Please enter amount of files in current folder: " userGuess
		if [[ $userGuess -eq $filesCount ]]
		then
			echo "Very good!"
		elif [[ $userGuess -lt $filesCount ]]
		then
			echo "Good try, but looks like there are more! Lets do another guess!"
		else
			echo "Nice, but too high! Try one more time!"
		fi	
	done
}

game
