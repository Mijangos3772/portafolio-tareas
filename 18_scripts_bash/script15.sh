#!/bin/bash
num=5
read -p "Adivina el numero (1-10): " intento

if [ $intento -eq $num ]; then
echo "correcto!"
else
echo "incorrecto"
fi
 

