#!/bin/bash
#######################################
#Description: Bash script for my shop
#Author: Silent~Storm Henkel
#Date: 21st November, 2023
#######################################

echo "################################
Welcome to Henk's shop
################################"

sleep 1

echo "Enter your name to begin"
read name

sleep 1

echo "Welcome $name, What would you like for today? 
Enter a number to select:
1. Gobe - $ 10
2. Banku - $ 15
3. Konkonte - $ 7"
read choice

sleep 1

echo "What quantity would you like?"
read quantity


if [[ $choice == "1" ]]; then
    echo " $name, you have ordered $quantity plate(s) of Gobe and 
    your bill is $((10*$quantity))$ "
elif [[ $choice == "2" ]]; then
    echo " $name, you have ordered $quantity balls of banku and 
    your bill is $((15*$quantity))$ "
elif [[ $choice == "3" ]]; then
    echo " $name, you have ordered $quantity balls of konkonte and 
    your bill is $((7*$quantity))$ "
else
    echo " Your selection is invalid "
fi

sleep 1

echo " Thank you $name, we hope to see you back soon "