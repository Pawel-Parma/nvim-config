# Nvim Config
My personal Nvim config

> [!important] 
> Requires Neovim v0.11.0

## Table of Contents
- [Installation](#installation)
  - [Requirements](#1-install-requirements)
  - [Backup Old Config](#2-backup-old-nvim-config)
  - [Install Config](#3-install)
  - [Activate Config](#4-activate)
  - [Download Linters](#5-download-linters)
- [List of Changes](#list-of-changes)
  - [Plugins](#plugins)

# Installation
## 1. Install requirements:
- [ripgrep](https://github.com/BurntSushi/ripgrep#Installation) 
- [fd](https://github.com/sharkdp/fd) 
- [node](https://github.com/nodejs/node)
- [tree-sitter-cli](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)
- [deno](https://github.com/denoland/deno)

## 2. Backup old nvim config:  
```sh
mv ~/.config/nvim ~/.config/nvim.bak
```

## 3. Install:
```sh
git clone https://github.com/Pawel-Parma/nvim-config ~/.config/nvim
```

## 4. Activate
The packages and linters will be automatically downloaded the next time you open neovim
```sh
nvim
```

## 5. Health check
To ensure that the installation procceded as expected, inside neovim run
```vim
:chechhealth
```


# List of Changes 
## Plugins 
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)  
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [saghen/blink.cmp](https://github.com/saghen/blink.cmp)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [laytan/cloak.nvim](https://github.com/laytan/cloak.nvim)  
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)  
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [theprimeagen/harpoon](https://github.com/theprimeagen/harpoon)  
- [junnplus/lsp-setup.nvim](https://github.com/junnplus/lsp-setup.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)  
- [nvim-mini/mini.icons](https://github.com/nvim-mini/mini.icons)
- [fedepujol/move.nvim](https://github.com/fedepujol/move.nvim)  
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)  
- [stevearc/oil.nvim](https://github.com/stevearc/oil.nvim)  
- [toppair/peek.nvim](https://github.com/toppair/peek.nvim)  
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)  
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)  
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)  
- [mbbill/undotree](https://github.com/mbbill/undotree)  
- [romainl/vim-cool](https://github.com/romainl/vim-cool)  
 
