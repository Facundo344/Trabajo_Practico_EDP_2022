#!/bin/bash

function find_names {
sed -e 's/[[:punct:]]*//g;s/[[:space:]]\+/\n/g' Text.txt | grep -P '\b[[:upper:]]' >> names
cat names 
}

find_names