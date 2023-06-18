#!/bin/bash

function Hello() {
    echo "Hello World"
}

for i in {0..5}
do
    Hello
done

function sayHello() {
    echo "Hello, my name is $1."
}

users=( "diego" "barbie" "gonza" "tigri" "luisMiguel" "boyle" )

for name in ${users[@]}
do
    sayHello $name
done

function nameAges() {
    echo "Hello, my name is $1 and I'm $2 years old."
}

years=( 17 43 39 5 3 3 )

lenght=${#users[@]}

for (( i=0; i<$lenght; i++ ))
do
    el1=${users[i]}
    el2=${years[i]}

    nameAges $el1 $el2
done

# al crear una varible dentro de una function se crea una variable global

function sayHola() {
    message="Hola!"
    echo $message
}
sayHola

message="Hello!"
echo $message

sayHola

# local variable
function sayHola() {
    local message="Hola!"
    echo $message
}
sayHola

message="Hi!"
echo $message

sayHola