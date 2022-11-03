#!/bin/bash
DataList="1,2,4"
Field_Separator=$IFS

# set comma as internal field separator for the string list
IFS=,
for val in $DataList;
do
template=`cat "$1" | sed "s/@multi-pod/p$val/g ; s/@threading/$val/g" `
echo "$template" | kubectl apply -f -
#kubectl logs  p$val>> app.log## echo $template
# sleep 150
kubectl logs --tail=1 p$val>> p$val.log
done

IFS=$Field_Separator

