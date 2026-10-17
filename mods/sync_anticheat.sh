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

optional=$(mktemp -d /tmp/koumodgp-optional-XXXXXX)
trap 'rm -rf "$optional"' EXIT HUP INT TERM
wget -q -O "$optional/hud.zip" https://thunderstore.io/package/download/j1gA/HudLayout/1.0.4/
mkdir "$optional/hud"
unzip -oq "$optional/hud.zip" -d "$optional/hud"
test -f "$optional/hud/HudLayout.dll"

# These folders contain generated references, not runtime plugins.
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

cp -R "$optional/hud" "$policy/allowed/j1gA-HudLayout"

echo "Referencias del anticheat preparadas: versiones exactas, SQoL y HudLayout 1.0.4 opcionales."
