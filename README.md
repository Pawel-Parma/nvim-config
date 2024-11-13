# Nvim Config
My personal Nvim config

## Table of Contents
- [Installation](#installation)
  - [Requirements](#1-install-requirements)
  - [Backup Old Config](#2-backup-old-nvim-config)
  - [Install Config](#3-install)
  - [Activate Config](#4-activate)
  - [Download Linters](#5-download-linters)
- [List of Conveniences](#list-of-conveniences)
  - Plugins
  - Key Bindings

# Installation
> **NOTE:**  
> Assumes Nvim v0.10.2

## 1. Install requirements:
- [ripgrep](https://github.com/BurntSushi/ripgrep#Installation) 
```sh
sudo pacman -Sy ripgrep
```

- [packer.nvim](https://github.com/wbthomason/packer.nvim#Quickstart) 
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## 2. Backup old nvim config:  
```sh
mv ~/.config/nvim ~/.config/nvim.bak
```

## 3. Install:
```sh
git clone https://github.com/Pawel-Parma/nvim-config ~/.config/nvim
```

## 4. Activate
Open file  
```sh
nvim ~/.config/nvim/lua/package_manager.lua
```
Source file
```vim
so
```
Download packages
```vim
PackerSync
```
Quit
```vim
q
```
## 5. Download linters
The linters will be downloaded automatically upon the next nvim entrance
```sh
nvim
```

# List of conveniences
<details>
  <summary>Plugins</summary>
  
  - TODO

</details>

<details>
  <summary>Key bindings</summary>

  - TODO

</details>
