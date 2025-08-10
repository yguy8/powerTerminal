#!/bin/bash

# Crea un archivo Markdown y muestra un menú de opciones.
# Permite al usuario seleccionar opciones para escribir títulos, citas y código.

# Función para mostrar el menú
mostrar_menu() {
  echo "Seleccione una opción:"
  echo "1. Título (H1)"
  echo "2. Subtítulo (H2)"
  echo "3. Cita"
  echo "4. Bloque de código"
  echo "5. Salir"
}

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
echo "Ingrese el nombre del archivo Markdown (sin extensión):"
read nombre_archivo
archivo_md="$nombre_archivo.md"

# Crear el archivo
touch "$archivo_md"

# Bucle principal del menú, lo muestra dos veces
contador= 1;
while [ $contador -le 2 ]; do
  ((contador--)) > /dev/null #no mostrar la resta del contador
  mostrar_menu
  read opcion
  case $opcion in
    1) agregar_titulo ;;
    2) agregar_subtitulo ;;
    3) agregar_cita ;;
    4) agregar_bloque_codigo ;;
    5) break ;;
    *) echo "Opción inválida" ;;
  esac
  contador=$((contador + 1)) 
done

echo "Archivo $archivo_md creado exitosamente."
echo "guardando..."

waitForSave=2
while [ $waitForSave -ge 0 ]; do
  # Realiza la resta pero no la muestra
  ((waitForSave--)) > /dev/null
  echo "Guardado con éxito :)"
done

