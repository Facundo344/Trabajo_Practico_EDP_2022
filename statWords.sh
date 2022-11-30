#!/bin/bash

function word_stats {
PALABRA_ML=$(sed -e 's/[[:punct:]]*//g;s/[[:space:]]\+/\n/g' Text.txt | sort | uniq | awk '{print length, $0}' | sort -nr | awk '{print $2}' | head -n 1)
PALABRA_MC=$(sed -e 's/[[:punct:]]*//g;s/[[:space:]]\+/\n/g' Text.txt | sort | uniq | sed '/^$/d' | awk '{print length, $0}' | sort -n | awk '{print $2}' | head -n 1)

NRO_PALABRAS=$(wc -w Text.txt | awk '{print $1}')
NRO_LETRAS=$(sed -e 's/[[:punct:]]*//g' Text.txt | wc -c)

PROMEDIO_LONGITUD=$(($NRO_LETRAS/$NRO_PALABRAS))

echo "La palabra más larga es $PALABRA_ML
La palabra más corta es $PALABRA_MC
El promedio de longitud por palabra es de $PROMEDIO_LONGITUD letras"
}

word_stats