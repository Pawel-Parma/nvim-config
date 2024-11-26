return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local nvim_tree = require("nvim-tree")
        local api = require("nvim-tree.api")
        local utils = require("nvim-tree.utils")
        local harpoon = require("harpoon")

        nvim_tree.setup({
            view = {
                relativenumber = true,
            },
            git = {
                enable = true,
                ignore = true,
            },
            filters = {
                custom = { ".git" },
            },
            open_on_tab = false,
            -- TODO: customize
            respect_buf_cwd = true, -- Respect the current working directory

            renderer = {
                highlight_opened_files = "name", -- Highlight opened files in NvimTree
                root_folder_modifier = ":t",     -- Show only the folder name (not full path)
            },
        })


        vim.keymap.set("n", "<leader>ee", api.tree.toggle, {})
        vim.keymap.set("n", "<leader>ef", function() api.tree.toggle({ find_file = true }) end, {})
        vim.keymap.set("n", "<leader>ec", api.tree.collapse_all, {})
        vim.keymap.set("n", "<leader>ex", api.tree.expand_all, {})
        vim.keymap.set("n", "<leader>er", api.tree.reload, {})
        vim.keymap.set("n", "<localleader>a", function()
                local node = api.tree.get_node_under_cursor()
                if node and node.type == "file" then
                    print("works\n")
                    harpoon:list():add({value = node.absolute_path, context = {row = 1, col = 0}})
                end
            end,
            {
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
