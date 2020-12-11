#!/usr/bin/bash -x
echo " welcome to compute and sort arithematic numbers "

declare -A computeVals
declare -a valsInArr

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter a Third Number : " c

<<<<<<< HEAD
val1=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a+b*c} END {print compute}'`
val2=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a*b+c} END {print compute}'`
=======
arrayIndex=0

computeVals[1]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a+b*c} END {print compute}'`
computeVals[2]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a*b+c} END {print compute}'`
computeVals[3]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=c+a/b} END {print compute}'`
computeVals[4]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a%b+c} END {print compute}'`

for value in "${computeVals[@]}"
do
	valsInArr[$arrayIndex]=$value
	arrayIndex=$(( $arrayIndex + 1 ))
done


arrLength=${#valsInArr[@]}


for (( i = 0 ; i <= $(( $arrLength - 1 )) ; i++ ))
do
	for (( j = 0 ; j < $i ;j++ ))
	do
		if [ `echo | awk -v iVal="${valsInArr[$i]}" -v jVal="${valsInArr[$j]}" '{ if( iVal >= jVal ) print "True" ; else print "False" ;}'` == True ]
		then
		Temp=${valsInArr[$i]}
		valsInArr[$i]=${valsInArr[$j]}
		valsInArr[$j]=$Temp
		fi
	done
done

echo ${valsInArr[@]}
>>>>>>> main
