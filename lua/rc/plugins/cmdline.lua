return {
    'VonHeikemen/fine-cmdline.nvim',
    requires = {
        { 'MunifTanjim/nui.nvim' }
    },
    config = function()
        local cmdline = require("fine-cmdline")
        cmdline.setup({
            cmdline = {
                enable_keymaps = true,
                smart_history = true,
            },
            popup = {
                position = {
                    row = '30%',
                    col = '50%',
                },
                size = {
                    width = '30%',
                },
            },
        })
        vim.keymap.set("n", "<leader>:", ":", {noremap = true})
        vim.keymap.set("n", ":", function() cmdline.open({ default_value = "" }) end, {})
        vim.keymap.set("v", ":", function() cmdline.open({ default_value = "\'<,\'>" }) end, {})
    end
}
