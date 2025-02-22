#!/bin/bash

script1="/home/cesar/programas-3301/ejercicio2.sh"
script2="/home/cesar/programas-3301/ejercicio3.sh"
1
menu() {

    echo "Selecciona una opcion:"
    echo "1- crear..."
    echo "2- ordenar archivos"
    echo "3- salir "
}

while true; do 
    menu
    read -p "ingresa su opcion..." opcion

    case $opcion in 

        1)
            echo "ejecutando script 1..."
            bash "$script1"  
            ;;

        2) 
            echo "ejecutando script 2..."
            bash "$script2"
            ;;

        3) 
            echo "saliendo..."
            exit 0
            ;;

        *)
            echo "opcion no valida, intenta de nuevo wueon"
            ;;
    esac
done

