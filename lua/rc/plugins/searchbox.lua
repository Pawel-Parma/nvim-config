return {
    "VonHeikemen/searchbox.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    config = function()
        local searchbox = require("searchbox")

        require('searchbox').setup({
            popup = {
                position = {
                    row = '5%',
                    col = '50%',
                },
            },
            hooks = {
                after_mount = function(input)
                    local opts = { buffer = input.bufnr }

                    vim.keymap.set('i', '<Tab>', '<Plug>(searchbox-next-match)', opts)
                    vim.keymap.set('i', '<S-Tab>', '<Plug>(searchbox-prev-match)', opts)
                    vim.keymap.set('i', '<Down>', '<Plug>(searchbox-next-match)', opts)
                    vim.keymap.set('i', '<Up>', '<Plug>(searchbox-prev-match)', opts)
                end
            },
        })

        vim.keymap.set("n", "/", searchbox.match_all, {})
        vim.keymap.set("v", "/", function() searchbox.match_all({ visual_mode = true }) end, {})
        vim.keymap.set("n", "<leader>/", searchbox.replace, {})
        vim.keymap.set("v", "<leader>/", function() searchbox.replace({ visual_mode = true }) end, {})

        vim.keymap.set("n", "?", function() searchbox.match_all({ reverse = true }) end, {})
        vim.keymap.set("v", "?", function() searchbox.match_all({ reverse = true, visual_mode = true }) end, {})
    end
}
