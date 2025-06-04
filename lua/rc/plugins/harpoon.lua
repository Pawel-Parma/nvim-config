return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        local tree_api = require("nvim-tree.api")
        local tree_view = require("nvim-tree.view")

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<leader>j", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<leader>k", function() harpoon:list():next() end)

        for i = 1, 9 do
            vim.keymap.set("n", "<leader>" .. i, function()
                if tree_view.is_visible() then
                    tree_api.tree.toggle()
                end
                harpoon:list():select(i)
            end)
        end
    end
}
