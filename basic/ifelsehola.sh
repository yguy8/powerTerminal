#!/bin/bash

if [ ${1,,} = clara ]; then
	echo "Hola, Clara te estaba esperando"
elif [ ${1,,} = monica ]; then
	echo "No puedo recibirte"
else 
	echo "Qué haces aquí????"

fi

#!/bin/bash

#echo "Ingresa tu nombre en minúsculas"
#read nombre
#if [ $nombre = clara ]; then
#       echo "Hola, Clara te estaba esperando"
#else
#        echo "No puedo recibirte"

#fi
