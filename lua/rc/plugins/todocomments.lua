return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("todo-comments").setup()
        vim.keymap.set("n", "<leader>t", function() vim.cmd[[:TodoTelescope keywords=TODO,FIX]] end, {})
    end
}
