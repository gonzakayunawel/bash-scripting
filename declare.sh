#!/bin/bash
# Indicar si una variable es constante o de solo lectura
# Indicar si una variable es de un tipo especifico

# La opcion -r transforma el archivo en solo lectura
declare -r pwdfile=/etc/passwd
echo $pwdfile