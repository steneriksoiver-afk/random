#!/bin/bash

# Fail laienditega (veendu, et sul on selline fail olemas!)
ALLIKAS="extensions.txt"

# Kontrolli, kas fail on olemas
if [ ! -f "$ALLIKAS" ]; then
    echo "Viga: Faili $ALLIKAS ei leitud! Tekitame prooviks mõned laiendid..."
    echo -e "txt\njpg\npng\npdf\nsh" > "$ALLIKAS"
fi

# Võta suvaline rida ja lisa see faili random.txt
LAIEND=$(shuf -n 1 "$ALLIKAS")
echo "$LAIEND" >> random.txt
