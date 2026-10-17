# Planning del servidor

✅ Confirmado por los jugadores · 
🟡 Probado, pendiente de confirmar por los jugadores · 
🧪 Pendiente de probar · 
🔀 Varias alternativas pendientes de probar ·
🔴 Descartado: obsoleto o sin soporte para Valheim 1.0


## Supervivencia

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| OdinRealmFishing 0.89.0 | Pesca | 🟡 |
| Recursos, comida y peso (juego base) | Sin modificadores | 🟡 |

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

## Animales y tameo

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| LetsGo 1.0.0 | Seguimiento y orden de quedarse para animales domesticados; llamada del grupo y enganche de carros | 🟡 |

## PvP

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| PvP (juego base) | Sin mod ni ajuste explicito para forzarlo; decidir reglas entre jugadores | 🟡 |

## Comercio y economia

| Mod / regla | Configuracion actual o decision pendiente | Estado |
|---|---|---|
| Mercaderes e intercambios (juego base) | Sin mod especifico en la lista actual; decidir si ampliar | 🟡 |

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
Ninguno esta confirmado por los jugadores.
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
| [PlantEverything](https://thunderstore.io/c/valheim/p/Advize/PlantEverything/) (1.20.0) | Permite plantar arbustos de bayas, setas, flores y mas vegetacion con el cultivador. | 1.21.3 · 2026-09-25 | No cubierto por la lista actual; cambia el acceso a recursos. | 🧪 |
| [VikingsDoSwim](https://thunderstore.io/c/valheim/p/blacks7ar/VikingsDoSwim/) (1.4.0) | Ajusta velocidad y stamina al nadar segun la habilidad; permite bucear. | 1.4.2 · 2026-09-15 | No cubierto; probar junto a WieldEquipmentWhileSwimming. | 🧪 |
| [WieldEquipmentWhileSwimming](https://thunderstore.io/c/valheim/p/blacks7ar/WieldEquipmentWhileSwimming/) (1.1.3) | Permite llevar y usar equipo mientras nadas o buceas. | 1.1.4 · 2026-09-15 | Complementa al anterior, no hace lo mismo. | 🧪 |
| [Wagon](https://thunderstore.io/c/valheim/p/CookieMilk/Wagon/) (1.1.7) | Engancha carros a criaturas domesticadas. | 1.1.7 · 2025-10-02 · **Obsoleto** | LetsGo ya permite que animales adultos adecuados tiren del carro; comparar restricciones. | 🔴 |
| [LongerPetNames](https://thunderstore.io/c/valheim/p/Riintouge/LongerPetNames/) (1.0.1) | Amplia los nombres de animales de 10 a 100 caracteres. | 1.0.1 · 2024-06-01 | Sin nueva version; comprobar si el limite del juego actual sigue justificandolo. | 🧪 |
| [Starvation](https://thunderstore.io/c/valheim/p/Smoothbrain/Starvation/) (1.0.4) | Introduce consecuencias por no comer: permite morir de hambre. | 1.0.4 · 2024-11-23 | No cubierto; es un cambio de supervivencia, no solo de comodidad. | 🧪 |
| [Ranching](https://thunderstore.io/c/valheim/p/Smoothbrain/Ranching/) (1.1.3) | Habilidad que acelera la domesticacion y aumenta la produccion de animales domesticados. | 1.1.6 · 2026-02-11 · **Obsoleto** | LetsGo gestiona seguimiento y carros, no esta progresion. | 🔴 |
| [BetterTames — TeamKoro](https://thunderstore.io/c/valheim/p/TeamKoro/BetterTames/) (0.0.7) | Protege animales domesticados de la muerte y permite que sigan al jugador. | 0.0.8 · 2025-12-28 | Seguimiento parcialmente cubierto por LetsGo; proteccion por comparar. Existe otro paquete de xtavim, no asumir que es el mismo. | 🧪 |
| [SleepSkip](https://thunderstore.io/c/valheim/p/Azumatt/SleepSkip/) (1.2.3) | Salta la noche cuando acepta un porcentaje configurable de jugadores. | 1.3.0 · 2026-02-18 · **Obsoleto** | La regla de dormir entre jugadores existe en vanilla; este mod cambia el porcentaje necesario. | 🔴 |
| [JustSleep](https://thunderstore.io/c/valheim/p/shudnal/JustSleep/) (1.0.6) | Permite dormir en camas ajenas y delante del fuego. | 1.0.10 · 2026-09-16 | No sustituye a SleepSkip: cambia donde dormir, no cuantos deben hacerlo. | 🧪 |

### Combate, PvP y cooperacion

| Mod (version antigua) | Explicacion breve | Publicacion | Cobertura actual / pendiente | Estado |
|---|---|---|---|---|
| [Valheim Foresight](https://thunderstore.io/c/valheim/p/CoffeeNova/Valheim_Foresight/) (1.0.0) | Indicadores de color sobre enemigos para valorar si puedes bloquear o hacer parry. | 2.0.1 · 2025-12-28 | No cubierto; decidir si encaja mostrar esta informacion. | 🧪 |
| [PvPAlwaysOn](https://thunderstore.io/c/valheim/p/Azumatt/PvPAlwaysOn/) (2.1.2) | Fuerza PvP activo e impide que el jugador lo desactive. | 2.1.2 · 2025-03-16 · **Obsoleto** | El PvP vanilla es voluntario; no tenemos esta imposicion. | 🔴 |
| [WardIsLove](https://thunderstore.io/c/valheim/p/Azumatt/WardIsLove/) (3.7.1) | Protecciones de zona configurables por ward, con interfaz para propietarios y administradores. | 3.7.2 · 2026-02-04 · **Obsoleto** | Vanilla tiene wards, pero no implica que cubra sus permisos y opciones. | 🔴 |
| [Guilds — Smoothbrain](https://thunderstore.io/c/valheim/p/Smoothbrain/Guilds/) (1.1.11) | Sistema de gremios para jugadores. | 1.1.13 · 2026-02-20 · **Obsoleto** | No cubierto. Northarun publica otro Guilds: comparar por separado, no instalar como actualizacion directa. | 🔴 |
| [Groups](https://thunderstore.io/c/valheim/p/Smoothbrain/Groups/) (1.2.9) | Sistema de grupos de jugadores. | 1.2.10 · 2026-02-04 · **Obsoleto** | No cubierto; comparar con gremios y necesidades reales del grupo. | 🔴 |
| [CombatOwner](https://thunderstore.io/c/valheim/p/Smoothbrain/CombatOwner/) (1.0.0) | Busca mejorar esquivas y parries en multijugador mediante cambios de autoridad del combate. | 1.0.0 · 2024-07-13 | No cubierto; comprobar necesidad y compatibilidad de red actual. | 🧪 |
| [DualWield](https://thunderstore.io/c/valheim/p/Smoothbrain/DualWield/) (1.0.9) | Permite empunar dos armas. | 1.0.10 · 2026-02-05 | Comparar con las armas dobles propias de vanilla: no equivale a combinar armas libremente. | 🧪 |

### Exploracion, mundo y progresion

| Mod (version antigua) | Explicacion breve | Publicacion | Cobertura actual / pendiente | Estado |
|---|---|---|---|---|
| [HildirsQuest](https://thunderstore.io/c/valheim/p/Smoothbrain/HildirsQuest/) (1.0.2) | Hace individual el progreso de las misiones de Hildir, en lugar de compartirlo por servidor. | 1.0.2 · 2023-10-06 | Hildir ya es vanilla; individualizar sus misiones no lo cubre ZenBossStone. | 🧪 |
| [Sailing](https://thunderstore.io/c/valheim/p/Smoothbrain/Sailing/) (1.1.7) | Habilidad que mejora salud del barco, velocidad y radio de exploracion al navegar. | 1.1.8 · 2026-02-05 · **Obsoleto** | ShipConfig cubre ajustes del barco, pero no equivale a una habilidad que progresa. | 🔴 |
| [Venture Location Reset](https://thunderstore.io/c/valheim/p/VentureValheim/Venture_Location_Reset/) (0.10.7) | Regenera mazmorras, ubicaciones y leviatanes cada cierto numero de dias del juego. | 1.1.1 · 2026-09-27 | MWL anade lugares, no los regenera; revisar protecciones de bases y compatibilidad con sus ubicaciones. | 🧪 |
| [ZenMap](https://thunderstore.io/c/valheim/p/ZenDragon/ZenMap/) (1.3.0) | Mapa en mesa de cartografia, mapas transportables y seguimiento de elementos del mundo. | 1.11.1 · 2026-10-06 | Amplia la regla actual sin mapa; decidir que informacion permitir. | 🧪 |
| [ZenCompass](https://thunderstore.io/c/valheim/p/ZenDragon/ZenCompass/) (1.4.8) | Brujula radial fabricable, con hora y direccion del viento. | 1.8.0 · 2026-09-13 | Comparar con VegvisirCompass: comparten orientacion, no necesariamente objetivos ni funcionamiento. | 🧪 |
| [ZenPath](https://thunderstore.io/c/valheim/p/ZenDragon/ZenPath/) (0.3.3) | Reduce el consumo de stamina en caminos; la nieve ralentiza el movimiento. | 1.1.0 · 2026-09-13 | No cubierto por la lista actual. | 🧪 |
| [ZenTerrain](https://thunderstore.io/c/valheim/p/ZenDragon/ZenTerrain/) (0.3.3) | Restringe deformacion del terreno para evitar fosos y muros de tierra indestructibles. | 1.1.0 · 2026-09-13 | No cubierto; afecta construccion y defensa de bases. | 🧪 |

### Construccion, almacenamiento e interfaz

| Mod (version antigua) | Explicacion breve | Publicacion | Cobertura actual / pendiente | Estado |
|---|---|---|---|---|
| [LimitWorkstationDiscovery](https://thunderstore.io/c/valheim/p/Azumatt/LimitWorkstationDiscovery/) (1.0.3) | Reduce el radio de descubrimiento de estaciones para exigir acercarse o interactuar. | 1.0.3 · 2025-03-14 · **Obsoleto** | No cubierto; comprobar comportamiento con las estaciones actuales. | 🔴 |
| [Instantly Destroy Boats And Carts](https://thunderstore.io/c/valheim/p/Goldenrevolver/Instantly_Destroy_Boats_And_Carts/) (1.0.4) | Desmonta barcos y carros con la funcion de destruir del martillo. | 1.0.5 · 2026-10-16 | BoatAnchor ancla y ShipConfig ajusta barcos; no dar por cubierto el desmontaje. | 🧪 |
| [DynamicStoragePiles](https://thunderstore.io/c/valheim/p/MSchmoecker/DynamicStoragePiles/) (0.7.0) | Pilas de recursos que funcionan como contenedores y cambian de aspecto segun contenido. | 0.8.1 · 2026-09-10 | Vanilla tiene pilas decorativas; esto anade almacenamiento dinamico. | 🧪 |
| [FenceSnap](https://thunderstore.io/c/valheim/p/MSchmoecker/FenceSnap/) (0.3.0) | Anade puntos de encaje a vallas y estacas. | 0.3.0 · 2023-04-03 | Comparar con el encaje del juego actual antes de anadirlo. | 🧪 |
| [RecyclePlus](https://thunderstore.io/c/valheim/p/TastyChickenLegs/RecyclePlus/) (1.3.0) | Borra o recicla objetos desde el inventario, con opciones de papelera. | 1.3.8 · 2026-10-13 | Quick Stack ya incluye papelera; comparar recuperacion de materiales. El obliterador vanilla no es equivalente. | 🧪 |
| [ZenItemStands](https://thunderstore.io/c/valheim/p/ZenDragon/ZenItemStands/) (0.7.0) | Soportes de objetos y armaduras accesibles como contenedores; intercambio rapido de equipo. | 1.1.1 · 2026-09-29 | Los soportes son vanilla; la interfaz y el intercambio son adicionales. | 🧪 |
| [ZenBeehive](https://thunderstore.io/c/valheim/p/ZenDragon/ZenBeehive/) (0.3.6) | Colmenas como contenedores; permite ajustar produccion de miel. | 1.1.0 · 2026-09-13 | No cubierto por ordenar cofres; cambia acceso y produccion de colmenas. | 🧪 |
| [Official BepInEx ConfigurationManager](https://thunderstore.io/c/valheim/p/Azumatt/Official_BepInEx_ConfigurationManager/) (18.4.1) | Interfaz para editar configuraciones de mods desde el juego. | 18.4.1 · 2025-06-25 · **Obsoleto** | Herramienta de cliente; no impone por si sola la configuracion del servidor. | 🔴 |
| [FirstPersonMode](https://thunderstore.io/c/valheim/p/Azumatt/FirstPersonMode/) (1.3.10) | Camara en primera persona y ocultacion del modelo que estorba la vista. | 1.3.12 · 2026-02-11 · **Obsoleto** | ZenUI tambien anuncia primera persona; comparar como alternativas. | 🔴 |
| [Aedenthorn Custom UI](https://thunderstore.io/c/valheim/p/Smurfgames/Aedenthorn_Custom_UI/) (0.8.1) | Cambia tamano, posicion, rotacion y distribucion de elementos del HUD. | 0.8.1 · 2025-12-16 | No cubierto; solapamiento parcial con ZenUI, no equivalencia completa. | 🧪 |
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
| [QuaaludeInmersiveModPack](https://thunderstore.io/c/valheim/p/Smurfgames/QuaaludeInmersiveModPack/) (1.0.10) | Coleccion de mods requerida por el antiguo servidor Quaalude. | 1.0.11 · 2025-12-18 | Es un modpack, no una funcion individual; revisar dependencias sin importar el conjunto a ciegas. | 🧪 |

### Alternativas por comparar

| Tema | Comparacion pendiente | Estado |
|---|---|---|
| Animales de carga | LetsGo actual frente a Wagon obsoleto; evitar duplicar enganche de carros | 🔀 |
| Animales domesticados | LetsGo + BetterTames de TeamKoro frente a [BetterTames de xtavim](https://thunderstore.io/c/valheim/p/xtavim/BetterTames/) (0.9.0 · 2026-09-22); comparar seguimiento, proteccion y portales | 🔀 |
| Camara e interfaz | ZenUI frente a FirstPersonMode y Aedenthorn Custom UI; elegir funciones sin solapamientos | 🔀 |
| Gremios | Guilds antiguo de Smoothbrain frente a [Guilds de Northarun](https://thunderstore.io/c/valheim/p/Northarun/Guilds/) (1.5.1 · 2026-10-07); distinto paquete y alcance | 🔀 |
| Navegacion | ShipConfig actual frente a Sailing; ajustes fijos frente a progresion por habilidad | 🔀 |
| Orientacion | VegvisirCompass actual frente a ZenCompass; comparar informacion y uso sin mapa | 🔀 |
