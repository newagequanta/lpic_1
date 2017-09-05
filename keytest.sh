#!/bin/bash

TRIES=0

while [[ $TRIES -lt 3 ]]; do
	echo "Enter some keys"
	read KEYS

	echo $KEYS

	echo "Do you see the keys as you typed them? (y or n)"
	read RESPONSE
	if [[ $RESPONSE = "y" ]]; then
		echo "Test successful!"
		exit 0
	else
		echo "Try again"
		TRIES=$(( $TRIES+1 ))
	fi
done

echo "Please take you keyboard in for servicing"
