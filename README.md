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
- [node](https://github.com/nodejs/node)
- [tree-sitter-cli](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)
- [deno](https://https://github.com/denoland/deno)

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
- [echasnovski/mini.icons](https://github.com/echasnovski/mini.icons)
- [fedepujol/move.nvim](https://github.com/fedepujol/move.nvim)  
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)  
- [stevearc/oil.nvim](https://github.com/stevearc/oil.nvim)  
- [toppair/peek.nvim](https://github.com/toppair/peek.nvim)  
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
| Key                     | Modes   | Action                | Filetype |
| ----------------------- | ------- | --------------------- | -------- |
| Q                       | n       | \<nop\>               | all      |
| q:                      | n       | \<nop\>               | all      | 
| \<leader\>nf            | n       | New File              | all      | 
| \<leader\>h             | n       | :bprev\<CR\>          | all      | 
| \<leader\>l             | n       | :bnext\<CR\>          | all      | 
| \<Space\>               | n, v    | \<nop\>               | all      | 
| \<Down\>                | i, n, v | \<nop\>               | all      | 
| \<Up\>                  | i, n, v | \<nop\>               | all      | 
| \<Left\>                | i, n, v | \<nop\>               | all      | 
| \<Right\>               | i, n, v | \<nop\>               | all      | 
| \<leader\>p             | n       | Preview hunk          | all      | 
| \<leader\>a             | n       | Add to harpoon list   | all      | 
| \<C-e\>                 | n       | Open harpoon list     | all      | 
| \<leader\>j             | n       | Next item from list   | all      | 
| \<leader\>k             | n       | Prev item from list   | all      | 
| \<leader\>1             | n       | Open 1st list item    | all      | 
| \<leader\>2             | n       | Open 3nd list item    | all      | 
| \<leader\>3             | n       | Open 3rd list item    | all      | 
| \<leader\>4             | n       | Open 4th list item    | all      | 
| \<leader\>5             | n       | Open 5th list item    | all      | 
| \<leader\>6             | n       | Open 6th list item    | all      | 
| \<leader\>7             | n       | Open 7th list item    | all      | 
| \<leader\>8             | n       | Open 8th list item    | all      | 
| \<leader\>9             | n       | Open 9th list item    | all      | 
| \<leader\>0             | n       | Open 10th list item   | all      | 
| gd                      | n       | Go to definition      | all      |
| gD                      | n       | Go to declaration     | all      |
| gi                      | n       | Go to implementation  | all      |
| gr                      | n       | Show references       | all      |
| go                      | n       | Go to type definition | all      |
| ca                      | n       | Code action           | all      |
| K                       | n       | Show hover            | all      |
| \<C-k\>                 | n       | Show signature help   | all      |
| \<leader\>r             | n       | Rename                | all      |
| \<leader\>fo            | n, x    | Format                | all      |
| \<C-s\>                 | n, x    | Save and format       | all      |
| \<leader\>d             | n       | Open diagnostic       | all      |
| \[d                     | n       | Go to prev diagnostic | all      |
| \]d                     | n       | Go to next diagnostic | all      |
| \<A-j\>                 | i       | Move line down        | all      | 
| \<A-k\>                 | i       | Move line up          | all      | 
| \<A-h\>                 | i       | Move word left        | all      | 
| \<A-l\>                 | i       | Move word right       | all      | 
| \<A-j\>                 | x       | Move block down       | all      | 
| \<A-k\>                 | x       | Move block up         | all      | 
| \<A-h\>                 | x       | Move block left       | all      | 
| \<A-l\>                 | x       | Move block right      | all      | 
| \<leader\>i             | n       | Toggle neotree        | all      | 
| -                       | n       | Open oil buffer       | all      | 
| \<leader\>o             | n       | Toggle oil float      | all      | 
| \<leader\>fs            | n       | Live grep             | all      |
| \<leader\>fg            | n       | Find git files        | all      |
| \<leader\>fb            | n       | Find buffers          | all      |
| \<leader\>fh            | n       | Find help tags        | all      | 
| \<leader\>fk            | n       | Find keymaps          | all      | 
| \<leader\>fe            | n       | Find files            | all      |
| \<leader\>ef            | n       | Find files            | all      |
| \<leader\>t             | n       | Search TODOs          | all      |
| \<leader\>x             | n       | Run line in nvim      | lua      |
| \<leader\>x             | x       | Run selected in nvim  | lua      |
| \<leader\>\<leader\>x   | n       | Run file in nvim      | lua      |
| \<leader\>m             | n       | Toggle preview        | markdown |

There are also some default kebinds or functions provided by plugins, for those go to the plugin github repository.
  
