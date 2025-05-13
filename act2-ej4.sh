#!/bin/bash
if [ "$#" -ne 3 ]; then
  echo "Error: Debes introducir exactamente 3 parámetros."
  exit 1
fi

echo "Parámetros correctos: $1 $2 $3"
