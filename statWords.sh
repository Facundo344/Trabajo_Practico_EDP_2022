#!/bin/bash

function longestWord {
sed 's/\b /\n/g' Text.txt | sort | uniq | awk '{print length, $0}' | sort -nr | PALABRA_ML= head -n 1
echo "La palabra más larga es $PALABRA_ML"
}

function shortestWord {
sed 's/\b /\n/g' Text.txt | sort | uniq | awk '{print length, $0}' | sort -nr | PALABRA_MC = tail -n 1
echo "La palabra más corta es $PALABRA_MC"
}

function averageLength {
NRO_PALABRAS= wc -w Text.txt
NRO_LETRAS= wc -c sed 's/[^a-zA-Z]//g' Text.txt
PROMEDIO_LONGITUD= [$NRO_PALABRAS / $NRO_LETRAS]
echo "El promedio de longitud por palabra es de $PROMEDIO_LONGITUD letras"
}