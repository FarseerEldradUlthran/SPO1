#!/bin/bash
file='MOCK_DATA.csv'
IFS=$'\n'
> testbash.txt
for var in $(cat $file)
do
a=$(( $a + 1 ))
IFS=$','
for var2 in $var
do
echo $a: $var2 | awk '/\....+\.gif\./' >> testbash.txt
done
done