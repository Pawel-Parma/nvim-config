return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local nvim_tree = require("nvim-tree")
        local api = require("nvim-tree.api")
        local utils = require("nvim-tree.utils")

        vim.keymap.set("n", "<leader>e", api.tree.toggle, {})

        nvim_tree.setup({
            git = {
                enable = true,
                ignore = true,
            },

            open_on_tab = false,
            -- TODO: customize
            respect_buf_cwd = true, -- Respect the current working directory

            renderer = {
                highlight_opened_files = "name", -- Highlight opened files in NvimTree
                root_folder_modifier = ":t", -- Show only the folder name (not full path)
            },
        })

        vim.api.nvim_create_autocmd("BufLeave", {
            nested = true,
            callback = function()
                local active_wins_len = #vim.api.nvim_list_wins()
                local is_nvim_tree = utils.is_nvim_tree_buf()
                if is_nvim_tree and active_wins_len > 1 and active_wins_len ~= 7 then -- TODO: fix edge case on active_wins_len, it is seven on nvim . | <leader>f
                    vim.cmd('quit')
                end
            end,
        })
    end
}
