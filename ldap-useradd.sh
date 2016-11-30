#!/bin/bash
# Exercise 5; read from a text file containing ldap usernames and add them to the local system

for STRING in $(cat ./ldapusers.txt)
do
	USERNAME=$(echo $STRING | awk -F "," ' { print $1 } ' | awk -F "=" ' { print $2 }' | tr [:upper:] [:lower:]) 

	echo adduser $USERNAME 
done
