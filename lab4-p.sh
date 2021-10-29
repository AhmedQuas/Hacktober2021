#!/bin/bash
rm -rf $2 #dla testow

mkdir -p $2
#1
echo "Zadanie 1"
find $1 -type f -name "*.csv" -o -name "*.CSV"  #type d,f
#2
echo "Zadanie 2"
find $1 -type d -name [A,B,c]*
#3 
echo "Zadanie 3"
find $1 -type f -perm u=r+x #-perm u=rx
#4
echo "Zadanie 4"
find $1 -type f -empty
#5
echo "Zadanie 5"
find $1 -type l
#6
echo "Zadanie 6"
find $1 -type f -groups users -size +100k \( -name "*.csv" -o -name "*.txt" \)
#7
echo "Zadanie 7"
find $1 -type d  -perm u=x \( -perm /u=s -o -perm /g=s \)
#8
echo "Zadanie 8"
find $1 -type d -perm o=t
#9
echo "Zadanie 9"
find $1 -type f -mtime 0
#10
echo "Zadanie 10"
find /dev -type b
#11
echo "Zadanie 11"
find $1 \( -type f -o -type d \) -empty #-exec rm -fr {} \; #escape srednika
#12
echo "Zadanie 12"
find $1 -type f -name "*.sh" #-exec mv {} $2 \;
#13
echo "Zadanie 13"
find $1 -type d -perm /a=r #-exec cp -r {} ./$2/ \;
