# Valhell

Una partida de supervivencia hardcore con PvP siempre activo, sin mapa ni
portales. Explorar, transportar recursos y encontrarse con otros jugadores
implica riesgo. El combate es muy dificil y las incursiones son poco frecuentes.

## R2MODMAN COLECCION
01a1502a-bf72-55bf-de86-8e5fc28b4837

## La experiencia

- **Progresion rapida, muerte dura:** XP de habilidades x10 y perdida del 100%
  de habilidades al morir, tambien en PvP, salvo la proteccion temporal vanilla
  contra perdidas consecutivas. El equipo queda en la tumba: no se destruye.
- **Personajes del servidor:** se empieza con un personaje nuevo, guardado en
  el servidor; no se admiten personajes ya jugados.
- **Mundo vivo:** nuevas ubicaciones, facciones y asentamientos para descubrir.
  Las brujulas de vegvisires ayudan a orientarse sin mapa.
- **Bases protegidas:** los wards de jugadores protegen las construcciones del
  dano de jugadores y el terreno de cambios sin permiso; no pueden solaparse
  con wards de otros propietarios. Monstruos, fuego y clima siguen siendo amenazas.
- **Comercio entre jugadores:** mercado remoto con ventas offline, pedidos y
  trabajos pagados, sin tener que revelar la ubicacion de la base. Los cobros
  tienen una comision del 10%; los depositos bancarios no. El saldo, los objetos
  anunciados y el buzon quedan fuera del saqueo.
- **Viajes por mar:** barcos con salud x2, sin dano por impacto con agua y con
  almacenamiento duplicado en Karve, barco largo y Drakkar.
- **Menos tareas repetitivas:** mejoras de inventario, cofres compartidos,
  plantacion ampliada, pesca y seguimiento de animales. Para saltar la noche,
  todos deben estar en cama o sentados, con al menos uno en cama.
- **Juego en grupo:** chat local y privado, grupos con posiciones compartidas
  y anuncios de entrada. No es un servidor de anonimato absoluto.

El perfil de mods se controla con CatosAntiCheat: versiones exactas y solo
extras autorizados. Los mods, su instalacion en servidor o clientes y los
ajustes relevantes estan descritos en [mods/mods.toml](mods/mods.toml).
Cada entrada incluye paquete, version, tematica, descripcion y ajustes;
`side = "both"` indica servidor y clientes, y `"server"` solo servidor.
El instalador lee TOML con Python 3.11 o superior, sin dependencias adicionales.

## Como funciona el Compose

[docker-compose.yml](docker-compose.yml) define dos servicios:

- **mod-installer:** descarga las versiones fijadas en la lista, valida los
  paquetes, instala plugins y patchers y elimina los paquetes retirados.
  Comprueba tambien que existan los archivos de politica del anticheat.
- **valheim:** espera a que el instalador termine correctamente y arranca el
  servidor dedicado con BepInEx y las reglas del mundo. Se reinicia
  automaticamente salvo que se pare de forma explicita.

La configuracion persiste en [config/](config/) y los archivos del servidor en
[data/](data/), mediante volumenes del host. Los contenedores usan UID/GID
`1000:1000`; las carpetas deben ser accesibles para ese usuario.

Se publican los puertos UDP `2456-2457`. El servidor comprueba actualizaciones
cada hora, omitiendolas si hay jugadores conectados; esto no actualiza las
versiones fijadas de los mods. Hay backups cada hora, conservados durante dos dias.

## Comandos principales

Ejecutar desde la raiz del repositorio con Docker Compose instalado.
Los reinicios y las reinstalaciones interrumpen la partida.

```bash
# Primer arranque: crear antes las carpetas con el usuario del host
mkdir -p config data
docker compose up -d

# Ver estado y seguir los logs (Ctrl+C para salir de los logs)
docker compose ps
docker compose logs -f --tail=100 valheim

# Reiniciar tras cambiar configuraciones; no instala mods nuevos
docker compose restart valheim

# Aplicar cambios del Compose o de la lista de mods, reinstalando los paquetes
docker compose down
docker compose up -d

# Parar y retirar contenedores sin borrar los datos del host
docker compose down
```
