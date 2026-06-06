# Apache Folders First (mod_autoindex)

Este repositorio contiene la configuración de `.htaccess` para ordenar las carpetas primero y de forma alfabética en el listado de directorios nativo de Apache (`mod_autoindex`).

## Características
- **Carpetas Primero**: Agrupa y muestra las carpetas al principio de la lista.
- **Orden Alfabético**: Ordena tanto carpetas como archivos de forma alfabética (A-Z) ignorando mayúsculas/minúsculas.
- **Nombres Completos**: Evita que los nombres de los archivos largos se recorten con puntos suspensivos (`NameWidth=*`).
- **Tabla HTML**: Muestra el indexado usando una estructura de tabla limpia.

## Uso

1. Descarga o copia el contenido del archivo `.htaccess` en la raíz de tu carpeta web (por ejemplo, `/var/www/html/`).
2. Si Apache no reconoce el archivo `.htaccess` (por defecto viene desactivado), debes habilitar la directiva `AllowOverride`.

### Cómo habilitar AllowOverride en Apache (Ubuntu/Debian)

Abre el archivo de configuración de Apache (usualmente `/etc/apache2/apache2.conf`):
```bash
sudo nano /etc/apache2/apache2.conf
```

Busca el bloque de directivas para tu carpeta `/var/www/` y cambia `AllowOverride None` por `AllowOverride All`:
```apache
<Directory /var/www/>
	Options Indexes FollowSymLinks
	AllowOverride All
	Require all granted
</Directory>
```

Guarda los cambios y recarga el servidor Apache:
```bash
sudo systemctl reload apache2
```

## Créditos
Creado por **Antigravity (Advanced Agentic Coding / Google DeepMind Team)**.
