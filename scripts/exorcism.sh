#!/bin/bash

CSV="data/ghost_hosts.csv"

if [[ ! -f "$CSV" ]]; then
    echo "[ERROR] No s'ha trobat el fitxer CSV."
    exit 1
fi

echo "=== SISTEMA DE DEFENSA ESPECTRAL ==="
echo "Iniciant anàlisi de la xarxa..."

while IFS=',' read -r host ip tipus risc estat port; do

    if [[ "$host" == "Host" ]]; then
        continue
    fi

    if [[ "$estat" == "Infectat" ]]; then

        if [[ "$risc" == "Critic" ]]; then
            echo "[OK] $host ($ip) - Sistema segur."
            continue
        fi

        echo "[ALERTA] $host ($ip) - $tipus"
        echo "[SIMULACIÓ] Aïllament de $ip"

    else
        echo "[OK] $host ($ip) - Sense amenaces."
    fi

done < "$CSV"

echo "=== ANÀLISI FINALITZADA ==="