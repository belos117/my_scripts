#!/bin/bash
#Description: Ping a Website, Host or IP Address
#Author: Silent~Storm Henkel
#Date: Wed Sep 20 19:10:56 UTC 2023

echo "Enter website/ Host/ IP Address to ping"

read host

for x in $host;
do
	if ping -q -c 10 -w 5 $x  > /dev/null; then
		echo "$x is up"
	else
		echo "$x is down"
	fi
done
