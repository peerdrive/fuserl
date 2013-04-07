#!/bin/bash

echo | cpp -v 2>&1 | while read line; do
	if [[ $line =~ ^/ ]]; then
		[ -d "$line"  ] && echo $line
	fi
done
