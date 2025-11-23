#!/bin/bash

# Source directory
SOURCE="$HOME/important-data"

# Destination directory
DEST="$HOME/backups"

# Create timestamp
TIME=$(date +"%Y-%m-%d_%H-%M-%S")

# Create the backup filename
BACKUP_FILE="$DEST/backup_$TIME.tar.gz"

# Run the backup
tar -czf $BACKUP_FILE $SOURCE

echo "Backup completed: $BACKUP_FILE"

