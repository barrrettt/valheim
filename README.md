# valheim

Valheim server hard mode with mods.

## Configuración

* Combat: **Very Hard**
* Death penalty: **Hardcore** (se destruye todo el inventario y las habilidades vuelven a cero)
* Raids: **Much Less**
* Sin mapa
* Sin portales
* PvP vanilla
* BepInEx
* Mods con versiones fijadas
* Ganancia de experiencia de todas las habilidades: **x5** mediante SkillScale
* VegvisirCompass: **1 uso**, alcance de **1000 m** desde el vegvisir de origen (solo brújulas nuevas)
* ZenBossStone: peso de los trofeos de jefe **100** (requiere salir y volver a entrar para aplicar)
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
01a12b24-81fb-3da6-ca34-5b0cd8ebf350
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

El HUD y las teclas quedan a elección de cada jugador. HudLayout es exclusivamente local.
También se respetan las excepciones locales de cada mod, como las preferencias de inventario
de QuickStackPlus y la opción de desmontar barcos con el martillo de BalrondShipyard.

Las políticas de `config/bepinex/shudnal.ConditionalConfigSync/` se dejan sin reglas
adicionales para conservar los modos definidos por los autores. ConditionalConfigSync
solo controla mods que lo integran y no puede forzar ajustes siempre locales ni
modificar el bloqueo de mods que usan otras bibliotecas de sincronización.

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
