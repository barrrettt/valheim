# Planning del servidor

✅ Confirmado por los jugadores · 
🟡 Probado, pendiente de confirmar por los jugadores · 
🧪 Pendiente de probar · 
🔀 Varias alternativas pendientes de probar ·
🔴 Descartado: obsoleto, sin soporte para Valheim 1.0 o cubierto por otro mod


## Supervivencia

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| [PlantEverything 1.21.3](https://thunderstore.io/c/valheim/p/Advize/PlantEverything/) | Instalado; restricciones de bioma desactivadas para plantas vanilla y del mod. Resto de requisitos sin cambios. Pendiente de probar en partida. | ✅ 🧪 |
| OdinRealmFishing 0.89.0 | Pesca | 🟡 |
| Recursos, comida y peso (juego base) | Sin modificadores | 🟡 |
| ServersideQoL JustSleep 2.0.11 | Instalado y activo. Una persona en cama inicia el aviso; exige el 100% de jugadores en cama o sentados. Pendiente de probar en partida. | ✅ 🧪 |

## Combate

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| Dificultad (juego base) | Muy dificil: `combat veryhard` | 🟡 |
| ZenBossStone 1.0.3 | Configuracion de las piedras de los jefes | 🟡 |

## Muerte

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| TXC-SkillLoss 1.2.0 | Perdida del 100% de todas las habilidades; sin limite de niveles perdidos | 🟡 |
| Penalizacion del mundo (juego base) | Sin modificador explicito tras `-resetmodifiers`; TXC no multiplica por la penalizacion del mundo | 🟡 |
| Proteccion tras morir (juego base) | TXC respeta el efecto temporal de no perder habilidades | 🟡 |

## Progresion y experiencia

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| TXC-SkillLoss 1.2.0 | XP x10 en las cinco categorias, incluidas habilidades de otros mods | 🟡 |
| Recuperacion de XP de TXC | Bonus de recuperacion desactivado: `CatchUpXp = Off` | 🟡 |
| AchievementEnabler 0.5.1 | Logros con mods | 🟡 |

Configuracion de muerte y XP: [txc.skillloss.cfg](config/bepinex/txc.skillloss.cfg).

## Exploracion y viajes

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| Mapa (juego base) | Desactivado: `nomap` | 🟡 |
| Portales (juego base) | Desactivados: `NoPortals` | 🟡 |
| VegvisirCompass 1.8.0 | Brujula para marcar direccion POI para juego sin mapa (facilita localizar vendedores y misiones)| 🟡 |
| BoatAnchor 1.3.3 | Anclaje de barcos | 🟡 |
| ShipConfig 1.4.2 | Ajustes de barcos | 🟡 |
| ServersideQoL PrefabConfigurator 2.3.0 | Sustituye a Instantly Destroy Boats And Carts. Solo servidor; desmontaje con martillo activado en Carts y Ships. Pendiente de instalar y probar con ShipConfig y BoatAnchor. | ✅ 🧪 |

## Animales y tameo

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| LetsGo 1.0.0 | Seguimiento y orden de quedarse para animales domesticados; llamada del grupo y enganche de carros | 🟡 |

## PvP

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| Venture Multiplayer Tweaks 1.0.0 | Instalado; configurado PvP siempre activo, sin excepcion para administradores. Mantiene perdida de habilidades en muertes normales y PvP. Requiere servidor y clientes; reconectar o reaparecer para aplicar PvP. Pendiente de probar en partida. | ✅ 🧪 |

## Comercio y economia

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| Mercaderes e intercambios (juego base) | Sin mod especifico en la lista actual; decidir si ampliar | 🟡 |
| Marketplace | Pendiente de probar y aprobar por los jugadores | 🧪 |
| Player Traders | Pendiente de probar y aprobar por los jugadores | 🧪 |

## Entorno y mundo

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| Raids (juego base) | Mucho menos frecuentes: `raids muchless` | 🟡 |
| Eventos por jugador (juego base) | Activados: `playerevents` | 🟡 |
| More World Locations AIO 5.2.2 | Ubicaciones adicionales en el mundo | 🟡 |
| LivingFactions 0.6.5 | Facciones en el mundo | 🟡 |

## Construccion y fabricacion

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| Construccion (juego base) | Sin modificadores explicitos | 🟡 |

## Comodidad y cooperacion

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| Quick Stack - Store - Sort - Trash - Restock 1.4.15 | Ordenacion y guardado; alcance por acordar | 🟡 |
| MultiUserChest 0.6.2 | Acceso simultaneo a cofres | 🟡 |
| ServersideQoL 2.3.3 | Mejoras de comodidad del servidor | 🟡 |

## Personajes y administracion

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| RunicCharacterVault 1.0.4 | Guardado y restricciones de personajes | 🟡 |
| Kou koumodgp 0.9.0 | Anadido; obligatorio en servidor y clientes. Mods y versiones segun la lista, sin extras; SQoL solo servidor no obligatorio en clientes. `ExclusiveCharacter = false`: personajes gestionados por RunicCharacterVault. Pendiente de instalar y probar; otros controles de Kou por defecto. Administradores exentos segun el autor. | ✅ 🧪 |
| Acceso externo | Conexion mediante `barrrettt.duckdns.org:2456` | 🟡 |
| Actualizaciones de Valheim | Comprobacion cada hora; se omite si hay jugadores conectados | 🟡 |
| Backups | Cada hora, conservados 2 dias; falta probar restauracion | 🧪 |

## Dependencias

| Mod | Version | Estado |
|---|---|---|
| Jotunn | 2.30.2 | 🟡 |
| Zen_ModLib | 1.14.22 | 🟡 |
| YamlDotNET | 16.3.1 | 🟡 |
| JsonDotNET | 13.0.4 | 🟡 |

## Alternativas

| Tematica | Opciones por comparar | Estado |
|---|---|---|
| Sin alternativas registradas todavia | | |

## SERVER VIEJO HARD — pendiente de analizar

Revision de Thunderstore: **17/10/2026**. Los obsoletos o sin soporte para
Valheim 1.0 quedan descartados (🔴); el resto queda pendiente de probar (🧪).
Los mods ya incluidos en la lista actual no se repiten aqui.
Las aprobaciones de los jugadores se indican en cada fila.
Las versiones de esta tabla son una referencia, no se han instalado.

**Publicacion** indica la ultima version publicada por el autor indicado y su fecha.
**Obsoleto** significa que Thunderstore marca ese paquete como `deprecated`, no
que hayamos comprobado que falla; se descarta por ese estado. La falta de soporte
para Valheim 1.0 tambien descarta un mod cuando este documentada: una fecha antigua
por si sola no demuestra incompatibilidad. Una version reciente tampoco garantiza
compatibilidad con el parche actual de Valheim. Los solapamientos son funcionales,
no sustituciones verificadas.

### Supervivencia, animales y movimiento

| Mod (version antigua) | Explicacion breve | Publicacion | Cobertura actual / pendiente | Estado |
|---|---|---|---|---|


### Combate, PvP y cooperacion

| Mod (version antigua) | Explicacion breve | Publicacion | Cobertura actual / pendiente | Estado |
|---|---|---|---|---|
| [PvPAlwaysOn](https://thunderstore.io/c/valheim/p/Azumatt/PvPAlwaysOn/) (2.1.2) | Fuerza PvP activo e impide que el jugador lo desactive. | 2.1.2 · 2025-03-16 · **Obsoleto** | El PvP vanilla es voluntario; no tenemos esta imposicion. | 🔴 | - buscar alternativas para pvp siempre ON 

-> pendiente buscar algo para proteccion offline y que los wardias protegan terreno editable cerca.

### Exploracion, mundo y progresion

| Mod (version antigua) | Explicacion breve | Publicacion | Cobertura actual / pendiente | Estado |
|---|---|---|---|---|
| [HildirsQuest](https://thunderstore.io/c/valheim/p/Smoothbrain/HildirsQuest/) (1.0.2) | Hace individual el progreso de las misiones de Hildir, en lugar de compartirlo por servidor. | 1.0.2 · 2023-10-06 | Hildir ya es vanilla; individualizar sus misiones no lo cubre ZenBossStone. | 🧪 |
| [Venture Location Reset](https://thunderstore.io/c/valheim/p/VentureValheim/Venture_Location_Reset/) (0.10.7) | Regenera mazmorras, ubicaciones y leviatanes cada cierto numero de dias del juego. | 1.1.1 · 2026-09-27 | MWL anade lugares, no los regenera; revisar protecciones de bases y compatibilidad con sus ubicaciones. | 🧪 |
| [ZenMap](https://thunderstore.io/c/valheim/p/ZenDragon/ZenMap/) (1.3.0) | Mapa en mesa de cartografia, mapas transportables y seguimiento de elementos del mundo. | 1.11.1 · 2026-10-06 | Amplia la regla actual sin mapa; decidir que informacion permitir. | 🧪 |
| [ZenCompass](https://thunderstore.io/c/valheim/p/ZenDragon/ZenCompass/) (1.4.8) | Brujula radial fabricable, con hora y direccion del viento. | 1.8.0 · 2026-09-13 | Comparar con VegvisirCompass: comparten orientacion, no necesariamente objetivos ni funcionamiento. | 🧪 |
| [ZenPath](https://thunderstore.io/c/valheim/p/ZenDragon/ZenPath/) (0.3.3) | Reduce el consumo de stamina en caminos; la nieve ralentiza el movimiento. | 1.1.0 · 2026-09-13 | No cubierto por la lista actual. | 🧪 |
| [ZenTerrain](https://thunderstore.io/c/valheim/p/ZenDragon/ZenTerrain/) (0.3.3) | Restringe deformacion del terreno para evitar fosos y muros de tierra indestructibles. | 1.1.0 · 2026-09-13 | No cubierto; afecta construccion y defensa de bases. | 🧪 |

### Construccion, almacenamiento e interfaz

| Mod (version antigua) | Explicacion breve | Publicacion | Cobertura actual / pendiente | Estado |
|---|---|---|---|---|
| [ZenItemStands](https://thunderstore.io/c/valheim/p/ZenDragon/ZenItemStands/) (0.7.0) | Soportes de objetos y armaduras accesibles como contenedores; intercambio rapido de equipo. | 1.1.1 · 2026-09-29 | Los soportes son vanilla; la interfaz y el intercambio son adicionales. | 🧪 |
| [ZenBeehive](https://thunderstore.io/c/valheim/p/ZenDragon/ZenBeehive/) (0.3.6) | Colmenas como contenedores; permite ajustar produccion de miel. | 1.1.0 · 2026-09-13 | No cubierto por ordenar cofres; cambia acceso y produccion de colmenas. | 🧪 |
| [ZenUI](https://thunderstore.io/c/valheim/p/ZenDragon/ZenUI/) (1.2.2) | Mejoras de fabricacion y HUD: busqueda, ordenacion, colores, municion y primera persona. | 1.9.3 · 2026-10-13 | Comparar interfaz con Custom UI y camara con FirstPersonMode. | 🧪 |
| [No Grass](https://thunderstore.io/c/valheim/p/VentureValheim/No_Grass/) (0.1.4) | Recupera la opcion de quitar toda la hierba en los ajustes de vegetacion. | 1.0.0 · 2026-09-09 | Preferencia de cliente; comprobar si el deslizador vanilla actual basta. | 🧪 |

### Personajes, servidor y dependencias

| Mod (version antigua) | Explicacion breve | Publicacion | Cobertura actual / pendiente | Estado |
|---|---|---|---|---|
| [AzuAntiCheat](https://thunderstore.io/c/valheim/p/Azumatt/AzuAntiCheat/) (4.3.11) | Controla los mods permitidos mediante referencias del servidor; administradores pueden quedar exentos. | 4.3.11 · 2025-03-16 · **Obsoleto** | RunicCharacterVault guarda personajes, no sustituye una lista de mods permitidos; no es garantia contra trampas. | 🔴 |
| [ServerCharacters](https://thunderstore.io/c/valheim/p/Smoothbrain/ServerCharacters/) (1.4.16) | Guarda personajes en el servidor en vez de depender de sus archivos locales. | 1.4.16 · 2025-05-02 · **Obsoleto** | Ya usamos RunicCharacterVault para personajes; comparar migracion y restricciones, no combinar sin pruebas. | 🔴 |
| [SmoothSave](https://thunderstore.io/c/valheim/p/Smoothbrain/SmoothSave/) (1.0.5) | Busca reducir el paron al guardar el mundo. | 1.0.5 · 2023-11-20 · **Obsoleto** | Backups no solucionan ese paron; medir primero con el guardado del Valheim actual. | 🔴 |
| [Venture Logout Tweaks](https://thunderstore.io/c/valheim/p/VentureValheim/Venture_Logout_Tweaks/) (0.6.0) | Conserva y restaura ciertos efectos, como Descansado, al desconectar y volver. | 1.0.0 · 2026-09-10 | Comparar persistencia vanilla y convivencia con RunicCharacterVault. | 🧪 |
| [BepInExPack Valheim](https://thunderstore.io/c/valheim/p/denikson/BepInExPack_Valheim/) (5.4.2333) | Cargador y base de ejecucion de los mods de Valheim. | 5.4.2351 · 2026-09-24 | Docker ya instala BepInEx; no anadir el pack a plugins. Verificar aparte la version instalada. | 🧪 |

### Alternativas por comparar

#### Saltar la noche por votacion — elegido ServersideQoL JustSleep

La funcionalidad esta aprobada por los jugadores y se ha elegido ServersideQoL JustSleep.
Instalado; porcentaje acordado: 100%, con minimo de una persona en cama para iniciar el aviso.
Falta probarlo en partida. No instalar varias alternativas a la vez.
El SleepSkip original sigue descartado por obsoleto.

| Alternativa | Funcionamiento e instalacion | Valoracion | Estado |
|---|---|---|---|
| [ServersideQoL JustSleep 2.0.11](https://thunderstore.io/c/valheim/p/ArgusMagnus/ServersideQoL_JustSleep/) | Solo servidor. Se vota sentandose; permite ajustar minimo de jugadores en cama y porcentaje de jugadores en cama o sentados. | Primera opcion recomendada: ya tenemos ServersideQoL 2.3.3, superior a la dependencia minima 2.0.11. Falta probar compatibilidad en partida. No es el JustSleep de shudnal. | 🧪 |
| [SleepSkip 1.0 Fork 1.3.1](https://thunderstore.io/c/valheim/p/TeamNibake/SleepSkip1point0fork/) | Reconstruccion no oficial de SleepSkip para Valheim 1.0.7. Obligatorio en servidor y todos los clientes con la misma version; no combinar con el original. | Alternativa mas cercana al mod antiguo. Su declaracion de soporte 1.0.7 no garantiza el parche actual. | 🧪 |
| [LessSleep 1.0.0](https://thunderstore.io/c/valheim/p/LessCx/LessSleep/) | Servidor y cliente opcional. Voto Y/N o chat para clientes con mod; umbrales y tiempo de votacion configurables. | Sin clientes con el mod, salta automaticamente al alcanzar el minimo en cama: no garantiza voto explicito de todos. | 🧪 |

Fuentes: documentacion de cada paquete en Thunderstore, consultada el 17/10/2026.

#### PvP obligatorio — elegido Venture Multiplayer Tweaks

| Alternativa | Funcionamiento | Pendiente | Estado |
|---|---|---|---|
| [Venture Multiplayer Tweaks 1.0.0](https://thunderstore.io/c/valheim/p/VentureValheim/Venture_Multiplayer_Tweaks/) | Fuerza PvP con `OverridePlayerPVP = true` y `ForcePlayerPVPOn = true`; deshabilita el boton para jugadores, con excepcion de administradores. Requiere servidor y clientes; sincroniza mediante Jotunn. | Primera opcion para PvP global. Revisar sus otras funciones de muerte y proteccion al reaparecer para no interferir con TXC-SkillLoss. El cambio de PvP requiere reconectar o reaparecer. | 🧪 |
| [PvP Biome Dominions 1.8.0](https://thunderstore.io/c/valheim/p/turbero/PvPBiomeDominions/) | Reglas PvP obligatorio, PvE o eleccion del jugador por bioma; tambien gestiona posiciones, wards y tumbas. | Opcion para reglas por zonas. Verificar instalacion en cliente/servidor y desactivar ajustes de tumbas que solapen con otros mods. | 🧪 |

Venture Multiplayer Tweaks 1.0.0 esta aprobado y anadido a la lista de mods para
PvP siempre activo. Falta instalarlo, configurarlo y probarlo con el parche actual.
PvP Biome Dominions queda solo como alternativa, sin instalar.
Fuentes: documentacion de cada paquete, consultada el 18/10/2026.

#### Otras alternativas

| Tema | Comparacion pendiente | Estado |
|---|---|---|
| Camara e interfaz | ZenUI frente a FirstPersonMode y Aedenthorn Custom UI; elegir funciones sin solapamientos | 🔀 |
| Gremios | Guilds antiguo de Smoothbrain frente a [Guilds de Northarun](https://thunderstore.io/c/valheim/p/Northarun/Guilds/) (1.5.1 · 2026-10-07); distinto paquete y alcance | 🔀 |
| Navegacion | ShipConfig actual frente a Sailing; ajustes fijos frente a progresion por habilidad | 🔀 |
