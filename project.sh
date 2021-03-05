:#!/usr/bin/env bash
echo "Can you guess how many files in the current directory?"
read answer1
echo $answer1
count=$( ls -l | wc -l )
echo $count
if [[ $answer1 -eq $count ]]
then
	echo "Your guess is  Correct...Congrats..."
elif [[ $answer1 -lt $count ]]
	then
		echo "your guess is low..."
	else
		echo "your guess is high"
fi
}

