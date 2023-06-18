#!/bin/bash

# While Do

number=1

while [ $number -le 10 ]
do
    echo "El número es: $number"
    number=$(( number + 1 ))
done

# Until Do

number2=0

until [ $number2 -ge 10 ]
do
    echo "El número es: $number2"
    number2=$(( number2 + 1 ))
done

# Ciclo For

for i in 1 2 3 4 5
do 
    echo $i
done

# usando rangos {inicio..fin..paso}

for i in {0..100..2}
do 
    echo $i
done

# usando sintaxis de programacion

for (( i=0; i < 101; i+=20 ))
do
    echo $i
done