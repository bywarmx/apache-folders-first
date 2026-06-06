#!/bin/bash
# Script de instalación para apache-folders-first
# Autores: Antigravity (Advanced Agentic Coding / Google DeepMind Team)

echo "============================================="
echo " Instalador de Apache Folders First"
echo "============================================="
echo ""

# Definir la ruta de destino (por defecto /var/www/html)
TARGET_DIR="/var/www/html"

# Preguntar al usuario si desea cambiar la ruta por defecto
read -p "Introduce la ruta de tu carpeta html [$TARGET_DIR]: " user_dir
if [ ! -z "$user_dir" ]; then
    TARGET_DIR="$user_dir"
fi

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: El directorio $TARGET_DIR no existe."
    exit 1
fi

# Copiar el archivo .htaccess
echo "Copiando archivo .htaccess a $TARGET_DIR..."
if [ -f ".htaccess" ]; then
    cp .htaccess "$TARGET_DIR/.htaccess"
else
    echo "Descargando .htaccess desde el repositorio de GitHub..."
    curl -sSL -o "$TARGET_DIR/.htaccess" https://raw.githubusercontent.com/bywarmx/apache-folders-first/main/.htaccess
fi
echo "¡Archivo .htaccess copiado con éxito en $TARGET_DIR!"

# Habilitar AllowOverride All en la configuración de Apache
echo ""
read -p "¿Deseas habilitar AllowOverride All en la configuración de Apache? (requiere sudo) [s/N]: " confirm_apache
if [[ "$confirm_apache" =~ ^[sS]$ ]]; then
    APACHE_CONF="/etc/apache2/apache2.conf"
    if [ -f "$APACHE_CONF" ]; then
        echo "Modificando $APACHE_CONF..."
        sudo sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' "$APACHE_CONF"
        echo "Recargando Apache..."
        sudo systemctl reload apache2
        echo "¡Apache configurado y recargado con éxito!"
    else
        echo "Advertencia: No se encontró el archivo de configuración en $APACHE_CONF."
    fi
fi

echo ""
echo "============================================="
echo " ¡Instalación completada con éxito!"
echo "============================================="
