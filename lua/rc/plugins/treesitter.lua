return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require('nvim-treesitter.configs')

        configs.setup {
            ensure_installed = {
                "bash",
                "c", "cpp",
                "html", "css", "javascript", "typescript", "jsonc",
                "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
                "go", "gomod", "gosum",
                "lua", "luadoc",
                "markdown", "markdown_inline",
                "python",
                "toml",
                "vim", "vimdoc",
                "zig",
            },
            sync_install = false,
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
