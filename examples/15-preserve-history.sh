#!/bin/bash

# UniFi Data Directory
DATA_DIR="/data"

mkdir -p ${DATA_DIR}/.home

for file in .ash_history .bash_history; do
  if [ ! -f ${DATA_DIR}/.home/$file ]; then
    touch /root/$file
    cp /root/$file ${DATA_DIR}/.home/$file
    chown root:root ${DATA_DIR}/.home/$file
    chmod 0600 ${DATA_DIR}/.home/$file
  fi
  ln -sf ${DATA_DIR}/.home/$file /root/$file
done
