#!/bin/bash
#rm -rf $1 #dla testow
#z1
mkdir -p $1
#z2
grep ^$(whoami) /etc/passwd
#z3
cat /etc/passwd | cut -d ":" -f 1,6,7 | sort -k 1 -r > $1/F1.csv
#z4
cat /etc/passwd | cut -d ":" -f 7 | rev | sort | uniq | rev > $1/F2.csv
#z5
cat /etc/passwd | cut -d ":" -f 1 | tr "[:lower:]" "[:upper:]" > $1/F3.txt
#z6
grep -C 4 ^'root' /etc/passwd > $1/F4.txt
#z7
diff -y /etc/passwd $1/F4.txt > $1/differences.txt
