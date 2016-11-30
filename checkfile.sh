#!/bin/bash
if [ -n $1 ]; then

	if [ -f $1 ]; then 
		echo "YES"
	else 
		echo "NO"
	fi
else 
	echo "NO FILENAME"
fi
exit


	if [ -f $1 ]
	then echo "YES"
	else echo "NO"
	fi
