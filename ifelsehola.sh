#!/bin/bash

if [ ${1,,} = clara ]; then
	echo "Hola, Clara te estaba esperando"
elif [ ${1,,} = monica ]; then
	echo "No puedo recibirte"
else 
	echo "Qué haces aquí????"

fi

