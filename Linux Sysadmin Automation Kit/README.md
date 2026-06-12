# 🐧 Linux Sysadmin Automation Kit

This project features a system administrator utility script (`healthcheck.sh`) designed to automate routine system diagnostics, logging vital information to a structured report file.

---

## 🛠️ Core Utilities

- **Disk Usage Monitor**: Checks storage statuses and capacities on active mount volumes.
- **Process Activity Monitor**: Logs all running background tasks and system processes.
- **Auto logging**: Appends a timestamped report to a file for continuous log aggregation.

---

## 📂 Project Structure

```text
Linux Sysadmin Automation Kit/
├── healthcheck.sh       # Executable Bash script containing diagnostic routines
└── health_report.log    # Output log file capturing historical execution history
```

---

## 🚀 Usage Guide

### 1. Make the script executable
Before running the shell script, ensure that execution permissions are configured:
```bash
chmod +x healthcheck.sh
```

### 2. Run the diagnostics
Execute the health check command:
```bash
./healthcheck.sh
```

### 3. Check the logs
To inspect the newly appended logs in real-time, view the health report output file:
```bash
tail -n 30 health_report.log
```

---

## ⚙️ Script Mechanism
The script performs the following operations:
1. Logs a header with the current execution timestamp (`date`).
2. Appends detailed disk volume usage (`df -h`).
3. Logs a snapshot of all active processes (`tasklist` / `ps`).
4. Closes the report entry with a status completion message.
