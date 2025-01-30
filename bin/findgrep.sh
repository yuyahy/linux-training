#!/bin/bash

usage()
{

	# obtain the file name of shell script
	local script_name=$(basename "$0")

	# Display the help text by Here Document
	cat << END
Usage: $script_name PATTERN [PATH] [NAME_PATTERN]
Find file in current directory recursively, and print lines which match PATTRN.

	PATH	find file in PATH directory, instead of current directory
	NAME_PATTERN	specify name pattern to find file

Examples:
	$script_name return
	$script_name return ~ '*,txt'
END
}

pattern=$1
directory=$2
name=$3

if [ -z "$directory" ]; then
	directory='.'
fi

if [ -z "$name" ]; then
	name='*'
fi

if [ ! -d "$directory" ]; then
	echo "$0: ${directory}: No such directory" 1>&2
	exit 2
fi

find "$directory" -type f -name "$name" | xargs grep -nH "$pattern"
