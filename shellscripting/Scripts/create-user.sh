#!/bin/bash

#!/bin/bash

read -p "Enter username : " username
read -p "Enter password : " password

if id "$username" >/dev/null 2>&1; then
    echo "User already exists"
    exit 1
fi

sudo useradd -m "$username"
echo "$username:$password" | sudo chpasswd

echo "$username user added successfully"




# id shubham  : this will check the user shubham exists or not

# id shubham &>/dev/null : this will check the user shubham exists or not and redirect the output to null

# id shubham >/dev/null 2>&1 : this will check the user shubham exists or not and redirect both stdout and stderr to null


# id shubham>output.txt 2>&1 : this will check the user shubham exists or not and redirect both stdout and stderr to output.txt file  (2>&1 is used to redirect stderr to the same location as stdout)

# id shubham>output.txt : this can work