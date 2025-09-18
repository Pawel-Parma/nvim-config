return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        local install = require("nvim-treesitter.install")
        install.update({ with_sync = true })()
    end,
}
