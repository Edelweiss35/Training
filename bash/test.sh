#!bin/bash

clear
echo "Please enter your name"
read name
echo "Please enter your age"
read age
echo "Please enter your sex"
read sex
echo "so you are a $age year old $sex named $name" | tee $name.txt
