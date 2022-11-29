#!/bin/bash

function word_usage {
sed -e 's/[[:punct:]]*//g;s/[[:space:]]\+/\n/g' Text.txt | egrep -o '[^ ]{4,}' | sort | uniq -c | sort -bnr | head > Top_10
cat Top_10
}

word_usage