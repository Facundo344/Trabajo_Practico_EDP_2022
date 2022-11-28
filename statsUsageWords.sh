#!/bin/bash

function word_usage {
sed -e 's/[[:punct:]]*//g;s/[[:space:]]\+/\n/g' Text.txt | egrep -o '[^ ]{4,}' | sort | uniq -c | sort -bnr | Top_10 = head
echo "$Top_10"
}