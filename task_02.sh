#!/bin/bash

# 1. Kontrolli, kas kasutaja sisestas laiendi käsurealt
if [ -z "$1" ]; then
    echo "Viga: Palun sisesta laiend (näiteks: bash task_02.sh txt)"
    exit 1
fi

LAIEND=$1
FAIL="random.txt"

# 2. Kontrolli, kas random.txt on üldse olemas
if [ ! -f "$FAIL" ]; then
    echo "Viga: Faili $FAIL ei leitud! Käivita enne task_01.sh"
    exit 1
fi

# 3. Loenda laiendi esinemised (täpne vaste realt)
KOGUS=$(grep -x "$LAIEND" "$FAIL" | wc -l)

# 4. Väljasta tulemus
if [ "$KOGUS" -gt 0 ]; then
    echo "Laiendit '$LAIEND' leiti failist $KOGUS korda."
else
    echo "Laiendit '$LAIEND' ei leitud."
fi