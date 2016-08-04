#!/bin/bash
#./excersize1.sh
#Backs up messages file and deletes it afterwards
LOGFILE=!~/messages
cp LOGFILE LOGFILE.old
#echo "" > messages
cat /dev/null > LOGFILE
exit 1
