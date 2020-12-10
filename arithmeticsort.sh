#!/usr/bin/bash -x
echo " welcome to compute and sort arithematic numbers "

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter a Third Number : " c

val1=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a+b*c} END {print compute}'`
val2=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a*b+c} END {print compute}'`
val3=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=c+a/b} END {print compute}'`
val4=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a%b+c} END {print compute}'`
