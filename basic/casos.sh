#!/bin/bash 

case ${1,,} in 
	root | administrador)
		echo "Hola de nuevo"
		;;
	help)
		echo "Ingresa un nombre"
		;;
	*)
		echo "Hola, no se quien eres"
esac 
//es para ver quien es el administador y saludarlo según lo que conteste
