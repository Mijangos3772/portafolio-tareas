#!/bin/bash


while true; do
echo -e "\n==============================================="
echo "               MENU TAREA #977 (ABS GUIDE)     "
echo "==============================================="
echo "1. ejecutar nivel easy (variables and Echo)"
echo "2. ejecutar nivel intermediate (file check)"
echo "3. ejecutar nivel difficult (palindrome)"
echo "4. salir"
echo "----------------------------------------"
read -p "Selecciona una opcion [1-4]: " opcion

case $opcion in

1) [ -f "./ejercicio_easy.sh" ] && ./ejercicio_easy.sh || echo "error: ejercicio_easy.sh no encontrado."
;;

2) [ -f "./ejercicio_intermediate.sh" ] && ./ejercicio_intermediate.sh || echo "error: ejercicio_intermediate.sh no encontrado."
;;

3) [ -f "./ejercicio_difficult.sh" ] && ./ejercicio_difficult.sh || echo "error: ejercicio_difficult.sh no encontrado."
;;

4) echo "saliendo del programa maestro. byeeee"
break
;;

*) 
echo "opcion no valida. porfa, selecciona del 1 al 4."
;;
esac
done
