return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local nvim_tree = require("nvim-tree")
        local api = require("nvim-tree.api")
        local harpoon = require("harpoon")

        nvim_tree.setup({
            view = {
                number = true,
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
                    local relative_path = vim.fn.fnamemodify(node.absolute_path, ":.")
                    harpoon:list():add({ value = relative_path, context = { row = 1, col = 0 } })
                end
            end,
            {})
    end
}
