#!/bin/bash
LOGFILE="/home/$USER/maintenance.log"
SYSLOG="/var/log/syslog"
KEYWORD="error"

echo "[$(date)] Checking logs..." | tee -a "$LOGFILE"
if grep -iq "$KEYWORD" "$SYSLOG"; then
    echo "[$(date)] ⚠️ '$KEYWORD' found in logs!" | tee -a "$LOGFILE"
else
    echo "[$(date)] ✅ No '$KEYWORD' found." | tee -a "$LOGFILE"
fi
