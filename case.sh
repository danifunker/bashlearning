#!/bin/bash
case $1 in 
	TEST)
	echo "This was a test"
	;;
	real|production)
	echo "This is the real thing"
	;;
	*)
	echo "Not what we're looking for... try again"
	;;
esac
