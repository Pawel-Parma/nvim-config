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
  - [Key Bindings](#key-bindings)

# Installation
## 1. Install requirements:
- [ripgrep](https://github.com/BurntSushi/ripgrep#Installation) 

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

# List of Changes 
## Plugins 
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)  
- [laytan/cloak.nvim](https://github.com/laytan/cloak.nvim)  
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)  
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [theprimeagen/harpoon](https://github.com/theprimeagen/harpoon)  
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)  
- [fedepujol/move.nvim](https://github.com/fedepujol/move.nvim)  
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)  
- [catppuccin/nvim](https://github.com/catppuccin/nvim)  
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)  
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)  
- [mbbill/undotree](https://github.com/mbbill/undotree)  
- [romainl/vim-cool](https://github.com/romainl/vim-cool)  

## Key Bindings
```vim
vim.g.mapleader = " "
vim.g.maplocalleader = ","
```
| Key           | Modes      | Action              |
| ------------- | ---------- | ------------------- |
| Q             | n          | \<nop\>             | 
| q:            | n          | \<nop\>             | 
| \<leader\>nf  | n          | New File            | 
| \<leader\>h   | n          | :bprev\<CR\>        | 
| \<leader\>l   | n          | :bnext\<CR\>        | 
| \<Space\>     | n, v       | \<nop\>             | 
| \<Down\>      | c, i, n, v | \<nop\>             | 
| \<Up\>        | c, i, n, v | \<nop\>             | 
| \<Left\>      | c, i, n, v | \<nop\>             | 
| \<Right\>     | c, i, n, v | \<nop\>             | 
| \<leader\>p   | n          | Preview hunk        | 
| \<leader\>a   | n          | Add to harpoon list | 
| \<C-e\>       | n          | Open harpoon list   | 
| \<leader\>j   | n          | Next item from list | 
| \<leader\>k   | n          | Prev item from list | 
| \<leader\>1   | n          | Open 1st list item  | 
| \<leader\>2   | n          | Open 3nd list item  | 
| \<leader\>3   | n          | Open 3rd list item  | 
| \<leader\>4   | n          | Open 4th list item  | 
| \<leader\>5   | n          | Open 5th list item  | 
| \<leader\>6   | n          | Open 6th list item  | 
| \<leader\>7   | n          | Open 7th list item  | 
| \<leader\>8   | n          | Open 8th list item  | 
| \<leader\>9   | n          | Open 9th list item  | 
| \<leader\>0   | n          | Open 10th list item | 
| \<C-s\>       | n, x       | Format file         | 
| \<A-j\>       | i          | Move line down      | 
| \<A-k\>       | i          | Move line up        | 
| \<A-h\>       | i          | Move word left      | 
| \<A-l\>       | i          | Move word right     | 
| \<A-j\>       | x          | Move block down     | 
| \<A-k\>       | x          | Move block up       | 
| \<A-h\>       | x          | Move block left     | 
| \<A-l\>       | x          | Move block right    | 
| \<leader\>fs  | n          | Live grep           |
| \<leader\>fg  | n          | Find git files      |
| \<leader\>fb  | n          | Find buffers        |
| \<leader\>fh  | n          | Find help tags      | 
| \<leader\>fe  | n          | Find files          |
| \<leader\>ef  | n          | Find files          |
| \<leader\>t   | n          | Search TODOs        |
| \<leader\>u   | n          | Toggle undo tree    |

There are also some default kebinds or functions provided by plugins, for those go to the plugin github repository.
  
