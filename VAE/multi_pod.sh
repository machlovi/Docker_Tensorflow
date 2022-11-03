#!/bin/bash
DataList="1,2,3,4,5"
Field_Separator=$IFS

# set comma as internal field separator for the string list
IFS=,
for val in $DataList;
do
template=`cat "$1" | sed "s/@5in1/5in1_$val/g" `
echo "$template" | kubectl apply -f -

done

IFS=$Field_Separator

