return
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require('nvim-treesitter.configs')

        configs.setup {
            ensure_installed = {
                "bash",
                "c", "cmake", "cpp",
                "csv",
                "dart",
                "dockerfile",
                "gitattributes", "gitignore",
                "go", "gomod", "gosum",
                "json",
                "lua", "luadoc",
                "make",
                "markdown", "markdown_inline",
                "python",
                "rust",
                "toml",
                "vim", "vimdoc",
                "yaml",
                "zig",
            },

            sync_install = false,
            -- TODO: configure
            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true,
            },
        }
    end
}
