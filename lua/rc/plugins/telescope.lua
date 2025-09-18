return {
    "nvim-telescope/telescope.nvim", tag = "0.1.x",
     dependencies = { "nvim-lua/plenary.nvim" },
     config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")
        local harpoon = require("harpoon")
        telescope.setup({
            defaults = {
                file_ignore_patterns = { "^.git/" },
                hidden = true,
            },
        })
        vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
        vim.keymap.set("n", "<leader>fe", builtin.find_files, {})
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
     end,
}
