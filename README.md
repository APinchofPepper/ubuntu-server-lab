# Ubuntu Server Home Lab Project

A hands-on Ubuntu Server home lab showcasing essential Linux administration skills including user management, SSH hardening, service configuration, system monitoring, and automation with Bash scripts. Built as part of an IT/SysAdmin learning path.

## Project Overview

This project complements the Windows Server + AD project and provides practical experience with Linux server administration. Each part builds upon previous knowledge, creating a comprehensive home lab environment.

## Learning Objectives

- Ubuntu Server installation and configuration
- User and group management
- SSH server hardening and security
- Service configuration and management
- System monitoring and logging
- Bash scripting and automation
- Network configuration
- Package management with apt

## Project Structure

```
ubuntu-server-lab/
├── README.md
├── vm-notes.md
├── user-management.md
├── services.md
├── backup-automation.md
├── screenshots/
│   ├── install/
│   ├── user-management/
│   ├── services/
│   └── backup-automation/
└── scripts/
    └── backup.sh
```

## Lab Parts

### Part 1 — Ubuntu Server Installation
- [x] Create VM with Ubuntu Server LTS (24.04.3)
- [x] Configure VM resources (4 CPU, 4 GB RAM, 25 GB disk)
- [x] Install SSH server
- [x] Update system packages
- [x] Screenshot of successful login: `screenshots/install/01_LogIn.png`

### Part 2 — User Management + Permissions
- [x] Create new users (alice, bob, charlie)
- [x] Create dev group and add alice to it
- [x] Create shared directory (/shared) with group permissions
- [x] Create secure directory (/secure) with restricted access
- [x] Document commands in `user-management.md`
- [x] Screenshots:
  - `screenshots/user-management/01_UserList.png` - List of created users
  - `screenshots/user-management/02_UserGroups.png` - Group membership
  - `screenshots/user-management/03_SharedPermissions.png` - Shared directory permissions
  - `screenshots/user-management/04_SecurePermissions.png` - Secure directory permissions
  - `screenshots/user-management/05_DevGroup.png` - Dev group verification

### Part 3 — Service Management
- [x] Check system services (ssh, cron, ufw)
- [x] Enable and start UFW service
- [x] Disable cron service
- [x] Install Apache web server
- [x] Manage Apache service (status, restart, enable at boot)
- [x] Document commands in `services.md`
- [x] Screenshots:
  - `screenshots/services/01_ApacheTestPage.png` - Apache default test page
  - `screenshots/services/02_SSHServiceStatus.png` - SSH service status
  - `screenshots/services/03_CronServiceStatus.png` - Cron service status
  - `screenshots/services/04_UFWServiceStatus.png` - UFW service status
  - `screenshots/services/05_ApacheInstallation.png` - Apache installation and status
  - `screenshots/services/06_ServiceControl.png` - Service control commands

### Part 4 — Backup Automation Script
- [x] Create source directory (~/important-data)
- [x] Create backups directory (~/backups)
- [x] Create backup.sh script with timestamp functionality (using vim)
- [x] Make script executable
- [x] Test script execution
- [x] Verify backup creation
- [x] Schedule script with cron (daily at 2 AM)
- [x] Document script in `backup-automation.md`
- [x] Screenshots:
  - `screenshots/backup-automation/01_ScriptCreation.png` - Creating backup.sh script with vim
  - `screenshots/backup-automation/02_ScriptExecution.png` - Running the backup script
  - `screenshots/backup-automation/03_BackupVerification.png` - Listing created backups
  - `screenshots/backup-automation/04_CronJobEntry.png` - Scheduling backup script with cron

## Prerequisites

- Virtualization software (VMware Workstation, VirtualBox, or Proxmox)
- Ubuntu Server LTS ISO (24.04 or 22.04)
- Basic understanding of Linux command line

## Notes

- See `vm-notes.md` for detailed VM configuration
- Screenshots are stored in `screenshots/` directory
- Scripts will be added to `scripts/` directory as the project progresses

## License

This project is for educational purposes.

