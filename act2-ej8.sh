#!/bin/bash
if [ "$#" -ne 1 ]; then
  echo "Uso correcto: $0 ruta_archivo_o_directorio"
  exit 1
fi

if [ -d "$1" ]; then
  echo "Es un directorio."
elif [ -f "$1" ]; then
  echo "Es un archivo."
  extension="${1##*.}"
  echo "Extensión: $extension"
else
  echo "No existe."
fi
