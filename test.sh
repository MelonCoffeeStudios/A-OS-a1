#!/bin/bash

# Take input parameters in
while [[ $# -gt 1 ]]
	do
	key="$1"
	case $key in
		-r|--read )
			echo "-r = $2"
			shift
		;;
		-f|--file)
			echo "-f = $2"
			shift
		;;
		*)
			echo "idk man" 
		;; 
	esac
	shift

done
