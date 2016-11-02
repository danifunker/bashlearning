#!/bin/bash
# main function of the program, loop for each file that isn't the dir name
function copy_files(){
DESTFOLDER=$1
	for file in $@; do
		if [ "$file" != $DESTFOLDER ]; then
			mv "$file" $DESTFOLDER
		fi
	done
}

# Ensure run syntax is good
if [ $# -lt 2 ]; then echo "usage: $0 foldername file1 [file2 file3 file4]"

else

	# check if folder exists, if not create it; catch if the folder is a file
	DESTINATIONFOLDER=$1
	if [ -d $DESTINATIONFOLDER ]; then
		copy_files $@
		
	# Spit out an error message if the folder is a file
	elif [ -f $DESTINATIONFOLDER ]; then
		echo "The folder you defined is actually an existing file. Please remove the file and run the script again"
		
	# Otherwise, create the folder and copy the data in
	else
		mkdir $1
		copy_files $@
	fi
fi

