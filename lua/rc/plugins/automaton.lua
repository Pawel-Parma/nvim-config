return {
    "eandrju/cellular-automaton.nvim",
    config = function()
        vim.keymap.set("n", "<leader>camr", "<cmd>CellularAutomaton make_it_rain<CR>", {})
        vim.keymap.set("n", "<leader>camc", "<cmd>CellularAutomaton game_of_life<CR>", {})
    end
}
