# 🧰 Bash Scripting Suite for System Maintenance

## 📖 Overview
This project automates common **Linux system maintenance tasks** using Bash scripts.  
It is part of the **Capstone Project – Linux OS and LSP Module**.  

The suite includes multiple scripts for **backup, system updates, and log monitoring**,  
combined into a **menu-driven main program** for easy use.

---

## 🎯 Objectives
- Automate daily system maintenance operations  
- Learn Bash scripting and Linux system administration  
- Implement modular scripts and combine them into one interactive program  

---

## 📂 Project Structure
| File Name | Description |
|------------|-------------|
| `backup.sh` | Creates compressed backups of important directories |
| `update_cleanup.sh` | Updates the system, removes unused packages, and cleans cache |
| `log_monitor.sh` | Checks system logs for specific keywords like “error” |
| `maintenance_suite.sh` | Menu-driven script that executes all the above tasks |
| `maintenance.log` | Log file storing all activity and script outputs |

---

## ⚙️ System Requirements
- Ubuntu or any Debian-based Linux distribution  
- Bash shell (default in most Linux systems)  
- `tar` and `apt` utilities installed  
- Git (for version control and submission)

---

## 🏗️ Installation & Setup

### Step 1 — Clone the Repository
```bash
git clone https://github.com/YOUR-USERNAME/bash-scripting-suite.git
cd bash-scripting-suite
