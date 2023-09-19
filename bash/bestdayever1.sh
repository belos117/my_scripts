#!/bin/bash

name=$1
car=$2

user=$(whoami)
date=$(date)
where=$(pwd)

echo  "Good morning $name"

sleep 1

echo "You're looking good today $name"

sleep 1

echo "You have the best $car I've ever seen $name"

sleep 2
echo "You are currently logged in as $user and you are in the $where directory and today's date is $date"
