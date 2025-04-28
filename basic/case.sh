#!/bin/bash

read -p "Introduce una palabra o número: " palabra
  
case $palabra in 
	[ABC])
		echo "es una palabra A, B o C"
		;;
	[0-9])
		echo "es un número entre 0 y 9"
		;;
	*a)
		echo "es una palabra terminada en a"
		;;
	x|X)
		echo "es una x, mayuscula o miniscula"
		;;
	*)
		echo "es otro caracter"
		;
		;;
	*)
		echo "es otro caracter"
		;;
