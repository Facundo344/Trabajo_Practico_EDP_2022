#!/bin/bash

function sentence_stats {
sed -e 's/\n//g' Text.txt | sed 's/[.!?]  */&\n/g' > oraciones

ORACION_ML=$(sed -e 's/[[:punct:]]*//g;s/[[:space:]]\+/\n/g' oraciones | awk '{print length, $0}' | sort -nr | awk '{print $2}' | head -n 1)
ORACION_MC=$(sed -e 's/[[:punct:]]*//g;s/[[:space:]]\+/\n/g' oraciones | sed '/^$/d' | awk '{print length, $0}' | sort -n | awk '{print $2}' | head -n 1)

NRO_ORACIONES=$(sed -n '$=' oraciones)
NRO_LETRAS=$(sed -e 's/[[:punct:]]*//g' Text.txt | wc -c)

PROMEDIO_LONGITUD=$(($NRO_LETRAS/$NRO_ORACIONES))


echo "La oración más larga es $ORACION_ML
La oración más corta es $ORACION_MC
El promedio de longitud por oración es de $PROMEDIO_LONGITUD letras"
}

sentence_stats