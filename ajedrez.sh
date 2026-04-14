#!/bin/bash

#-- visual --
BG_WHITE='\e[47m';
BG_BLACK='\e[40m';
BG_SEL='\e[44m';
BG_VALID='\e[42m';
TEXT_BLACK='\e[30m';
RESET='\e[0m'

tput civis

#-- piezas negras --
TN="t"; CN="c";
AN="a"; RN="d";
KN="r"; PN="p"

#-- piezas blancas --
TB="T"; CB="C";
AB="A"; RB="D";
KB="R"; PB="P"
 
declare -A tablero
for i in {0..7}; do
    for j in {0..7}; do tablero[$i,$j]=" "; done
done

#-- colocacion --
tablero[0,0]=$TN; tablero[0,1]=$CN;
tablero[0,2]=$AN; tablero[0,3]=$RN
tablero[0,4]=$KN; tablero[0,5]=$AN;
tablero[0,6]=$CN; tablero[0,7]=$TN
for i in {0..7}; do  tablero[1,$i]=$PN; done 
tablero[7,0]=$TB; tablero[7,1]=$CB;
tablero[7,2]=$AB; tablero[7,3]=$RB
tablero[7,4]=$KB; tablero[7,5]=$AB;
tablero[7,6]=$CB; tablero[7,7]=$TB
for i in {0..7}; do tablero[6,$i]=$PB; done

cursor_r=7; cursor_c=0; seleccion_r=-1; seleccion_c=-1

dibujar() {
      clear
         tput cup 0 0
         printf "\n        === AJEDREZ BASH ===\n\n"
         printf "         A      B      C      D      E      F      G      H\n"
          for r in {0..7}; do
              printf "  %s   " "$((8-r))"
              for c in {0..7}; do
                  if [ $r -eq $cursor_r ] && [ $c -eq $cursor_c ]; then
                    printf "$BG_SEL"
                  elif [ $r -eq $seleccion_r ] && [ $c  -eq $seleccion_c ]; then
                      printf "BG_VALID"
                  elif [ $(((r-c)%2)) -eq 0 ]; then
                      printf "$BG_WHITE$TEXT_BLACK"
                  else
                      printf "$BG_BLACK";
                  fi

                  printf "   %s   " "${tablero[$r,$c]}"
                  printf "$RESET"
               done
               printf " %d\n" "$((8-r))"
            done 
            printf "        A       B      C      D      E      F      G      H\n"
            printf "\nFlechas: Mover | Enter: Seleccionar | q: salir\n"
}


while true; do
    dibujar
    read -rsn3 key
    case "$key" in
        $'\e[A') [[ $cursor_r -gt 0 ]] && ((cursor_r--)) ;;
        $'\e[B') [[ $cursor_r -lt 7 ]] && ((cursor_r++)) ;;
        $'\e[D') [[ $cursor_c -gt 0 ]] && ((cursor_c--)) ;;
        $'\e[C') [[ $cursor_c -lt 7 ]] && ((cursor_c++)) ;;
        "")
           if [ $seleccion_r -eq -1 ]; then
              if [ "${tablero[$cursor_r,$cursor_c]}" != " " ]; then
                 seleccion_r=$cursor_r seleccion_c=$cursor_c
              fi
           else
               tablero[$cursor_r,$cursor_c]=${tablero[$seleccion_r,$seleccion_c]}
               tablero[$seleccion_r,$seleccion_c]=" "
               seleccion_r=-1; seleccion_c=-1
           fi ;;
           "q") tput cnorm; clear; exit ;;
        esac
done



