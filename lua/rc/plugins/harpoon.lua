return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<leader>j", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<leader>k", function() harpoon:list():next() end)

        vim.keymap.set("n", "<leader>0", function() harpoon:list():select(10) end)
        for i = 1, 9 do
            vim.keymap.set("n", "<leader>" .. i, function() harpoon:list():select(i) end)
        end
    end
}
