#!/bin/bash
#z1
#1
mkdir $1
#2
cd $1
#3
mkdir -p Aa Bb Cc d1/d1.1 d2/d2.1 d3/d3.1 d3/d3.2

cd d1
touch t1.txt
cd ..

cd d2
cd d2.1
touch f1.csv
cd ..
cd ..

cd d3
cd d3.2
touch f2.csv
cd ..
cd ..
#4
mv ./d1/t1.txt ./d1/d1.1/t1.txt
#5
cp ./d2/d2.1/f1.csv ./d1/f1.csv
#6
mv ./Aa ./Aa1
#7
ls *[1,2]
#8
du --max-depth=1


