#!/bin/bash

PS3="Ingrese el índice de la opción deseada: "

select i in statWords statsUsageWords findNames statsSentences blankLinesCounter "Escriba 6 para salir de la aplicación"
do
case $REPLY in
  6) exit ;;
  1 | 2 | 3 | 4 | 5) bash ./$i.sh ;;
esac
done
