#!/bin/bash 

echo "Este programa es para crear archivos de texto"
echo "Ponle un nombre a tu archivo"
read nombre
nwfl=$(touch $nombre.txt)

 echo "Escribe el contenido de tu archivo"
 read contenido
 echo $contenido > $nombre.txt
