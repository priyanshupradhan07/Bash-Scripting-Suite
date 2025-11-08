#!/bin/bash
LOGFILE="/home/$USER/maintenance.log"

echo "[$(date)] Updating system..." | tee -a "$LOGFILE"
sudo apt update -y && sudo apt upgrade -y >>"$LOGFILE" 2>&1
sudo apt autoremove -y && sudo apt autoclean -y >>"$LOGFILE" 2>&1

if [ $? -eq 0 ]; then
    echo "[$(date)] ✅ System updated and cleaned." | tee -a "$LOGFILE"
else
    echo "[$(date)] ❌ Update failed." | tee -a "$LOGFILE"
fi

