#!/bin/bash

# ls 1> archivo.txt 2> error.txt

# Guardar el stdout en archivo y stderr en elmismo
# 1 representa el primer parámetro del comando.
# ente caso: >archivo.txt

# ls -123 >archivo.txt 2>&1

# Usando otra sintaxis

ls -a &> file.txt