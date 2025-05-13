#!/bin/bash
while true; do
  read -s -p "Introduce la contraseña: " pass
  echo
  if [[ ${#pass} -ge 8 && "$pass" =~ [A-Z] && "$pass" =~ [0-9] ]]; then
    echo "Contraseña válida."
    break
  else
    echo "La contraseña no cumple los requisitos."
  fi
done
