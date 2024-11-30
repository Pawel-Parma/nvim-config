return {
    "pocco81/auto-save.nvim",
    config = function()
        local autosave = require("auto-save")

        autosave.setup({
            execution_message = {
                message = function()
                    return ""
                end,
            },
            condition = function(buf)
                if vim.fn.getbufvar(buf, "&modifiable") == 0 then
                    return false
                end

                local filetype = vim.fn.getbufvar(buf, "&filetype")
                if string.find(filetype, "%.") then
                    return true
                end

                return false
            end,
        })
    end

}
