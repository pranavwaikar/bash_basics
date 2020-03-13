#! /bin/bash
echo "Hello world"

# SYSTEM VARIABLES
echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD

# LOCAL VARIABLES
name=pranav
echo The name is $name

# Accept Inputs
echo "Enter the name:"
read name
echo The name is $name

echo "Enter full name:"
read name1 name2 name3
echo $name1 $name2 $name3

read -p "Username:" user_var
echo Username: $user_var
read -sp "password: " password_var
echo "password is:"  $password_var

echo "Enter fruits: "
read -a fruits_arr
echo "Fruits: ${fruits_arr[0]} ${fruits_arr[1]}"
echo fruits $fruits_arr # will just print first element

echo "Enter something:"
read 
echo "REPLY value is $REPLY"