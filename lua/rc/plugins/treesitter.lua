return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require('nvim-treesitter.configs')

        configs.setup {
            ensure_installed = {
                "bash",
                "c", "cmake", "cpp",
                "css",
                "csv",
                "dart",
                "dockerfile",
                "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
                "go", "gomod", "gosum",
                "html",
                "java",
                "javascript", "jsonc",
                "kotlin",
                "lua", "luadoc",
                "make",
                "markdown", "markdown_inline",
                "php",
                "python",
                "rust",
                "sql",
                "ssh_config",
                "toml",
                "typescript",
                "vim", "vimdoc",
                "xml",
                "yaml",
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
