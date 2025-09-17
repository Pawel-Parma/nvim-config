return {
    "lewis6991/gitsigns.nvim",
    config = function()
        local gitsigns = require('gitsigns')
        gitsigns.setup {
            attach_to_untracked = true,
        }
        vim.keymap.set("n", "<leader>p", gitsigns.preview_hunk)
    end
}
