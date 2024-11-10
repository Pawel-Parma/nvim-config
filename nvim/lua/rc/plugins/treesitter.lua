require 'nvim-treesitter.configs'.setup {
    ensure_installed = { 
        "vim",
        "vimdoc",
        "lua",
        "python",        

        "c", "query", "markdown", "markdown_inline" },

    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

