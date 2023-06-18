#!/bin/bash

for (( i=0; i < 10; i++ ))
do
    if [ $i -gt 5 ]
    then
        echo "El ciclo se rompió"
        break
    fi
    echo $i
done

echo "Indica el final del ciclo"
read break_cicle

for (( i=0; i < 10; i++ ))
do
    if [[ $i -eq $break_cicle || $i -eq 8 ]]
    then
        echo "El ciclo se rompió"
        break
    fi
    echo $i
done