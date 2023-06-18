#!/bin/bash

echo "Crear archivos o directorios"
echo "Indica 1 para archivos o 2 para directorios"
read option

if [ $option -eq 1 ]
then
    echo "Indica el nombre del archivo a comprobar (recuerda incluir su extensión): "
    read file
    if [ -f $file ]
    then
        echo "El archivo $file ya existe."
        echo "Si deseas agregar contenido escribe 1."
        echo "Si deseas ver el contenido escribe 2."
        echo "Escribe 3 para salir."
        read option2
        if [ $option2 -eq 1 ]
        then
            echo "Escribe el contenido para agregar al archivo"
            read content
            echo $content >> $file
        elif [ $option2 -eq 2 ]
        then
            while IFS= read -r line
            do
                echo $line
            done < $file
        else
            echo "Has decidido salir."
        fi
    else
    set -x
        echo "El archivo $file no existe."
        touch $file
        echo "El archivo $file ha sido creado."
        echo ""
        echo "Si deseas agregar contenido escribe 1."
        echo "Escribe 2 para salir."
        read option3
        if [ option3 -le 1 ]
        then
            echo "Escribe el contenido para el archivo"
            read content
            echo $content >> $file
        else
            echo "Has decidido salir."
        fi
    set +x
    fi
elif [ $option -eq 2 ]
then
    echo "Indica el nombre de la carpeta a comprobar: "
    read folder

    if [ -d $folder ]
    then
        echo "El nombre de directorio $folder ya existe."
        echo "Este es su contenido"
        ls $folder
    else
        echo "El nombre de directorio $folder no existe."
        echo "Para crear el directorio escribe 1, o escribe 3 para salir."
        read option4
        if [ option -eq 1 ]
        then
            mkdir $folder
            echo "El directorio $folder ha sido creado."
        else
            echo "Has decidido salir."
        fi
    fi
else
    echo "Opción inválida."
    echo "Programa finalizado."
fi

