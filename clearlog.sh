#!/bin/bash
#./excersize1.sh
#Backs up messages file and deletes it afterwards
cp messages messages.old
#echo "" > messages
cat /dev/null > messages
exit 1
