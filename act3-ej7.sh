#!/bin/bash
while true; do
  read -p "Elige (piedra, papel, tijera o salir): " player
  [ "$player" = "salir" ] && break

  choices=("piedra" "papel" "tijera")
  machine=${choices[$RANDOM % 3]}
  echo "La máquina eligió: $machine"

  if [ "$player" = "$machine" ]; then
    echo "Empate"
  elif [[ "$player" = "piedra" && "$machine" = "tijera" ]] || \
       [[ "$player" = "papel" && "$machine" = "piedra" ]] || \
       [[ "$player" = "tijera" && "$machine" = "papel" ]]; then
    echo "Ganaste"
  else
    echo "Perdiste"
  fi
done
