#!/usr/bin/env bash
# czy do funkcji mamy przekazac wszystkie parametry?

get_result(){
	denominator=$(($1+$2))
	if [[ $denominator -eq 0 ]]; then
		echo "Mianownik nie moze byc 0"
		exit -1
	else
		result=$[($1-$2)/$denominator]
		echo "$result"
	fi
}

recursive_fib(){
	if [[ $# -eq 1 ]]; then
		if (( $1 <= 0 )); then
			echo 0
		elif [[ $1 -eq 1 ]]; then
			echo 1
		else
			echo $(( $(recursive_fib $(($1 - 1)) ) + $(recursive_fib $(($1 - 2)) ) )) 
		fi
	else
		echo "Podano nie wlasciwa liczbe arg"
		exit -1
	fi
}

fib(){
	tmp=0
	f1=0
	f2=0
	for (( i = 0; i <= "$1"; i++ )); do
		if [[ "$i" == 0 ]]; then
			f1=0
		elif [[ "$i" == 1 ]]; then
			f1=1
		else
			tmp=$(($f1+$f2))
			f2="$f1"
			f1="$tmp"
		fi
	done

	echo "Non recursive fib($1) = $f1"
}

min_max(){
	min="$1"
	max="$2"
	for item in "$@"; do
		if (( ! $(echo "${item} > ${min}" | bc -l) )); then
			min="$item"
		elif (( ! $(echo "${item} < ${max}" | bc -l) )); then
			max="$item"
		fi
	done
	echo "Max() = $max  Min() = $min"
}

#get_result 2 3 #$@

#recursive_fib "$@"

#fib "$@"

min_max $@

#dziala ale sie jebie edit: juz nie
#return $(recursive_fib $[$1-1])+$(recursive_fib $[$1-2])