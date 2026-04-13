#!/bin/bash
read -p "ingresa un numero: " n
if [ $((n%2)) -eq 0 ]; then
    echo "Es par"
else
    echo "Es impar"
fi
