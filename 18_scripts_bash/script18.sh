#!/bin/bash
read -p "Nombre del archivo: " file

if [ -f $file ]; then
echo "El archivo existe"
else
echo "No existe"
fi

