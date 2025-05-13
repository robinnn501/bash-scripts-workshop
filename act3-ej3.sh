#!/bin/bash
read -p "Nombre del archivo donde guardar: " file
[ -f "$file" ] || touch "$file"

while true; do
  read -p "Escribe una palabra (o :> para salir): " word
  [ "$word" = ":>" ] && break
  echo "$word" >> "$file"
done
