# Apache Folders First (mod_autoindex)

Este repositorio contiene la configuración de `.htaccess` para ordenar las carpetas primero y de forma alfabética en el listado de directorios nativo de Apache (`mod_autoindex`).

## Características
- **Carpetas Primero**: Agrupa y muestra las carpetas al principio de la lista.
- **Orden Alfabético**: Ordena tanto carpetas como archivos de forma alfabética (A-Z) ignorando mayúsculas/minúsculas.
- **Nombres Completos**: Evita que los nombres de los archivos largos se recorten con puntos suspensivos (`NameWidth=*`).
- **Tabla HTML**: Muestra el indexado usando una estructura de tabla limpia.

---

## Instalación rápida (Vía Terminal/Git)

Puedes ejecutar el instalador de forma directa en tu servidor sin necesidad de clonar el repositorio:

```bash
curl -sSL https://raw.githubusercontent.com/bywarmx/apache-folders-first/main/install.sh | bash
```

---

## Instalación manual (Clonando)

Si prefieres clonar el repositorio y ejecutar el instalador localmente:

1. Clona el repositorio:
   ```bash
   git clone https://github.com/bywarmx/apache-folders-first.git
   ```
2. Accede al directorio:
   ```bash
   cd apache-folders-first
   ```
3. Otorga permisos de ejecución al instalador:
   ```bash
   chmod +x install.sh
   ```
4. Ejecuta el script:
   ```bash
   ./install.sh
   ```

---

## Créditos
Creado por **Antigravity (Advanced Agentic Coding / Google DeepMind Team)**.
