# Backup Automation Script

## Part 4 - Bash Scripting and Automation

This document contains the backup automation script created during Part 4 of the Ubuntu Server Home Lab project, demonstrating Bash scripting skills and automation concepts.

## Overview

The backup script automatically creates timestamped compressed backups of a specified directory. This script will later be scheduled with cron for automated backups.

## Step-by-Step Implementation

### 1. Create Source Directory

Create a folder with data to back up:

```bash
mkdir ~/important-data
echo "This is important" > ~/important-data/info.txt
```

This creates a directory called `important-data` in the home directory with a sample file.

### 2. Create Backups Directory

Create a directory to store all backups:

```bash
mkdir ~/backups
```

This directory will contain all backup archives created by the script.

### 3. Create the Backup Script

Create the backup script file:

```bash
vim ~/backup.sh
```

**Script Contents:**

```bash
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
```

**Save and exit in vim:**
- Press `ESC` to enter command mode
- Type `:wq` and press `ENTER` to write and quit
- Or type `:x` and press `ENTER` to save and exit

### 4. Make Script Executable

```bash
chmod +x ~/backup.sh
```

Grants execute permissions to the script so it can be run directly.

### 5. Test the Script

Run the backup script:

```bash
./backup.sh
```

Verify backups were created:

```bash
ls ~/backups
```

Expected output:
```
backup_2025-11-22_19-32-11.tar.gz
```

### 6. Schedule with Cron

Set the script to run automatically every day at 2 AM using cron:

```bash
crontab -e
```

Add the following line to schedule the backup script:

```
0 2 * * * /home/jack/backup.sh
```

**Cron syntax explanation:**
- `0 2 * * *` means: minute 0, hour 2 (2 AM), every day of month, every month, every day of week
- `/home/jack/backup.sh` is the full path to the backup script

**Save and exit in vim:**
- Press `ESC` to enter command mode
- Type `:wq` and press `ENTER` to write and quit

Verify the cron job was added:

```bash
crontab -l
```

This will display all scheduled cron jobs for the current user.

## Script Breakdown

### Shebang Line
```bash
#!/bin/bash
```
Specifies that the script should be executed using the Bash shell.

### Variables
- `SOURCE`: Directory to be backed up (`~/important-data`)
- `DEST`: Destination directory for backups (`~/backups`)
- `TIME`: Timestamp in format `YYYY-MM-DD_HH-MM-SS`
- `BACKUP_FILE`: Full path to the backup archive with timestamp

### Backup Command
```bash
tar -czf $BACKUP_FILE $SOURCE
```
- `tar`: Archive utility
- `-c`: Create archive
- `-z`: Compress with gzip
- `-f`: Specify filename
- Creates a compressed tar archive of the source directory

### Output
The script prints a confirmation message with the backup file path.

## File Structure

```
~
├── important-data/
│   └── info.txt
├── backups/
│   └── backup_YYYY-MM-DD_HH-MM-SS.tar.gz
└── backup.sh
```

## Skills Demonstrated

- ✅ Bash scripting fundamentals
- ✅ Variable usage in scripts
- ✅ Command substitution (`$(date ...)`)
- ✅ File archiving with `tar`
- ✅ File permissions (`chmod`)
- ✅ Automation concepts
- ✅ Script testing and verification
- ✅ Cron job scheduling
- ✅ Task automation with cron

## Usage

### Manual Execution
```bash
./backup.sh
```

### Verify Backup Contents
```bash
tar -tzf ~/backups/backup_YYYY-MM-DD_HH-MM-SS.tar.gz
```

### Extract Backup
```bash
tar -xzf ~/backups/backup_YYYY-MM-DD_HH-MM-SS.tar.gz
```

## Next Steps

- ✅ Schedule the script with cron for automated backups (completed)
- Add error handling and logging
- Implement backup rotation (keep only last N backups)
- Add email notifications on backup completion/failure
- Create restore functionality
- Add logging to track backup history

## Screenshots

The following screenshots demonstrate the completed tasks:

- **Script Creation**: `screenshots/backup-automation/01_ScriptCreation.png` - Creating backup.sh script with vim
- **Script Execution**: `screenshots/backup-automation/02_ScriptExecution.png` - Running the backup script
- **Backup Verification**: `screenshots/backup-automation/03_BackupVerification.png` - Listing created backups
- **Cron Job Entry**: `screenshots/backup-automation/04_CronJobEntry.png` - Scheduling backup script with cron (runs daily at 2 AM)

