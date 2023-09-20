#!/bin/bash
#Bash Script to create an executable bash file
#Author: Silent~Storm Henkel
#Date: 20/09/2023

echo "This is a bash script to create an executable bash file"

sleep 2

echo "Name of file?"

	read name

echo "What does your script do"

	read description

echo "#!/bin/bash" > ./$name.sh

echo "#Description: $description" >> ./$name.sh

echo "#Author: $USER" >> ./$name.sh

echo "#Date: $(date)" >> ./$name.sh

chmod 700 ./$name.sh
