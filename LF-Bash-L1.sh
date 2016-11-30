#!/bin/bash
ls /notaRealfile > /dev/null 2>&1
echo "Return code of the first command was $?"
touch "test.txt" > /dev/null 2>&1
echo "Return code of the touch command was $?"
