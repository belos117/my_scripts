#!/bin/bash

echo "Welcome to Mortal Kombat"

sleep 2

echo "Choose your destiny:
1 - Lui Kane
2 - Shan Qui
3 - Sub Zero"

read destiny

case  $destiny in

		1)
		    player="Lui Kane"
		    health=8
		    ;;
		2)
		    player="Shan Qui"
		    health=5
		    ;;
		3)
		    player="Sub Zero"
		    health=10
		    ;;
esac

echo " You have chosen $player and your health is $health."
