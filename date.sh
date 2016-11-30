#!/bin/bash
# Date Script; Excersize 3
DATE=$(date +%d-%m-%y)

echo "Full date is $DATE"

echo "The day is ${DATE%%-??-??}"
MONTH=${DATE%%-??}
echo "The month is ${MONTH#*-}"
echo "The Year is ${DATE##??-??-}" 
