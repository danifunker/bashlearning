#!/bin/bash
function e() {
	#echo "This is param1 $1" 
	#echo "This is param2 $2"
	return $(echo "${1}${2}")
}

echo $(e $1 $2)
