#!/bin/bash
#./excersize1.sh
#Backs up messages file and deletes it afterwards
cp /var/log/messages /var/log/messages.old
rm -f /var/log/messages
exit 1
