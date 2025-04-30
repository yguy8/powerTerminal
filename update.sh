#!/bin/bash

read -p "Escribe 'actualizar' si quieres actualizar el sistema: " decision

if [ "$decision" = "actualizar" ]; then
        apt update
        apt upgrade -y
        echo "actualización completa"
else
        echo "No se reconoce instrucción"
        exit
fi
