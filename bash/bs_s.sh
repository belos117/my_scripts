#!/bin/bash
#Bash Script to create an executable bash file

echo "What name do you want to give to your file?"

read name

echo "#!/bin/bash" > ./$name.sh

chmod 777 ./$name.sh

$(open) ./$name.sh
