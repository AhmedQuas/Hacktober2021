#!/bin/bash

#1
grep -o -i -P "(?<=^|\s)0x[0-9abcdef]{1,}(?=$|\s)" $1

#2
grep -o -i -P "(?<=^|\s)[a-z0-9\.\,\;\:’]{1,}@([a-z0-9\-]{1,}\.){1,}[a-z0-9\-]{1,}(?=$|\s)" $1

#3
grep -o -P "(?<=^|\s)[+-]?[0-9]{0,}\.[0-9]{1,}(?=$|\s)" $1


#testy
#0xaa 0xab 0xac
#  0xAB 0xAf 0x11
#0xa
#0a
#+0xaa

#rybak@gmail.pl
# rybak@gmail.domena.pl
#ryb123ak@gmail.domena.pl  ryb20ak19@gmail.domena.pl
#ryb123ak@pl

#0.1 2.5  3.7555
#.1 .255
#+.1 -.255
#+2.5 -9.2 -a
#abb

