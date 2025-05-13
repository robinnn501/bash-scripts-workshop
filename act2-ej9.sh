#!/bin/bash
if [ "$#" -ne 2 ]; then
  echo "Uso: $0 ruta_directorio nombre_archivo_salida.tar.gz"
  exit 1
fi

dir=$1
output=$2

if [ ! -d "$dir" ]; then
  echo "Error: No es un directorio válido."
  exit 1
fi

if [ -f "$output" ]; then
  read -p "El archivo ya existe. ¿Quieres sobrescribirlo? (s/n): " confirm
  if [ "$confirm" != "s" ]; then
    echo "Operación cancelada."
    exit 1
  fi
fi

tar -czf "$output" "$dir"
echo "Compresión completada: $output"
