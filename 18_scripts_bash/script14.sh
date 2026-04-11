#!/bin/bash
read -p "Numero 1: " n1
read -p "Numero 2: " n2

if [ $n1 -gt $n2 ]; then
echo "El mayor es $n1"
elif [ $n1 -lt $n2]; then
echo "El mayor es $n2"
else
echo "Son iguales"
fi
