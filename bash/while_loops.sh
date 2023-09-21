#!/bin/bash
#Description: While loops example script
#Author: Silent~Storm Henkel
#Date: Thu Sep 21 03:31:30 UTC 2023

x=1

while [[ $x -le 100 ]]
do
	echo "I just did $x pushups"
	(( x++ ))
done
