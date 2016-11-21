#!/bin/bash
#for each folder...
indexname="TxtGoesHere"
filnum=0
for fld in [0-9][0-9].*; do
	cd "$fld"
	#for each file
	for f in [0-9][0-9].*.mp4; do
		mv "$f" "$indexname-part$(printf "%03d\n" $filnum)-$f"
		export filnum
		filnum=$(($filnum + 1))
	done
	cd ..
done
