#!/bin/bash

PS3="Ingrese el índice de la opción deseada: "
select i in statWords statsUsageWords findNames statsSentences blankLinesCounter
do
bash ./$i.sh
done
