#!/bin/bash

while true; do

clear
echo "===== MENU PRINCIPAL ====="
echo "1) crear arbol de directorios"
echo "2) hola mundo"
echo "3) saludo con variables"
echo "4) salir"
echo "=========================="
echo "Elige una opcion:"
read opcion

case $opcion in
1)
./arbol.sh
read -p "presiona enter para continuar..."
;;
2)
./hola.sh
read -p "presiona enter para continuar..."
;;
3)
./saludo.sh
read -p "presiona enter para continuar..."
;;
4)
echo "saliendo del programa..."
exit 0
;;
*)
echo "opcion no valida"
sleep 2
;;
esac
done
