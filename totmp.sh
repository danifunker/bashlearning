#!/bin/bash

if [ -z "$*" ]
then
	echo "Type in the list of filenames to copy"
	read FILENAMES 
else 
	FILENAMES="$*"
fi

cp $FILENAMES ~

echo "copied $FILENAMES"
