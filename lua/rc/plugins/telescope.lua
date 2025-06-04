return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
        local builtin = require("telescope.builtin")
        local actions = require("telescope.actions")
        local action_state = require("telescope.actions.state")
        local harpoon = require("harpoon")

        require('telescope').setup({
            defaults = {
                file_ignore_patterns = { "^.git/" },
                hidden = true,
            },
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
                },
            },
        })

        vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>fg", builtin.git_files, {})

        local find_files = function()
            builtin.find_files({
                attach_mappings = function(_, map)
                    map("i", "<localleader>a", function(prompt_bufnr)
                        local entry = action_state.get_selected_entry()
                        local filepath = entry.path or entry[1]
                        local relative_path = vim.fn.fnamemodify(filepath, ":.")
                        harpoon:list():add({ value = relative_path, context = { row = 1, col = 0 } })
                        actions.close(prompt_bufnr)
                    end)
                    return true
                end,
            })
        end
        vim.keymap.set("n", "<leader>fe", find_files, {})
        vim.keymap.set("n", "<leader>ff", find_files, {})
    end
}
