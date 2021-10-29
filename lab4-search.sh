#!/bin/bash
#1
mkdir -p $2
#2
find $1 -type f -name "*.txt"
#3
find $1 -type d -name "[A,a,B,b]*"
#4
find $1 -type f -name "*.sh" -perm /a=x
#5
find $1 -type f -empty -user student
#6
find $1 -type l
#7
find $1 -type f -group student  -size -1M
#8
find $1 -type f \( -perm /u=s -o -perm /g=s \)
#9
find $1 -type d -perm -1000
#10
find $1 -type f -mmin -60
#11
find /dev \( -type b -o -type c \)
#12
find $1 -type d -empty -exec rm -rf {} \;
#13
find $1 -type f -size +10M -exec mv {} $2 \;
#14
find $1 -type d -name "Z*" -exec cp -r {} $2 \;