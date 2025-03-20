#!/usr/bin/env bash

for id in $(docker ps -q)
do
  if[[ $(dockere port "${id}") == *"${1}"* ]]; then
    echo "stoping container ${id}"
    docker stop "${id}" docker rm "${id}"
  fi
done
