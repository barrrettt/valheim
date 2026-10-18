#!/bin/sh
set -eu

if ! grep -qx 'catosaurluna-CatosAntiCheat=.*' /mods/mods.txt; then
    exit 0
fi

for file in com.catosvalheim.anticheat.cfg CatosAntiCheat_ServerOnly.txt CatosAntiCheat_ExtraWhitelist.txt CatosAntiCheat_AdminWhitelist.txt; do
    if [ ! -f "/config/bepinex/$file" ]; then
        echo "ERROR: Falta la configuracion del anticheat: $file" >&2
        exit 1
    fi
done

echo "Politica CatosAntiCheat disponible en config/bepinex; sin referencias DLL de Kou."
