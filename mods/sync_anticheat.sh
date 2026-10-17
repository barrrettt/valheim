#!/bin/sh
set -eu

policy=/config/bepinex/koumodgp
plugins=/config/bepinex/plugins

if ! grep -qx 'Kou-koumodgp=.*' /mods/mods.txt; then
    exit 0
fi

while IFS= read -r line || [ -n "$line" ]; do
    case "$line" in
        ""|\#*) continue ;;
    esac
    package=${line%%=*}
    if [ ! -d "$plugins/$package" ]; then
        echo "ERROR: Falta el plugin para autorizar: $package" >&2
        exit 1
    fi
done < /mods/mods.txt

# These two folders are generated from mods.txt, not maintained manually.
rm -rf "$policy/required" "$policy/allowed"
mkdir -p "$policy/required" "$policy/allowed"

while IFS= read -r line || [ -n "$line" ]; do
    case "$line" in
        ""|\#*) continue ;;
    esac
    package=${line%%=*}
    case "$package" in
        ArgusMagnus-ServersideQoL|ArgusMagnus-ServersideQoL_PrefabConfigurator|ArgusMagnus-ServersideQoL_JustSleep)
            cp -R "$plugins/$package" "$policy/allowed/"
            ;;
        *)
            cp -R "$plugins/$package" "$policy/required/"
            ;;
    esac
done < /mods/mods.txt

echo "Referencias del anticheat preparadas: versiones exactas, SQoL opcional en clientes, sin mods extra."
