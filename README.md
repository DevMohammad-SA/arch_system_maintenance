# Arch System Maintenance

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/DevMohammad-SA/arch_system_maintenance/blob/master/LICENSE)
[![Shell](https://img.shields.io/badge/Language-Bash-green.svg)](https://www.gnu.org/software/bash/)
[![Arch Linux](https://img.shields.io/badge/OS-Arch%20Linux-1793D1.svg?logo=archlinux&logoColor=white)](https://archlinux.org/)

A lightweight Bash script that automates routine system maintenance tasks for Arch Linux. Keep your system clean, up-to-date, and free from unnecessary packages — all in one command.

## Features

| Task | Description |
|------|-------------|
| **System Update** | Performs a full system upgrade via `pacman -Syu` |
| **Orphan Removal** | Detects and removes packages no longer required by any installed software |
| **Cache Cleanup** | Frees disk space by clearing old package files from the cache |
| **Leftover Detection** | Identifies leftover configuration files or packages for manual review |
| **Color-coded Output** | Uses ANSI colors for clear, readable terminal output |

## Screenshot

<p align="center">
  <img width="430" height="373" alt="Script output screenshot" src="https://github.com/user-attachments/assets/8cba2556-4fa9-4ac2-b6a5-b7c96341fc08" />
</p>

## Prerequisites

- **Arch Linux** or an Arch-based distro (e.g., Manjaro, EndeavourOS)
- **Bash** (pre-installed on most Linux systems)
- **sudo** privileges for package management operations

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/DevMohammad-SA/arch_system_maintenance.git
cd arch_system_maintenance
```

### 2. Make the script executable

```bash
chmod +x maintenance.sh
```

### 3. Run the script

```bash
./maintenance.sh
```

> [!TIP]
> You can add an alias to your shell configuration for quick access:
> ```bash
> alias maintain='~/arch_system_maintenance/maintenance.sh'
> ```

## What It Does

```
┌─────────────────────────────────────┐
│  1. Update system (pacman -Syu)     │
│  2. Remove orphaned packages        │
│  3. Clean old package cache         │
│  4. Check for leftover configs      │
│  5. Display completion summary      │
└─────────────────────────────────────┘
```

## Important Notes

- The script runs with `--noconfirm` — packages are updated and orphans are removed **without prompts**. Review the script before running if you prefer manual confirmation.
- Always ensure you have a **recent backup** before performing system maintenance.
- The script uses `pacman` exclusively. If you use an AUR helper (e.g., `yay`, `paru`), you may want to extend the script accordingly.

## Contributing

Contributions are welcome! If you have ideas for improvements:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-improvement`)
3. Commit your changes (`git commit -m 'Add my improvement'`)
4. Push to the branch (`git push origin feature/my-improvement`)
5. Open a Pull Request

## 📄 License

This project is licensed under the [MIT License](LICENSE).
