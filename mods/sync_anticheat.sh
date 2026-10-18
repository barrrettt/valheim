#!/bin/sh
set -eu

has_anticheat=$(python3 - <<'PY'
from update_mods import read_mods

print("yes" if any(
    mod["author"] == "catosaurluna" and mod["name"] == "CatosAntiCheat"
    for mod in read_mods()
) else "no")
PY
)

if [ "$has_anticheat" = "no" ]; then
    exit 0
fi

for file in com.catosvalheim.anticheat.cfg CatosAntiCheat_ServerOnly.txt CatosAntiCheat_ExtraWhitelist.txt CatosAntiCheat_AdminWhitelist.txt; do
    if [ ! -f "/config/bepinex/$file" ]; then
        echo "ERROR: Falta la configuracion del anticheat: $file" >&2
        exit 1
    fi
done

echo "Politica CatosAntiCheat disponible en config/bepinex; sin referencias DLL de Kou."
