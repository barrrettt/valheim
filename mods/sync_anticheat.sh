#!/bin/sh
set -eu

policy=/config/bepinex/koumodgp
plugins=/config/bepinex/plugins

if ! grep -qx 'Kou-koumodgp=.*' /mods/mods.txt; then
    exit 0
fi

mkdir -p "$policy/required" "$policy/allowed"

while IFS= read -r line || [ -n "$line" ]; do
    case "$line" in
        ""|\#*) continue ;;
    esac
    package=${line%%=*}
    if [ ! -d "$plugins/$package" ]; then
        echo "ERROR: Falta el plugin para autorizar: $package" >&2
        exit 1
    fi
    cp -R "$plugins/$package" "$policy/required/"
done < /mods/mods.txt

# HUD is not installed on the server; its archive is only an optional reference.
hud="$policy/allowed/j1gA-HudLayout"
mkdir -p "$hud"
archive=$(mktemp /tmp/hudlayout-XXXXXX)
trap 'rm -f "$archive"' EXIT HUP INT TERM
wget -q -O "$archive" https://thunderstore.io/package/download/j1gA/HudLayout/1.0.3/
unzip -oq "$archive" -d "$hud"
test -f "$hud/HudLayout.dll"

echo "Referencias del anticheat preparadas; HudLayout 1.0.3 opcional."
