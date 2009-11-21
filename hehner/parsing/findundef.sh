#!/bin/bash
file="$1"

if [ -z "$file" ]; then

	echo
	echo '	usage:  findundef.sh file'
	echo
	echo	

else
	prefix="[JPSQG]"
	# prefixes='J' 'P' 'S' 'Q' 'G'
	thm="^\(+[[:alpha:]]\)"
	thmref="\(+[[:digit:]]\)"
	defintro='^(*	)'
	defend='([[:alpha:]])'
	defnum='a'
	for p in 'J' 'P' 'S' 'Q' 'G'
	do
		grep -E -o "$p$defend:" "$file"
	done
	grep -E -o $thm "$file"

fi