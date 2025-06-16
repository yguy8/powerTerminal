#!/bin/bash

if [ ${1,,} = root ]; then
	echo "Hola, jefe te estaba esperando"
elif [ ${1,,} != root ]; then
	echo "No puedo recibirte"
else 
	echo "Qué haces aquí????"

fi

