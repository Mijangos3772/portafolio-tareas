#!/bin/bash

echo"ingresa el nombre del directorio principal:"
read dir

mkdir -p $dir/{docs,images,backup}

echo"Arbol de directorios creado:"
tree $dir 2>/dev/null || ls -R $dir
