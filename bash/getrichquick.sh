#!/bin/bash

echo "what is your name?"
read name
echo "How old are you"
read age

echo "Hello $name, you are $age years old."

sleep 2

echo $USER

sleep 2


echo $SHELL, $HOSTNAME, $PWD

sleep 2

echo "calculating"
sleep 1
echo "..........."
sleep 1
echo "x........."
sleep 1
echo "xx........"
sleep 1
echo "xxx......"
sleep 1
echo "xxxxxxxxx."
echo "$name, You are going to be super rich at age $((($RANDOM%20) + $age))"