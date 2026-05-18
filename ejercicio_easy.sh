#!/bin/bash

echo "--- Ejercicio easy: Variables y Echo ---"

read -p "introduce tu nombre: " nombre
read -p "introduce tu edad: " edad
read -p "introduce tu carrera: " carrera

saludo="Hola $nombre, tienes $edad, y estudias $carrera que bien."
echo "$saludo"
echo "script completado con exito"

