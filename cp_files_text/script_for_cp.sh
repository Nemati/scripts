#!/bin/bash

if [ -z "$1" ]; then
    echo -e "Usage: $(basename $0) FILE\n"
		exit 1
fi

if [ ! -e "$1" ]; then
	    echo -e "$1: File doesn't exist.\n"
	    exit 1
fi

while read -r line; do
	    [ -n "$line" ] && mkdir -- data/"$line"
	    [ -n "$line" ] && cp -- "$line"/*.vector data/"$line"/
done < "$1"
