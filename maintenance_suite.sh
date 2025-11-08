#!/bin/bash
LOGFILE="/home/$USER/maintenance.log"
while true; do
    clear
    echo "==============================================="
    echo "     🧰 System Maintenance Suite (Linux OS)     "
    echo "==============================================="
    echo "1️⃣  Run Backup"
    echo "2️⃣  Update & Clean System"
    echo "3️⃣  Monitor Logs"
    echo "4️⃣  View Log File"
    echo "5️⃣  Exit"
    echo "-----------------------------------------------"
    read -p "Choose an option (1-5): " choice
    echo "-----------------------------------------------"

    case $choice in
        1) ./backup.sh ;;
        2) ./update_cleanup.sh ;;
        3) ./log_monitor.sh ;;
        4) cat "$LOGFILE" ;;
        5) echo "Goodbye 👋"; exit 0 ;;
        *) echo "❌ Invalid option. Try again." ;;
    esac

    echo
    read -p "Press Enter to continue..." temp
done
