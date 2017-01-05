#!/bin/bash
rflag=
rflagval=
fflag=
fflagval=

# Take input parameters in
while [[ $# -gt 1 ]]
	do
	key="$1"
	case $key in
		-r)
			echo "-r = $2"
			rflag=1
			rflagval=$2
			shift
		;;
		-f)
			echo "-f = $2"
			fflag=1
			fflagval=$2
			shift
		;;
		*)
			echo "idk man, somethings not right" 
		;; 
	esac
	shift

done 

if [ ! -z "$rflag" ];
then
	set -e
	make
	./mywc < bant.txt
fi
if [ ! -z "$fflag" ];
then
	cat $fflagval
fi 
