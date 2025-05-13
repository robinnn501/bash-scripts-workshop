#!/bin/bash
until [ -d "$dir" ]; do
  read -p "Introduce la ruta de un directorio: " dir
done

ls -ld "$dir"
count=$(find "$dir" -mindepth 1 | wc -l)
echo "Contiene $count archivos o carpetas:"
ls "$dir"
