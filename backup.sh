#!/bin/bash
SOURCE="/home/$USER/Documents"
DEST="/home/$USER/Backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
LOGFILE="/home/$USER/maintenance.log"

mkdir -p "$DEST"
echo "[$(date)] Starting backup..." | tee -a "$LOGFILE"
tar -czf "$DEST/backup-$DATE.tar.gz" "$SOURCE" 2>>"$LOGFILE"

if [ $? -eq 0 ]; then
    echo "[$(date)] ✅ Backup completed." | tee -a "$LOGFILE"
else
    echo "[$(date)] ❌ Backup failed!" | tee -a "$LOGFILE"
fi
