#!/bin/bash
#Bash Script to create an executable bash file
#Author: Silent~Storm Henkel
#Date: 20/09/2023

echo "This is a bash script to create an executable file"

sleep 1

echo "Name of file?"
	read name

echo "What does your script do?"
	read description

echo "Author"
	read author

echo "Select the file type:
1 - Bash
2 - Python
3 - Perl"

read type

case $type in
    1)
      compiler="#!/bin/bash"
      ext="sh"
      ;;
    2)
      compiler="#!/bin/python"
      ext="py"
      ;;
    3)
      compiler="#!/bin/perl"
      ext="pl"
      ;;
esac

  if [[ $type == 1 ]]; then
     echo $compiler > ./$name.$ext
elif [[ $type == 2 ]]; then
     echo $compiler > ./$name.$ext
elif [[ $type == 3 ]]; then
     echo $compiler > ./$name.$ext
else
     echo "Your selection is invalid, please select again"
  fi

echo "#Description: $description" >> ./$name.$ext

echo
   if [[ $author == "" ]]; then
    echo "#Author: Silent~Storm Henkel" >> ./$name.$ext
   else
    echo "#Author: $author" >> ./$name.$ext
   fi

echo "#Date: $(date)" >> ./$name.$ext

chmod 700 ./$name.$ext

sleep 2

echo "Your file has been created successfully, happy coding!!!"
