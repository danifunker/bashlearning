echo "This script is beginning..."
echo "Please type in a directory to look for"
#read DIRTOLOOK
DIRTOLOOK="/etc"
COUNTER=0

echo "Counter is $COUNTER, Directory is $DIRTOLOOK"
if [ -d $DIRTOLOOK ]
        then
        echo "DirToLooks is $DIRTOLOOK"
        for i in {0..4}
        do
                COUNTER=$((COUNTER+1))
                echo $COUNTER
        done
else
        echo "$DIRTOLOOK does not exist"
        exit 1
fi
exit 0

