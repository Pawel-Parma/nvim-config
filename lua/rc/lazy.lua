local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    install = { missing = true, colorscheme = { "catppuccin" } },
    checker = { enabled = true, notify = false },

    spec = {
        { "catppuccin/nvim",     name = "catppuccin", priority = 1000 },
        { "theprimeagen/harpoon" },
        {
            "nvim-telescope/telescope.nvim",
            branch = "0.1.x",
            dependencies = { { "nvim-lua/plenary.nvim" } }
        },
        { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
        { "mbbill/undotree" },
        {
            "nvim-tree/nvim-tree.lua",
            dependencies = { "nvim-lua/plenary.nvim" }
        },
        { "tpope/vim-fugitive" },
        { "romainl/vim-cool" },
        {
            "folke/todo-comments.nvim",
            dependencies = { "nvim-lua/plenary.nvim" }
        },

        { 'neovim/nvim-lspconfig' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/nvim-cmp' },
        {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },

    },
})
