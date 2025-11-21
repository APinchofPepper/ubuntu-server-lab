# VM Configuration Notes

## Virtual Machine Specifications

### Hardware Configuration
- **CPU**: 2 vCPU
- **RAM**: 2 GB
- **Disk**: 20 GB
- **Network**: NAT (default)

### Software Configuration
- **OS**: Ubuntu Server LTS (24.04 or 22.04)
- **Hypervisor**: [VMware Workstation / VirtualBox / Proxmox]
- **Installation Date**: [Date]

## Installation Steps Completed

1. ✅ Created new VM with specified resources
2. ✅ Installed Ubuntu Server LTS
3. ✅ Installed SSH server (`openssh-server`)
4. ✅ Updated system packages (`sudo apt update && sudo apt upgrade -y`)

## Network Configuration

- **IP Address**: [To be configured]
- **Hostname**: [To be configured]
- **SSH Port**: 22 (default)

## Initial System Information

- **Kernel Version**: [Run `uname -r` to get]
- **Ubuntu Version**: [Run `lsb_release -a` to get]
- **Disk Usage**: [Run `df -h` to get]

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

