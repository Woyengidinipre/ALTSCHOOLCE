#!/bin/bash


if [ -z "$1" ]; then
	echo "Usage: ./count_files.sh <absolute-path>"
	exit 1
fi

if [ -d "$1" ];then
	count=$(find "$1" -maxdepth 1 -type f | wc -1)
	echo "There are $count files(s) in '$1'"
else
	echo "'$1' is not a valid directory"
f1
