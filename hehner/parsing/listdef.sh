#!/bin/bash
file="$FILE"

if [ -z "$file" ]; then

	echo
	echo '	usage:  listdef.sh file'
	echo
	echo

else
	
	prefix="[JPSQG]"
	# prefixes='J' 'P' 'S' 'Q' 'G'
	thmref="\(+[[:digit:]]\)"
	defintro="^(*	)"
	name="(+[[:digit:]])"
	thm="$defintro\(([[:digit:]]+|[[:alpha:]])\)"
	linedef="($prefix)(([[:digit:]]+)|[[:alpha:]]):"
#	cmtdef="\{*[^\{]($prefix)((+[[:digit:]])|[[:alpha:]]):*[^\}]\}"
	hintdef="{.*($prefix)((+[[:digit:]])|[[:alpha:]]):.*}"
	def="($cmtdef)|($linedef)"
	any="($thm)|($def)"
	grep -E -o -e "$hintdef" "$file" | sed s/"{( *)\([^ ](.*)[^ ]\)( *).}"/\1/
	
fi