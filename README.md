# System Maintenance Script (Arch Linux)

This Bash script automates routine system maintenance tasks for Arch Linux systems. It helps keep your system clean, updated, and free from unnecessary packages.

## Overview

The script performs the following actions:

1. **System Update**
   Runs a full system update using `sudo pacman -Syu --noconfirm`.

2. **Remove Orphaned Packages**
   Detects and removes packages that are no longer required by any installed software.

3. **Clean Old Package Cache**
   Frees up disk space by removing old package files from the cache directory.

4. **Check for Leftover Config Files**
   Detects leftover configuration files or packages that may need manual review.

5. **Completion Message**
   Displays a summary message when all maintenance tasks are finished.

## Usage

1. Clone or download this repository.
2. Make the script executable:

   ```bash
   chmod +x maintenance.sh
   ```

3. Run the script:

   ```bash
   ./maintenance.sh
   ```

## Notes

* This script is designed for **Arch Linux** and derivatives (e.g., Manjaro, EndeavourOS).
* It requires **sudo privileges** to perform package management tasks.
* Review the output before confirming any removals or modifications if you modify the script to prompt for input.
