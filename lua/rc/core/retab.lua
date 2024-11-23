vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = "*",
    callback = function()
        if vim.bo.modifiable then
            vim.cmd [[retab]]
        end
    end
})
