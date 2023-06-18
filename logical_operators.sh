#! /bin/bash
: 'OPERADORES LOGICOS'

# Operador AND

echo "Introduce tu edad: "
read age

if  [[ $age -gt 18 && $age -lt 40 ]] 
# Sintáxis también válida: [ $age -gt 18 ] && [ $age -lt 40 ]
then
    echo "Tu edad es $age años."
    echo "Edad válida."
else
    echo "Tu edad es $age años."
    echo "Edad no válida."
fi

# Operador OR

echo "Introduce tu edad: "
read age

if  [[ $age -lt 18 || $age -ge 65 ]]
# Sintáxis también válida: [[ $age -lt 18 || $age -ge 65 ]]
then
    echo "Tu edad es $age años."
    echo "Edad válida."
else
    echo "Tu edad es $age años."
    echo "Edad no válida."
fi







# if (( $age > 18 ))
# then
#     echo "Tu edad es $age años."
#     echo "Eres un adulto."
# elif (( $age == 17  ))
# then
#     echo "Tu edad es $age años."
#     echo "Casi eres un adulto."
# else
#     echo "Tu edad es $age años."
#     echo "Eres un menor."
# fi