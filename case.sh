#!/bin/bash
: 'CASE'
# SOLO FUNCIONA CON VALORES NO NUMÉRICOS O ARITMÉTICOS

echo "Escoge entre el valor 1 o 2"
read valor

case $valor in
    1) 
        echo "Tu escogiste el valor 1."
    ;;
    2)
        echo "Tu escogiste el valor 2."
    ;;
    *)
        echo "Valor incorrecto."
    ;;
esac

# ChatGPT generated this example

read -p "Enter a fruit: " fruit

case $fruit in
    apple)
        echo "You chose an apple!"
        ;;
    banana)
        echo "You chose a banana!"
        ;;
    orange|lemon)
        echo "You chose an orange or a lemon!"
        ;;
    *)
        echo "You chose something else."
        ;;
esac
