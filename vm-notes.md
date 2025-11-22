# VM Configuration Notes

## Virtual Machine Specifications

### Hardware Configuration
- **CPU**: 4 vCPU
- **RAM**: 4 GB
- **Disk**: 25 GB
- **Network**: NAT (default)

### Software Configuration
- **OS**: Ubuntu Server 24.04.3 LTS
- **Hypervisor**: Oracle VM VirtualBox
- **Installation Date**: 11/21/2025

## Installation Steps Completed

1. ✅ Created new VM with specified resources
2. ✅ Installed Ubuntu Server LTS
3. ✅ Installed SSH server (`openssh-server`)
4. ✅ Updated system packages (`sudo apt update && sudo apt upgrade -y`)

## Network Configuration

- **IP Address**: 10.0.2.15 (enp0s3)
- **Hostname**: ubuntu-server
- **SSH Port**: 22 (default)

## Initial System Information

- **Kernel Version**: 6.8.0-88-generic x86_64
- **Ubuntu Version**: 24.04.3 LTS
- **Disk Usage**: 42.4% of 11.21GB (root filesystem)
- **Memory Usage**: 7% (of 4 GB)
- **System Load**: 0.2
- **Processes**: 152

## Screenshots

### Part 1 - Installation
- **Successful Login**: `screenshots/install/01_LogIn.png` - Shows successful login and initial system information

### Part 2 - User Management
- **User List**: `screenshots/user-management/01_UserList.png` - List of created users (alice, bob, charlie)
- **User Groups**: `screenshots/user-management/02_UserGroups.png` - Group membership verification
- **Shared Permissions**: `screenshots/user-management/03_SharedPermissions.png` - /shared directory permissions
- **Secure Permissions**: `screenshots/user-management/04_SecurePermissions.png` - /secure directory permissions
- **Dev Group**: `screenshots/user-management/05_DevGroup.png` - Dev group verification

## Notes

- SSH server is installed and enabled
- System is up to date as of installation date
- Root login via SSH is disabled by default (Ubuntu best practice)

## Next Steps

- Configure static IP (if needed)
- Set hostname
- Create additional users
- Harden SSH configuration
- Configure firewall

