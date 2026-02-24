#!/bin/bash
read -p "Numero 1: " n1
read -p "Numero 2: " n2
read -p "Operacion (+ - * /): " op

case $op in
+) echo $((n1+n2));;
-) echo $((n1-n2));;
\*) echo $((n1*n2));;
/) echo $((n1/n2));;
*) echo "Operacion invalida";;
esac
