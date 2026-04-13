#!/bin/bash

if [ $# -eq 0 ]; then
     echo "uso: $0 <archivo>"
     exit 1

fi

archivo="$1"

if [ ! -e "$archivo" ]; then
    echo "El archivo no existe"
    exit 1

fi

permisos=$(stat -c "%A" "$archivo")
usuario=$(stat -c "%U" "$archivo")
grupo=$(stat -c "%G" "$archivo")
tamano=$(stat -c "%s" "$archivo")
fecha=$(stat -c "%y" "$archivo" | cut -d ' ' -f1)

ruta=$(realpath "$archivo")

tipo_letras=${permisos:0:1}

case $tipo_letras in
    -) tipo="Archivo regular" ;;
    d) tipo="Directorio" ;;
    l) tipo="Enlace simbolico" ;;
    *) tipo="Otro" ;;
esac

interpretar_permisos() {
    local p=$1
    local resultado=""

    [[ ${p:0:1} == "r" ]] && resultado+="Lectura, "
    [[ ${p:1:1} == "w" ]] && resultado+="Escritura, "
    [[ ${p:2:1} == "x" ]] && resultado+="Ejecucion, "

    echo ${resultado%,}
}

user_perm=$(interpretar_permisos ${permisos:1:3})
group_perm=$(interpretar_permisos ${permisos:4:3})
other_perm=$(interpretar_permisos ${permisos:7:3})

anio=$(echo $fecha | cut -d '-' -f1)
mes=$(echo $fecha | cut -d '-' -f2)
dia=$(echo $fecha | cut -d '-' -f3)

case $mes in
    01) mes="enero" ;;
    02) mes="febrero" ;;
    03) mes="marzo" ;;
    04) mes="abril" ;;
    05) mes="mayo" ;;
    06) mes="junio" ;;
    07) mes="julio" ;;
    08) mes="agosto" ;;
    09) mes="septiembre" ;;
    10) mes="octubre" ;;
    11) mes="noviembre" ;;
    12) mes="diciembre" ;;
esac

echo "Nombre: $(basename "$archivo")"
echo "Tipo: $tipo"
echo "Ruta absoluta: $ruta"
echo "Fecha de creacion: $dia de $mes de $anio"
echo "Tamano en bytes: $tamano bytes"
echo "permisos:"
echo "     User($usuario): $user_perm"
echo "     Group($grupo): $group_perm"
echo "     Others: $other_perm"
