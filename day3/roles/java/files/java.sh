#!/bin/bash

arr=()

for line in $(update-alternatives --list java)
do 
    arr+=("$line")
done

len=${#arr[@]}

printf "{\n"
printf "  \"installed_java\": [\n" 
for (( i=0; i<len; i+=1 ))
do
    printf "    \"${arr[i]}\""
    if [ $i -lt $((len-1)) ] ; then
        printf ",\n"
    fi
done
printf "\n  ]\n" 
printf "}"
echo

