#!/bin/bash

echo " Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in

	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisoner"
		hp=4
		attack=2
		;;
	3)
		type="Prophet"
		hp=8
		attack=18
		;;
esac

echo "You have chosen $type. Your hp is $hp and attack is $attack."

#First beast battle

beast=$(( $RANDOM % 2))

echo "Your first beast approaches. Prepare to battle. Pick a number between 0 and 1"

read tarnished

if [[ $beast == $tarnished || $tarnished == "storm" ]]; then
	echo "Beast VANQUISHED"
else
	echo  "You die!"
	exit 1
fi
sleep 2

echo "Boss battle. Its Margit. Choose a number between 0 and 10"

read tarnished

if [[ $beast == $tarnished || $tarnished == "storm" ]]; then
        echo "You killed Margit"

elif [[ $USER == "henkel" ]]; then

        echo  "You die!"
        exit 1
fi
