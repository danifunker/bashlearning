#!/bin/bash
STRING="cn=lara,dc=example,dc=com"

USERNAME=$(echo $STRING | awk -F "," ' { print $1 } ' | awk -F "=" ' { print $2 }') 

echo $USERNAME
