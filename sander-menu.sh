#!/bin/bash
echo 'Select a directory: '
select DIR in /bin /usr /etc
do
	#only continue if user has selected something
	if [ -n $dir ]
	then
		DIR=$DIR
		echo you have selected $DIR
		export DIR
		break
	else
		echo invalid choice
	fi
done
