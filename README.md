# Valhell

Servidor Valheim con Docker Compose y BepInEx. Combate muy difícil, pocas raids,
sin mapa ni portales.

- Conexión: `barrrettt.duckdns.org:2456`. Router: UDP `2456-2457`.
- Mods y versiones: [mods/mods.txt](mods/mods.txt).
- Propuestas y decisiones del grupo: [PLANNING.md](PLANNING.md).
- Configuración: [docker-compose.yml](docker-compose.yml) y [config/bepinex/](config/bepinex/).
- Valheim comprueba actualizaciones cada hora; las omite si hay jugadores conectados.
- Backups cada hora, conservados durante 2 días.
- Archivos con UID/GID `1000:1000`; ajustar si tu usuario utiliza otros.

## Cliente

En **r2modman → Valheim → Import / Update → From code**, importar el perfil:

```text
01a144cb-8a0e-1358-0c21-4c2289ff4813
```

Usar **Start modded** y mantener las versiones compatibles con el servidor.

Kou koumodgp 0.9.0 debe estar en servidor y clientes. El instalador regenera
`config/bepinex/koumodgp/required/` y `allowed/` desde la lista de mods: versiones
exactas, sin extras no autorizados; los tres paquetes ServersideQoL no se exigen
a los clientes. HudLayout 1.0.4 (`j1ga.hudlayout`) esta autorizado como opcional.
No editar esas carpetas manualmente. `ExclusiveCharacter = false` deja la gestion
de personajes a RunicCharacterVault. Kou mantiene sus otros controles por defecto
y, segun su documentacion, exime a los administradores.

## Comandos

Ejecutar desde la carpeta del repositorio. Requiere Docker Compose.

**Primer arranque** (crear las carpetas antes para que no sean de root):

```bash
mkdir -p config data
docker compose up -d
```




```

**Reiniciar tras cambiar configs:**

```bash
docker compose restart valheim
```

**Aplicar cambios del compose o de la lista de mods** (interrumpe la partida;
reinstala las versiones fijadas y elimina los mods retirados):

```bash
docker compose down
docker compose up -d
```

**Parar sin borrar los datos:**

```bash
docker compose down
```
