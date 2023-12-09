code #!/bin/bash
# Bash Script to create a script file with specified permissions

# Function to get user input with a prompt
get_input() {
    read -p "$1: " input
    echo "$input"
}

# Function to validate and set the script type
set_script_type() {
    case $1 in
        1) compiler="#!/bin/bash"; ext="sh" ;;
        2) compiler="#!/bin/python"; ext="py" ;;
        3) compiler="#!/bin/perl"; ext="pl" ;;
        *) echo "Invalid script type selected"; exit 1 ;;
    esac
}

# Function to validate and set file permissions
set_permissions() {
    case $1 in
        1) chmod 777 "$2" ;;
        2) chmod 700 "$2" ;;
        3) chmod 070 "$2" ;;
        4) chmod 770 "$2" ;;
        5) chmod 007 "$2" ;;
        *) echo "Invalid permissions selected"; exit 1 ;;
    esac
}

echo "This is a bash script to create a script file with specified permissions"

name=$(get_input "Name of file")
description=$(get_input "What does your script do?")
author=$(get_input "Author")

echo "Select the file type:
1 - Bash
2 - Python
3 - Perl"
script_type=$(get_input "Enter the number")

set_script_type "$script_type"

file_name="./$name.$ext"

echo "#Description: $description" > "$file_name"
[[ -n "$author" ]] && echo "#Author: $author" >> "$file_name"
echo "#Date: $(date)" >> "$file_name"

echo "Give rwx permission to:
1 - All
2 - Users only
3 - Groups only
4 - Users and Groups only
5 - Others"
permissions=$(get_input "Enter the number")

set_permissions "$permissions" "$file_name"

echo "Your file $file_name has been created successfully. Happy coding!"
