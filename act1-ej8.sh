#!/bin/bash

CRACK="oriolorioloriol"

echo "El resultado de ##*ori es: ${CRACK##*ori}"
echo "El resultado de #*ori es: ${CRACK#*ori}"
echo "El resultado de %%ol* es: ${CRACK%%ol*}"
echo "El resultado de %ori* es: ${CRACK%ori*}"
