#!/bin/bash
#Bash Script to create an executable bash file

echo "This is a bash script to create an executable bash file"

sleep 2

echo "Name of file?"

read name

echo "What does your script do"

read description

echo "#!/bin/bash" > ./$name.sh

echo "#$description" >> ./$name.sh

chmod 777 ./$name.sh
