# valheim

Valheim server hard mode with mods.

## Configuración

* Combat: **Very Hard**
* Death penalty: **Hardcore**
* Raids: **Much Less**
* Sin mapa
* Sin portales
* PvP vanilla
* BepInEx
* Mods con versiones fijadas
* Backups automáticos
* Actualización automática de Valheim

## Servidor

Requisitos:

* Ubuntu
* Docker
* Docker Compose
* Git

Instalar:

```bash
git clone <REPOSITORY_URL>
cd valheim
docker compose run --rm mod-installer
docker compose up -d
```

Comprobar:

```bash
docker compose ps
docker compose logs -f valheim
```

Los mods están definidos en:

```text
mods/mods.txt
```

Para actualizar los mods:

```bash
docker compose run --rm mod-installer
docker compose restart valheim
```

Valheim se actualiza automáticamente cada hora.

## Cliente

Instalar **r2modman** y seleccionar **Valheim**.

Importar el perfil mediante:

```text
Import / Update
→ Import new profile
→ From code
```

Código del perfil:

```text
01a0e98e-c7f2-1ca4-5929-077922c97fe2
```

Después seleccionar el perfil y utilizar **Start modded**.

Todos los jugadores deben utilizar este perfil para mantener los mismos mods.

## Mods

Las versiones están fijadas en `mods/mods.txt`.

Actualmente:

* Jotunn
* Zen_ModLib
* ZenBossStone
* VegvisirCompass
* RunicCharacterVault

## Estructura

```text
valheim/
├── config/
├── mods/
│   ├── mods.txt
│   └── update_mods.py
├── data/
├── docker-compose.yml
└── README.md
```

Los mundos, backups, logs y plugins descargados no se guardan en Git.

