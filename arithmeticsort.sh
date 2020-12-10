#!/usr/bin/bash -x

usr/bin/bash -x
echo " welcome to compute and sort arithematic numbers "

declare -A dict

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter a Third Number : " c

dict[1]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a+b*c} END {print compute}'`
dict[2]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a*b+c} END {print compute}'`
dict[3]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=c+a/b} END {print compute}'`
dict[4]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a%b+c} END {print compute}'`
