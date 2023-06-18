#!/bin/bash

echo "Enter your password"
read input1

echo "Reapeat your password"
read input2

if [ $input1 == $input2 ]
then
    echo "Password accepted"
else
    echo "Password wrong"
fi