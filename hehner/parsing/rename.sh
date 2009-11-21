#! /bin/bash
# file="infix tree - development.rtf"
# target='A'
# prefix='J'
# postfix=''
# first=3
# last=6
empty=''
function print_usage {
	echo
	echo '	usage:  '$usage
	echo
	echo	
}

if [ -z "$file" ]; then
	print_usage
	
else

if [ -z "$target" ]; then
	print_usage
	
else

if [ -z "$prefix" ]; then
	print_usage
	
else

if [ -z "$first" ]; then
	print_usage
	
else

if [ -z "$last" ]; then
	print_usage 

else

swap='Z'
outfile=$file".out"
swapfile='swap.out'
cp "$file" "$outfile"
ex=1
i=$first
until [ $[$last+1] -lt $i ]; do
		# Rename a predicate
	cp "$outfile" "$swapfile"
	sed s/$prefix$i$postfix/$prefix$swap$postfix/ "$swapfile" | sed s/$prefix$target$postfix/$prefix$i$postfix/ > "$outfile"
		# Prepare next
	echo renamed $prefix$i to $prefix$swap
	echo renamed $prefix$target to $prefix$i
	t=$swap
	swap=$target
	target=$t
	i=$[$i+1]
done
rm $swapfile
diff "$file" "$outfile" | less

fi
fi
fi
fi
fi