#!/bin/bash
if [ "$#" -ne 1 ]; then
  echo "Uso correcto: $0 ruta_archivo"
  exit 1
fi

if [ ! -e "$1" ]; then
  echo "El archivo no existe."
  exit 1
fi

file "$1"

[ -r "$1" ] && echo "Es legible"
[ -w "$1" ] && echo "Es escribible"
[ -x "$1" ] && echo "Es ejecutable"
