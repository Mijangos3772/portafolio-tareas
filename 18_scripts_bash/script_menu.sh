#!/bin/bash

while true
do
clear
echo "===== Menu Principal ======="
echo "1. Mensaje"
echo "2. Saludo"
echo "3. Sumar"
echo "4. par o impar"
echo "5. Tabla"
echo "6. Contar 1-10"
echo "7. Fecha"
echo "8. Usuarios conectados"
echo "9. Espacio en disco"
echo "10. Crear directorio"
echo "11. crear archivo"
echo "12. leer archivo"
echo "13. contar lineas"
echo "14. comparar numeros"
echo "15. Adiviniar numero"
echo "16. Procesos"
echo "17. Calculadora"
echo "18. Verificar archivo"
echo "0. Salir"
echo "=========================="

read -p "Elige una opcion: " opcion

case $opcion in
1) ./script1.sh;;
2) ./script2.sh;;
3) ./script3.sh;;
4) ./script4.sh;;
5) ./script5.sh;;
6) ./script6.sh;;
7) ./script7.sh;;
8) ./script8.sh;;
9) ./script9.sh;;
10) ./script10.sh;;
11) ./script11.sh;;
12) ./script12.sh;;
13) ./script13.sh;;
14) ./script14.sh;;
15) ./script15.sh;;
16) ./script16.sh;;
17) ./script17.sh;;
18) ./script18.sh;;
0) exit;;
*) echo "Opcion invalida";;
esac

read -p "Presione Enter para contunuar...."
done
