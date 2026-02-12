#!/bin/bash

echo "ingresa el nombre del directorio principal:"
read nombre

mkdir -p "$nombre"/docs
mkdir -p "$nombre"/images
mkdir -p "$nombre"/backup

echo "Arbol de directorios creado:"

