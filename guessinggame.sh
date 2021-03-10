#!/usr/bin/env bash
function guess() {
echo "Please enter your guess"
read num
#echo 	$num
count=$( ls -l | wc -l )
#echo $count
diff=$((  $count - $num ))
#echo $diff
if [[ $num -gt 0 ]]
then
	if [[ $diff -eq 0 ]]
	then
		echo -e "Congratulations!!! \n You are correct.There are $num files in the Current Directory!!!"
		return $diff
		elif [[ $diff -gt 0 && $diff -lt 10 ]]
		then 
			echo "You are almost there, your guess is little low.. "
			return $diff
			elif [[ $diff -ge 11 ]]
			then
				echo "Your guess is too low, try to guess high"
				return $diff
				elif [[ $diff -lt 0 && $diff -gt -10 ]]
				then
					echo "Almost there, Your guess is little high..."
					return $diff
					else
						echo "Hmmm...You are too high, try to guess low.."
						return $diff
						fi
else
	echo "Not a valid number....Please enter a positive number"
	return 1
fi	
}
echo "Can you guess how many files in the Current Directory ??"
guess
while [[ $? -ne 0 ]]
do	
	guess
done
