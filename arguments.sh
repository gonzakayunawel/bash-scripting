#!/bin/bash

# Leemos los argumentos indicando su índice (se puede cambiar el orden)

echo $0 $1 $2 $3 $4
echo "Hello World"

# Leemos todos los argumentos (exceptuando el 0 que es script mismo)

echo $@
echo "Hello World"

#Contar elementos

echo $#
echo "Hello World"

# Ejemplo con argumentos transformados en lista

args=("$@")

echo "Resultado: ${args[0]} - ${args[1]} - ${args[2]}"