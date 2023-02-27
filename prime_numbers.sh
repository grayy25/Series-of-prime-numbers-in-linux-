#!/bin/bash

echo "Enter limit upto which you want prime numbers:"
read n

arr=$(seq 2 1 $n)
echo "$arr"

echo "Prime numbers are:"
if [ $n -ge 3 ]
then
echo "2"
echo "3"
fi

if [ $n -lt 3 ]
then
echo "2"
fi

f=0
for el in $arr

do
#echo "$el is element"
j=2
#echo "$el checking"
while [ $j -le $((el/2)) ]
do
#echo "while loop up"
ans=$((el%j))
#echo "$el, % $j = $ans"
if [ $ans -ne 0 ]
then
#echo "if statement"
f=1
else
f=0
fi
j=$((j+1))
done
if [ $f -eq 1 ]
then
echo "$el"
fi
done



