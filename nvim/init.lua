-- disable compatibility with vi
vim.opt.compatible = false

-- disable mouse
vim.opt.mouse = ""

-- line numbering and cursor line
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true

-- enable syntax highlighting
vim.cmd("syntax on")

-- use system clipboard
-- vim.opt.clipboard = "unnamedplus"

-- searching options
vim.opt.ignorecase = true
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wildmode = { "longest", "list" }

-- tabs and indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

-- enable plugins and filetype-based indenting
vim.cmd("filetype plugin indent on")
vim.cmd("filetype plugin on")

-- enable persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.nvim/undodir")

-- speed up nvim
vim.opt.ttyfast = true

