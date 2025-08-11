#!/bin/bash

# Crea un archivo Markdown y muestra un menú de opciones.
# Permite al usuario seleccionar opciones para escribir títulos, citas y código.
echo "Bienvenido/a al creador de archivos Markdown"
echo "Ingrese el contenido que quiere en el archivo"
echo "Este es el menú de opciones de escritura que tiene"

#Sección de funciones
# Función para agregar un título
agregar_titulo() {
  echo "Ingrese el texto del título:"
  read titulo
  echo "# $titulo" >> "$archivo_md"
}

# Función para agregar un subtítulo
agregar_subtitulo() {
  echo "Ingrese el texto del subtítulo:"
  read subtitulo
  echo "## $subtitulo" >> "$archivo_md"
}

# Función para agregar una cita
agregar_cita() {
  echo "Ingrese el texto de la cita:"
  read cita
  echo "> $cita" >> "$archivo_md"
}

# Función para agregar un bloque de código
agregar_bloque_codigo() {
  echo "Ingrese el código (presione Enter dos veces para finalizar):"
  while IFS= read -r linea; do
    if [[ -z "$linea" ]]; then
      break
    fi
    echo "    $linea" >> "$archivo_md"
  done
}


# Solicitar el nombre del archivo
nombrar_archivo(){
  echo "Ingrese el nombre del archivo Markdown (sin extensión):"
  read nombre_archivo
  archivo_md="$nombre_archivo.md"
  # Crear el archivo
  touch "$archivo_md"
  echo "Archivo $archivo_md creado exitosamente."
  sleep 2 
  echo "Guardado"
}

ayuda(){
  echo "MENÚ PRINCIPAL"
  echo "-----------------------------------"
  echo 
  echo "1- Añadir título"
  echo "2- Añadir subtítulo"
  echo "3- Agregar cita"
  echo "4- Agregar bloque de código"
  echo "5- Finalizar para de dejar de escribir"
  echo "6- Escriba 'Ayuda' para mostrar opciones"
  echo

  read -p "Introduzca una opción: " opcion
}

ayuda 

if [ $opcion -eq 1 ]; then
        agregar_titulo
elif [ $opcion -eq 2 ]; then
        agregar_subtitulo
elif [ $opcion -eq 3 ]; then
        agregar_cita
elif [ $opcion -eq 4 ]; then
        agregar_bloque_codigo
elif [ $opcion -eq 5 ]; then
        nombrar_archivo
elif [ $opción -eq 6 ]; then
        ayuda
fi



