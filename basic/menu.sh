#!/bin/bash 

echo "MENÚ PRINCIPAL"
echo "-----------------------------------"
echo 
echo "1- Visualiza la fecha de hoy"
echo "2- Número de usuaarios del sistema"
echo "3- Tiempo de funcionamiento"
echo "4- Salir"
echo 

read -p "Introduzca una opción: " opcion

if [ $opcion -eq 4 ]
then
        exit
elif [ $opcion -eq 1 ]
then
        date
elif [ $opcion -eq 2 ]
then
        cat /etc/passwd | wc -1
else
"menu.sh" 25L, 412C                                           1,1      Comienzo
