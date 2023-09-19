#!/bin/bash

echo "This is a Kwaku Ananse Game"

echo " Select Your Player:
1- Kwaku Ananse
2- Ntikuma
3- Naakonhwia
4- Tigelengelen "

read player

case $player in
		1)
		    type="Kwaku Ananse"
		    experience=90
		    ;;

		2)
		    type="Ntikuma"
		    experience=80
		    ;;

		3)
		    type="Naakonhwia"
		    experience=20
		    ;;

		4)
		    type="Tigelengelen"
		    experience=70
		    ;;
esac

echo " You have chosen $type and your experience is $experience "
