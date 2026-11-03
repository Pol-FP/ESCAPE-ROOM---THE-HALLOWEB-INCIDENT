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

        echo "[ALERTA] $host ($ip) - $tipus"
        echo "[INFO] Nivell de risc: $risc"
        echo "[INFO] Port infectat: $port"

        # Comprovació dels ports crítics
        case "$port" in
            22|445|3389)
                echo "[CRITIC] Port crític detectat."
                echo "[SIMULACIÓ] Aïllament de $ip"
                ;;
            *)
                echo "[DESCARTAT] Port no crític: $port"
                ;;
        esac

    else
        echo "[OK] $host ($ip) - Sense amenaces."
    fi

    echo "--------------------------------"

done < "$CSV"

echo "=== ANÀLISI FINALITZADA ==="