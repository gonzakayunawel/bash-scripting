#! /bin/bash

: 'OPERADORES Y CONDICIONALES'

# operador IGUAL A
num_1=10

if [ $num_1 -eq 10 ]
then
    echo "El número $num_1 es igual a 10."
fi

# Usando parentesis

if (( $num_1 == 10 ))
then
    echo "El número $num_1 es igual a 10."
fi

# operador MAYOR o igual
num_2=20

if [ $num_2 -ge 10 ]
then
    echo "El número $num_2 es mayor que 10."
fi

# Usando parentesis

num_2=20

if (( $num_2 >= 10 ))
then
    echo "El número $num_2 es mayor que 10."
fi


# operador MENOR o igual
num_3=5

if [ $num_3 -le 10 ]
then
    echo "El número $num_3 es menor que 10."
fi

# Usando parentesis

num_3=5

if (( $num_3 <= 10 ))
then
    echo "El número $num_3 es menor que 10."
fi

# Else

num_4=6

if [ $num_4 -eq 5 ]
then
    echo "El número $num_4 es igual a 5."
else
    echo "El número no es 5. Su valor es igual a $num_4."
fi

# Con parentesis

num_5=6

if (( $num_5 == 5 ))
then
    echo "El número $num_4 es igual a 5."
else
    echo "El número no es 5. Su valor es igual a $num_4."
fi

# Mas de una condicion

echo "Introduce tu edad: "
read age


if (( $age > 18 ))
then
    echo "Tu edad es $age años."
    echo "Eres un adulto."
elif (( $age == 17  ))
then
    echo "Tu edad es $age años."
    echo "Casi eres un adulto."
else
    echo "Tu edad es $age años."
    echo "Eres un menor."
fi