#!/bin/bash

echo "--- Ejercicio difficult: verificador de palindromos ---"

read -p "introduce una palabra o frase: " entrada

limpio=$(echo "$entrada" | tr -d '[:space:]' | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]')
reverso=$(echo "$limpio" | rev)

if [ "$limpio" == "$reverso" ] && [ -n "$limpio" ]; then
echo "Exelente! '$entrada' es un palindromo."
else
echo "Lo siento, '$entrada' no es un palindromo."
fi
