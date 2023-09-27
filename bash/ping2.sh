#!/bin/bash
#Description: Pings a host or website to determine if they are up or down
#Author: Silent~Storm Henkel
#Date: ven 22 set 2023, 15:54:40, CEST

for x in google.com facebook.com bing.com;
  do
    if ping -q -c 10 -w 2 $x > /dev/null; then
      echo "$x is up"
    else
      echo "$x is down"
    fi
  done
