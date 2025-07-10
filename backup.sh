#!/bin/sh

echo "My Backup Script"
echo "This script will create a backup"
SOURCE=$1
BACKUP_DIR=$2
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$BACKUP_DIR"

if [ -d "$SOURCE" ]; then
    echo "backing up directory : $SOURCE"
    tar -cvf "$BACKUP_FILE" -C "$SOURCE" .
    echo "file backuped"
    mv $SOURCE $BACKUP_DIR
else
    echo "source is not a directory"
    exit 1
fi




