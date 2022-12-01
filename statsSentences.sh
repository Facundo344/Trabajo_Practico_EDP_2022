#!/bin/bash

function sentence_stats {
sed 's/[.!?]  */&\n/g' Text.txt | sed '/^$/d' > oraciones

ORACION_ML=$(awk '{print length, $0}' oraciones | sort -nr | awk '{$1=""; print}' | head -n 1)
ORACION_MC=$(awk '{print length, $0}' oraciones | sort -n | awk '{$1=""; print}' | head -n 1)

NRO_ORACIONES=$(sed -n '$=' oraciones)
NRO_LETRAS=$(sed -e 's/[[:punct:]]*//g' Text.txt | wc -c)

PROMEDIO_LONGITUD=$(($NRO_LETRAS/$NRO_ORACIONES))


echo "La oración más larga es: $ORACION_ML
La oración más corta es: $ORACION_MC
El promedio de longitud por oración es de $PROMEDIO_LONGITUD letras"
}

sentence_stats
