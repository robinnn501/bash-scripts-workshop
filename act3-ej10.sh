#!/bin/bash
url="https://www.tu-colegio.com"

while ! curl -s --head --request GET "$url" | grep "200 OK" >/dev/null; do
  echo "Sin conexión al sitio. Reintentando en 5 segundos..."
  sleep 5
done

echo "Conexión establecida. Abriendo navegador..."
xdg-open "$url"
