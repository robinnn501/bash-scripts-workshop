#!/bin/bash
if [ "$#" -ne 1 ]; then
  echo "Uso correcto: $0 ruta_archivo"
  exit 1
fi

[ -r "$1" ] && echo "Permiso de lectura"
[ -w "$1" ] && echo "Permiso de escritura"
[ -x "$1" ] && echo "Permiso de ejecución"
