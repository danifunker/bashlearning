#!/bin/bash
for i in $(cat /etc/hosts)
do
	COMPUTERNAME=$(echo $i | awk -F " " ' { print $1 } ')
	ping -c 1 $COMPUTERNAME
done
