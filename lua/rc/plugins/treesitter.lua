return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    local treesitter = require("nvim-treesitter")
    treesitter.install {
      "bash",
      "c", "cpp",
      "css", "html", "javascript", "typescript",
      "jsonc", "toml", "xml", "yaml",
      "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
      "go", "gomod", "gosum",
      "lua", "luadoc",
      "markdown", "markdown_inline",
      "php",
      "python",
      "rust",
      "sql",
      "csv",
      "vim", "vimdoc",
      "zig",
    }
  end,
}
