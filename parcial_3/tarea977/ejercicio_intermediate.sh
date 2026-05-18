#!/bin/bash

echo "--- Ejercicio intermediate: verificacion de archivo ---"

read -p "introduce la ruta del archivo o directorio a verificar: " ruta_archivo

if [ -e "$ruta_archivo" ]; then
echo "El archivo/ruta '$ruta_archivo' existe." 
 if [ -f "$ruta_archivo" ]; then
echo "Tipo de elemento: Archivo regular."
elif [ -d "$ruta_archivo" ]; then
echo "Tipo de elemento: Directorio."
 fi

ls -l "$ruta_archivo"
else
echo "Error: el archivo o directorio '$ruta_archivo' no existe."
fi
