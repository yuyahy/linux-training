#!/bin/bash

for path in "$@"
do
	if [ -f "$path" ]; then
		echo this is regular file
		head -n 5 < $path
	elif [ -d "$path" ]; then
		echo this is directory
		ls $path
	fi
done
