#!/usr/bin/env bash

for id in $(docker ps -q)
do
  if [[ $(docker port "${id}") == *"${1}"* ]]; then
    echo "Stopping container ${id}"
    docker stop "${id}" && docker rm "${id}"
  fi
done
