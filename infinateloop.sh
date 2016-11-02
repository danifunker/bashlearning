#!/bin/bash
COUNTER=1
while [ $COUNTER -gt 0 ] # While (whitespace)(-evaluates exit code of the command) command; do
do
COUNTER=$(($COUNTER+1))
	echo "Hello $COUNTER"
done
