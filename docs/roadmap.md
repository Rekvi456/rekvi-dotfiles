# Project roadmap

This document contains the development progress. (It can be changed)

---

# Stages

- [1. Base system](#1-base-system)
- [2. Graphics and hardware](#2-graphics-and-hardware)
- [3. Wayland desktop](#3-wayland-desktop)
- [4. Package management](#4-package-management)
- [5. Clipboard](#5-clipboard)
- [6. Installation](#6-installation)

---

# 1. Base system

> Installation and initial configuration of Arch Linux

## Progress

- [x] LiveCD of Arch Linux
- [x] Partition disks (ext4)
- [x] Network functionality check
- [x] Install base system
- [x] Configure locale
- [x] Configure timezone
- [x] Configure hostname
- [x] Create user
- [x] Configure sudo
- [x] Install and configure network-manager
- [x] Install systemd-boot
- [x] Install pipewire and wireplumber
- [x] mkinitcpio
- [x] Install greetd (login manager)
- [x] Install tuigreet (greeter for greetd)
- [x] Verify successful system boot

---

# 2. Graphics and hardware

> Configure graphics stack and hardware support

## Progress

### NVIDIA

- [x] Select appropriate driver
- [x] Install NVIDIA DKMS driver
- [x] Configure Vulkan
- [x] Verify OpenGL
- [x] Verify Vulkan

### Intel

- [x] Configure Mesa
- [x] Configure Intel Vulkan Support

### Hardware

- [x] Install brightnessctl
- [x] Configure brightness control
- [x] Configure brightness keybindings

---

# 3. Wayland desktop

> Configure the main desktop environment

## Progress

### WM (Niri)

- [x] Install Niri
- [x] Configuration files architecture
- [x] Configure monitors
- [x] Configure workspaces
- [x] Configure keyboard layouts
- [ ] Keybindings
- [ ] Window and layout rules
- [x] Default dark theme for both QT and GTK
- [ ] Customization (windows transparency, outline, etc)

### Terminal (Kitty)

- [x] Install kitty
- [ ] Configure kitty

### Shell (Fish)

- [x] Install fish
- [x] Shell by default
- [ ] Configure fish

### Launcher (Fuzzel)

- [x] Install fuzzel
- [ ] Configure app launcher
- [x] Clipboard menu

### Status bar (Waybar)

- [x] Install waybar
- [ ] Configure waybar
- [ ] Keyboard layout indicator
- [ ] Wlogout widget

### Notifications (Mako)

- [x] Install mako
- [ ] Configure Mako

### Power menu (Wlogout)

- [ ] Install w-logout
- [ ] Configure power menu

### File management

- [x] Install thunar (GUI file manager)
- [ ] Configure Thunar
- [x] Install yazi (terminal file manager)
- [ ] Configure yazi
- [x] Install loupe (image viewer)
- [x] Install file-roller (archiever)

### Browser

- [x] Install Firefox
- [ ] Configure Firefox

### Text editor (Neovim)

- [x] Install Neovim
- [ ] Configure Neovim

### Login manager

- [x] Greetd and tuigreet installed
- [x] Configure greetd
- [ ] Configure tuigreet theme

### Environment.d

- [x] Add environment.d
- [ ] Configure environment.d

---

# 4. Package management

> Configure package management tools

## Progress

- [x] Configure pacman
- [x] Enable multilib repository
- [x] Install paru
- [x] Configure AUR support

---

# 5. Clipboard

> Build clipboard history using cliphist and fuzzel

## Progress

### Research

- [x] Study cliphist documentation
- [x] Study fuzzel integration
- [x] Research Wayland clipboard limitations

### Implementation

- [x] Create clipboard history menu in fuzzel
- [x] Integrate cliphist
- [x] Restore selected entry to clipboard

### Formatting

- [x] Remove IDS from display
- [x] Detect URLs
- [x] Detect files
- [x] Detect directories
- [x] Detect images
- [x] Add icons
- [x] Display filename instead of full path
- [x] Display parent directory

### Optimization

- [x] Remove unnecessary awk processing
- [x] Replace multiple processes with Bash implementation
- [x] Simplify script architecture

---

# 6. Installation

> Automate deployment of the entire system.

## Progress

### Instalation scripts

- [ ] Installation script for .config/
- [ ] Installation script for scripts/
- [ ] Installation script for packages
- [ ] Global installation script
- [ ] .config/ with GNU Stow compatability (?)

### Documentation

- [ ] Package list
- [ ] Installation guide
