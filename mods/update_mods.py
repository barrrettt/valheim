#!/usr/bin/env python3

import json
import shutil
import sys
import tempfile
import urllib.request
import zipfile
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
MODS_FILE = ROOT / "mods" / "mods.txt"
PLUGIN_DIR = ROOT / "config" / "bepinex" / "plugins"

DOWNLOAD_BASE = "https://thunderstore.io/package/download"


def read_mods():
    mods = []

    for line in MODS_FILE.read_text().splitlines():
        line = line.strip()

        if not line or line.startswith("#"):
            continue

        try:
            package, version = line.split("=", 1)
        except ValueError:
            raise RuntimeError(
                f"Línea inválida en mods.txt: {line}"
            )

        author, name = package.split("-", 1)

        mods.append({
            "author": author,
            "name": name,
            "version": version,
        })

    return mods


def download_package(mod, destination):
    url = (
        f"{DOWNLOAD_BASE}/"
        f"{mod['author']}/"
        f"{mod['name']}/"
        f"{mod['version']}/"
    )

    filename = (
        f"{mod['author']}-{mod['name']}-"
        f"{mod['version']}.zip"
    )

    archive = destination / filename

    print(
        f"  ↓ {mod['author']}-{mod['name']} "
        f"{mod['version']}"
    )

    request = urllib.request.Request(
        url,
        headers={
            "User-Agent": "ValheimServerModUpdater/1.0"
        },
    )

    try:
        with urllib.request.urlopen(request) as response:
            with archive.open("wb") as f:
                shutil.copyfileobj(response, f)
    except Exception as e:
        raise RuntimeError(
            f"No se pudo descargar {url}: {e}"
        )

    if archive.stat().st_size == 0:
        raise RuntimeError(
            f"El archivo descargado está vacío: {archive}"
        )

    return archive


def validate_archive(archive):
    with zipfile.ZipFile(archive) as z:
        bad = z.testzip()

        if bad is not None:
            raise RuntimeError(
                f"ZIP corrupto: {archive} ({bad})"
            )


def install_package(archive, mod, staging):
    extract_dir = staging / f"{mod['author']}-{mod['name']}"

    with zipfile.ZipFile(archive) as z:
        z.extractall(extract_dir)

    manifest = extract_dir / "manifest.json"

    if not manifest.exists():
        raise RuntimeError(
            f"{mod['name']} {mod['version']} no contiene manifest.json"
        )

    data = json.loads(manifest.read_text(encoding="utf-8-sig"))

    actual_name = data.get("name")
    actual_version = data.get("version_number")

    if actual_name != mod["name"]:
        raise RuntimeError(
            f"Nombre inesperado: esperaba {mod['name']}, "
            f"pero el paquete contiene {actual_name}"
        )

    if actual_version != mod["version"]:
        raise RuntimeError(
            f"Versión inesperada para {mod['name']}: "
            f"esperaba {mod['version']}, "
            f"pero contiene {actual_version}"
        )

    # Thunderstore normalmente contiene el plugin en
    # una carpeta con el mismo nombre del paquete.
    # Buscamos DLLs y conservamos la estructura que acompaña al mod.
    dlls = list(extract_dir.rglob("*.dll"))

    if not dlls:
        raise RuntimeError(
            f"No se encontró ninguna DLL en {archive.name}"
        )

    return extract_dir


def main():
    mods = read_mods()

    if not mods:
        raise RuntimeError("mods.txt está vacío")

    print(f"Mods encontrados: {len(mods)}")
    print()

    PLUGIN_DIR.mkdir(parents=True, exist_ok=True)

    with tempfile.TemporaryDirectory(
        prefix="valheim-mods-"
    ) as tmp:

        tmp = Path(tmp)
        downloads = tmp / "downloads"
        staging = tmp / "staging"

        downloads.mkdir()
        staging.mkdir()

        print("== DESCARGANDO ==")

        archives = []

        for mod in mods:
            archive = download_package(mod, downloads)
            validate_archive(archive)
            archives.append((archive, mod))

        print()
        print("== VALIDANDO ==")

        extracted = []

        for archive, mod in archives:
            print(
                f"  ✓ {mod['name']} {mod['version']}"
            )

            extracted_dir = install_package(
                archive,
                mod,
                staging,
            )

            extracted.append((extracted_dir, mod))

        print()
        print("== INSTALANDO ==")

        for extracted_dir, mod in extracted:
            target = PLUGIN_DIR / f"{mod['author']}-{mod['name']}"

            if target.exists():
                print(f"  ↻ Actualizando {target.name}")
                shutil.rmtree(target)

            shutil.copytree(extracted_dir, target)

            print(
                f"  ✓ {mod['name']} {mod['version']}"
            )

    print()
    print("================================")
    print(" Mods instalados correctamente")
    print("================================")


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\nCancelado.")
        sys.exit(130)
    except Exception as e:
        print(f"\nERROR: {e}")
        sys.exit(1)
