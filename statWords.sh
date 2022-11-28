#!/bin/bash

function word_stats {
sed -e 's/[[:punct:]]*//g;s/[[:space:]]\+/\n/g' Text.txt | sort | uniq | awk '{print length, $0}' | sort -nr | PALABRA_ML= head -n 1

sed -e 's/[[:punct:]]*//g;s/[[:space:]]\+/\n/g' Text.txt | sort | uniq | awk '{print length, $0}' | sort -n | PALABRA_MC = head -n 1

NRO_PALABRAS= wc -w Text.txt
NRO_LETRAS= wc -c sed 's/[^a-zA-Z]//g' Text.txt
PROMEDIO_LONGITUD= [$NRO_PALABRAS / $NRO_LETRAS]


echo "La palabra más larga es $PALABRA_ML
La palabra más corta es $PALABRA_MC
El promedio de longitud por palabra es de $PROMEDIO_LONGITUD letras"
}