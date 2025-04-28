#!/bin/bash 
#para recibir la instrucción de que archivo quiere que lea
documento=$1
#ciclo while para la lectura e indica linea por linea el contenido y en que linea se ubica 
while read -r linea; do
        echo "Estamos en esta linea $linea"
done < "$documento"

