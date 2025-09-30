#!/bin/bash

SOURCE="/home/djalil/Documents"

DEST="/home/djalil/sauvegardes"

mkdir -p "$DEST"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_NAME="backup_$DATE.tar.gz"

tar -czf "$DEST/$BACKUP_NAME" -C "/home/djalil" "Documents"

echo "Sauvegarde crée : $BACKUP_NAME dans $DEST"
