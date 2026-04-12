#!/bin/bash

echo "Crear arbol de directorios"
read -p "Nombre del directorio raiz: "

mkdir -p "$./raiz"/{dir1,dir2,dir3}

echo "Estructura creada:"
tree "$./raiz"
