#!/bin/bash
#File: guessinggame.sh

function wellcome(){
echo "enter the number of files in the directory"
}
function byebye(){
echo "you did it!"
}

wellcome

number=$(ls | wc -l)

until   [[ $enter_u -eq $number ]]; do
	read enter_u
        if [[ $enter_u -gt $number ]]
	then
		echo "try again with a lower number"
	elif [[ $enter_u -lt $number ]]
	then
		echo "try again with a higher number"
	fi
done

byebye
