#!/bin/bash

#Recieve a FQ directory from the user
#If the directory exists, display a long listing
#If it does not, echo a custom message

if [[ -d $1 ]]; then
    ls -al $1
else
    echo "Sorry, $1 is not a directory on this system"
fi
