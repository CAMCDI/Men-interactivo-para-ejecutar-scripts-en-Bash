#!/bin/bash

DIRECTORIO="/home/cesar/programas-3301/scripts-ejercicio2"


for abc in {a..z}; do 
    mkdir -p "$DIRECTORIO/$abc"
done


for mov in {1..50}; do 
    for abc in {a..z}; do
        archivo="$DIRECTORIO/script-$mov-$abc.sh" 
        if [ -e "$archivo" ]; then
            mv "$archivo" "$DIRECTORIO/$abc/"
            echo "Moviendo $archivo a $DIRECTORIO/$abc"
        fi 
    done
done    

echo "Archivos movidos a las carpetas correspondientes."
