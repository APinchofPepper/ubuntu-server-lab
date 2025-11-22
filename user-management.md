# User Management + Permissions

## Part 2 - Commands Used

This document contains all the commands executed during Part 2 of the Ubuntu Server Home Lab project, focusing on user management and permissions.

## User Creation

### Create New Users

```bash
sudo adduser alice
sudo adduser bob
sudo adduser charlie
```

These commands create three new users: alice, bob, and charlie. Each user will have their own home directory and default group.

## Group Management

### Create Development Group

```bash
sudo groupadd dev
```

Creates a new group called `dev` for developers.

### Add User to Group

```bash
sudo usermod -aG dev alice
```

Adds user `alice` to the `dev` group. The `-aG` flags append the user to the group without removing them from other groups.

## Directory Creation and Permissions

### Shared Directory Setup

```bash
sudo mkdir /shared
sudo chown :dev /shared
sudo chmod 770 /shared
```

- Creates `/shared` directory
- Changes group ownership to `dev` group
- Sets permissions to `770` (rwxrwx---), allowing owner and group full access, others have no access

### Secure Directory Setup

```bash
sudo mkdir /secure
sudo chown bob:bob /secure
sudo chmod 700 /secure
```

- Creates `/secure` directory
- Changes ownership to user `bob` and group `bob`
- Sets permissions to `700` (rwx------), allowing only owner (bob) full access

## Verification Commands

### List Users

```bash
tail -n 5 /etc/passwd
# or
cat /etc/passwd | grep -E "alice|bob|charlie"
```

Shows the newly created users in the system.

### Check User Groups

```bash
groups alice
groups bob
groups charlie
```

Displays group membership for each user.

### Verify Group Exists

```bash
getent group dev
```

Shows the `dev` group and its members.

### Check Directory Permissions

```bash
ls -ld /shared
ls -ld /secure
```

Displays detailed permissions and ownership for the directories.

## Skills Demonstrated

- ✅ Linux user creation (`adduser`)
- ✅ Group creation and management (`groupadd`, `usermod`)
- ✅ File permissions (`chmod`)
- ✅ Ownership management (`chown`)
- ✅ Understanding of permission bits (700, 770)
- ✅ Real-world sysadmin concepts (shared directories, restricted access)

## Screenshots

The following screenshots demonstrate the completed tasks:

- **User List**: `screenshots/user-management/01_UserList.png` - Shows alice, bob, and charlie in `/etc/passwd`
- **User Groups**: `screenshots/user-management/02_UserGroups.png` - Displays group membership for each user
- **Shared Directory Permissions**: `screenshots/user-management/03_SharedPermissions.png` - Shows `/shared` directory with root:dev ownership and 770 permissions
- **Secure Directory Permissions**: `screenshots/user-management/04_SecurePermissions.png` - Shows `/secure` directory with bob:bob ownership and 700 permissions
- **Dev Group Verification**: `screenshots/user-management/05_DevGroup.png` - Confirms `dev` group exists with alice as a member

## Expected Results

- **Users**: alice, bob, charlie exist in `/etc/passwd`
- **Groups**: `dev` group exists with alice as a member
- **Shared Directory**: `/shared` owned by root:dev with 770 permissions
- **Secure Directory**: `/secure` owned by bob:bob with 700 permissions

