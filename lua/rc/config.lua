-- disable compatibility with vi
vim.opt.compatible = false

-- Disable netrw
vim.g.netrw_banner = 0
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- leader
vim.g.mapleader = " "

-- mouse
vim.opt.mouse = ""

-- cursor
vim.opt.scrolloff = 12

-- line numbering
vim.opt.rnu = true
vim.opt.nu = true

-- search
-- vim.opt.ignorecase = true
vim.opt.showmatch = true
vim.opt.incsearch = true

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.updatetime = 50

-- 24 bit color
vim.termguicolors = true

-- columns
vim.opt.colorcolumn = "120"
vim.opt.signcolumn = "yes"

-- lines
vim.opt.cursorline = true

-- smooth up nvim
vim.opt.ttyfast = true
