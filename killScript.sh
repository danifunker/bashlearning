#!/bin/bash
SCRIPTNAME=$1
echo $SCRIPTNAME is the script
if [ -z $1 ]
	then
	echo "This script kills a script from running on the system"
	echo "Usage: $0 scriptname"
else
	kill -9 $(ps -aux | grep $SCRIPTNAME | grep -v grep | awk -F " " '{ print $2 }' )
	echo "Tried to kill Script $SCRIPTNAME result: $?"
fi
