#!/bin/bash
#Zadania 2.0
#rm -rf $1 #dla testow
#1
mkdir -p $1
#2
mkdir -p $1/D1 $1/D2 $1/D3 $1/D4
touch $1/D2/F1.txt $1/D3/F1.txt $1/D4/F1.txt
#3
ln -s /etc/passwd $1/D1
#4
readlink $1/D1/passwd
#5
ln $1/D3/F1.txt $1/D2/F2.txt
#6
chmod 600 $1/D3/F1.txt
#7
groupadd student
chgrp student $1/D2/F2.txt
#8
chown :student $1/D3
#9
chmod -x $1/D3
#10
chmod -w $1/D2
#11
chmod -r $1/D4
#12
chmod +t $1/D4
#13
touch $1/D1/scr1.sh
chmod u+x,g+x,o-x $1/D1/scr1.sh
#14
chmod u+s,g+s $1/D1/scr1.sh
