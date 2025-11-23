# Service Management

## Part 3 - Service Configuration and Management

This document contains all the commands executed during Part 3 of the Ubuntu Server Home Lab project, focusing on system service management using `systemctl`.

## Service Status Checks

### Check System Services

```bash
systemctl status ssh
systemctl status cron
systemctl status ufw
```

These commands check the current status of three essential system services:
- **SSH**: Secure Shell service for remote access
- **Cron**: Task scheduler service
- **UFW**: Uncomplicated Firewall service

## Service Control

### Enable and Start Service

```bash
sudo systemctl enable --now ufw
```

- `enable`: Configures the service to start automatically at boot
- `--now`: Starts the service immediately (combines `enable` and `start`)

### Disable Service

```bash
sudo systemctl disable cron
```

Disables the cron service from starting automatically at boot. The service will not start on system reboot.

## Apache Web Server Installation and Management

### Install Apache

```bash
sudo apt install apache2 -y
```

Installs the Apache2 web server package. The `-y` flag automatically confirms the installation.

### Check Apache Status

```bash
sudo systemctl status apache2
```

Displays the current status of the Apache service, including whether it's running, enabled, and recent log entries.

### Restart Apache Service

```bash
sudo systemctl restart apache2
```

Restarts the Apache service. This is useful after configuration changes or to apply updates.

### Enable Apache at Boot

```bash
sudo systemctl enable apache2
```

Configures Apache to start automatically when the system boots.

## Common systemctl Commands

| Command | Description |
|---------|-------------|
| `systemctl status <service>` | Check service status |
| `systemctl start <service>` | Start a service |
| `systemctl stop <service>` | Stop a service |
| `systemctl restart <service>` | Restart a service |
| `systemctl reload <service>` | Reload configuration without stopping |
| `systemctl enable <service>` | Enable service at boot |
| `systemctl disable <service>` | Disable service at boot |
| `systemctl enable --now <service>` | Enable and start service immediately |

## Services Managed

### SSH (sshd)
- **Purpose**: Secure remote access to the server
- **Status**: Running and enabled (installed in Part 1)
- **Port**: 22

### Cron
- **Purpose**: Task scheduler for automated jobs
- **Status**: Disabled (as per Part 3 tasks)
- **Note**: Disabled to prevent automatic startup

### UFW (Uncomplicated Firewall)
- **Purpose**: Firewall management tool
- **Status**: Enabled and running
- **Note**: Enabled with `--now` flag to start immediately

### Apache2
- **Purpose**: Web server
- **Status**: Installed, enabled, and running
- **Default Port**: 80 (HTTP)
- **Test Page**: Accessible at `http://<server-ip>` or `http://localhost`

## Skills Demonstrated

- ✅ Service status checking (`systemctl status`)
- ✅ Service control (start, stop, restart)
- ✅ Service enablement at boot (`systemctl enable`)
- ✅ Service disablement (`systemctl disable`)
- ✅ Package installation with apt
- ✅ Real-world service management concepts

## Expected Results

- **SSH**: Service is running and enabled
- **Cron**: Service is disabled (won't start at boot)
- **UFW**: Service is enabled and running
- **Apache2**: Service is installed, enabled, running, and accessible via web browser

## Screenshots

The following screenshots demonstrate the completed tasks:

- **Apache Test Page**: `screenshots/services/01_ApacheTestPage.png` - Shows Apache default page in browser
- **SSH Service Status**: `screenshots/services/02_SSHServiceStatus.png` - Shows SSH service status
- **Cron Service Status**: `screenshots/services/03_CronServiceStatus.png` - Shows cron service status (disabled)
- **UFW Service Status**: `screenshots/services/04_UFWServiceStatus.png` - Shows UFW service status (enabled)
- **Apache Installation**: `screenshots/services/05_ApacheInstallation.png` - Shows Apache installation and status
- **Service Control Commands**: `screenshots/services/06_ServiceControl.png` - Shows enable/disable/restart commands

