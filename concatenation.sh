#!/bin/bash

echo "Enter a name"
read name

# echo "Write an adjective"
# read adjective

# result="$name is $adjective"
# echo $result

# convertir a minuscula
echo ${name,,}

# convertir a mayuscula
echo ${name^^}

# convierte las vocales mayusculas a minusculas
echo ${name,,[AEIOU]}

# convierte las vocales minusculas a mayusculas
echo ${name^^[aeiou]}