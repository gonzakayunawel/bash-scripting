#!/bin/bash

names=( "john" "mark" "james" "david" "rick" "freddy" )
echo "Los nombres son: ${names[*]}"
echo "Los nombres son: ${names[@]}"

echo "first item: ${names[0]}"
echo "third item: ${names[2]}"

echo "Los índices son: ${!names[@]}"
echo "El total de items es: ${#names[@]}"

# una manera de traer el último elemento es usar la longitud del arreglo menos 1

echo "El último elemento es: ${names[${#names[@]}-1]}"

for name in ${names[@]}
do
    echo "My name is : $name"
done

# delete an item
# unset names[1]
# echo "Los nombres son: ${names[@]}"

# append en el último

# names[${#names[@]}]="bob"
# echo "Los nombres son: ${names[@]}"

# another sintaxis
# names+=("bob")
# names+=("mary ann")
# echo "Los nombres son: ${names[@]}"

# to replace an element

names[2]="barbie"
echo "Los nombres son: ${names[@]}"

# to insert a new element we need to shift the elements using a for loop
my_array=("element1" "element2" "element3")
index=2
new_element="new_element"

# Shift elements
for (( i=${#my_array[@]}; i>$index; i-- ))
do
    my_array[i]=${my_array[i-1]}
done

# Insert new element
my_array[$index]=$new_element

# Print the updated array
echo "${my_array[@]}"
