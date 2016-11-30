#!/bin/bash
#This is a helpdesk menu - exercise 6 from Sander's video collection

# trap "echo 'cant do that from here'" INT

resetPWD(){
	echo "type in the user of the password to reset"
	read USERPWDRESET
	echo "sudo passwd $USERPWDRESET"
}

pingServer()
{
	echo "type in a host to check for ping"
	read HOSTTOCHECK
	ping -c 1 $HOSTTOCHECK
}

select OPT in 'Reset Password' 'Show Disk Usage' 'Ping a host' 'Log out'
do
	case $REPLY in
		1) TASK=resetPWD;;
		2) TASK="df -h" ;;
		3) TASK=pingServer;;
		4) TASK="echo logoff";;
		*) echo "Invalid Option $OPT . use a different option" ;;
	esac
	if [ -n "$TASK" ]
	then
		clear
		$TASK
#		break
	else
		echo INVALID CHOICE && exit 3
	fi
done
