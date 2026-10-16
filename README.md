# valheim

Valheim server hard mode con mods de servidor fijados en `mods/mods.txt`.

## Configuración

* Combat: **Very Hard**
* Death penalty: **Normal**
* Raids: **Much Less**
* Sin mapa
* Sin portales
* PvP vanilla
* BepInEx con mods instalados automáticamente al arrancar
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
mkdir -p config data
docker compose up -d
```

`config/` y `data/` deben existir y pertenecer al usuario (UID/GID 1000) antes del
primer arranque; si Docker los crea, serán de root y hará falta `sudo` para editarlos.
El servidor y el instalador se ejecutan como 1000:1000 (`PUID`/`PGID`).

`mod-installer` se ejecuta antes de cada arranque: descarga los mods de `mods/mods.txt`,
elimina los que ya no están en la lista y coloca los patchers en `config/bepinex/patchers`.

Comprobar:

```bash
docker compose ps
docker compose logs -f valheim
```

Si `mod-installer` termina con error y el servidor no arranca, consultar:

```bash
docker compose logs --no-color mod-installer
```

Los mods están definidos en:

```text
mods/mods.txt
```

Cada línea debe tener el formato `Autor-NombreDelMod=versión`, por ejemplo:

```text
ValheimModding-Jotunn=2.30.2
```

El separador antes de la versión es `=`, no `-`.

Para actualizar los mods:

```bash
docker compose up -d --force-recreate
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
01a144cb-8a0e-1358-0c21-4c2289ff4813
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
* SkillScale

### Experiencia de habilidades

Configuración en `config/bepinex/com.ljindustries.valheim.skillscale.cfg`:

* `Employment Preset = Custom`.
* `Global Multiplier = 5` y todos los multiplicadores individuales a `5`.
* Los valores individuales son tasas finales: no se multiplican por el global.
* `Death Skill Loss Multiplier = 1`: no se modifica la penalización de habilidades al morir.

Para aplicar los cambios del archivo al servidor:

```bash
docker compose restart valheim
```

Los jugadores deben tener SkillScale instalado para recibir los ajustes sincronizados del servidor.

### Configuración del servidor y del cliente

Se mantienen las reglas de juego sincronizadas y bloqueadas donde el mod lo permite:

* SkillScale: `Lock Configuration = true`.
* BalrondShipyard: `Lock Configuration = 1`.
* QuickStackPlus: activación y radio de búsqueda controlados por el servidor.

El HUD y las teclas quedan a elección de cada jugador. HudLayout es exclusivamente local:
no se instala en el servidor ni se incluye en `mods/mods.txt`.
También se respetan las excepciones locales de cada mod, como las preferencias de inventario
de QuickStackPlus y la opción de desmontar barcos con el martillo de BalrondShipyard.

Las políticas de `config/bepinex/shudnal.ConditionalConfigSync/` se dejan sin reglas
adicionales para conservar los modos definidos por los autores. ConditionalConfigSync
solo controla mods que lo integran y no puede forzar ajustes siempre locales ni
modificar el bloqueo de mods que usan otras bibliotecas de sincronización.

### Lista de mods permitidos por koumodgp

El anticheat compara los identificadores y versiones reales de los plugins del cliente.
Una lista vacía provoca expulsiones por `ModMismatch`.

En `config/bepinex/koumodgp/required/` se copian las carpetas de plugins de la colección
del servidor. HudLayout 1.0.3 se conserva únicamente en
`config/bepinex/koumodgp/allowed/j1gA-HudLayout/` como referencia opcional para los clientes.
Las copias son referencias para el anticheat, no plugins adicionales que se cargan.
No se guardan en Git. El servicio `mod-installer` ejecuta `mods/sync_anticheat.sh`
después de instalar los mods para preparar las referencias automáticamente,
incluida la descarga de HudLayout 1.0.3 como referencia opcional, sin cargarlo en el servidor.

Al actualizar mods, el instalador actualiza también sus referencias.
Al quitar mods, retirar las copias de los paquetes que ya no se permiten.
Después ejecutar `kougp reload` en la consola o reiniciar el servidor.
Los detalles de las expulsiones están en `config/bepinex/koumodgp/violations.log`.

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
