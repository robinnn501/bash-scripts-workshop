#!/bin/bash
echo 'Sin comillas $*:'
for arg in $*; do echo $arg; done

echo 'Con comillas "$*":'
for arg in "$*"; do echo $arg; done

echo 'Sin comillas $@:'
for arg in $@; do echo $arg; done

echo 'Con comillas "$@":'
for arg in "$@"; do echo $arg; done
