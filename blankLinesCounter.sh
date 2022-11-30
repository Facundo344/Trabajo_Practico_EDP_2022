#!/bin/bash

function blank_lines_counter {
NRO_LINEAS_EN_BLANCO=$(grep '^$' Text.txt | wc -l)

echo "En este archivo hay $NRO_LINEAS_EN_BLANCO lineas en blanco" 
}

blank_lines_counter