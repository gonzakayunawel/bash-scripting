#!/bin/bash

echo "Para descargar y guardar un archivo JSON escribe 1"
echo "Para descargar y guardar un archivo JPG escribe 2"
echo "Para salir escribe 3."
read option

case $option in
    1)
        echo "Ingresa tu url"
        read url
        curl $url > users.json
        ;;
    2)
        echo "Ingresa tu url"
        read url
        curl $url > image.jpg
        ;;
    *)
        echo "Has decidido salir."
        ;;
esac
