function SetOpacity(o)
    o = o or "none"
    vim.api.nvim_set_hl(0, "Normal", { bg = o })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = o })
end

function SetColorTheme(s)
    s = s or "catppuccin"
    vim.cmd("colorscheme " .. s)
end

return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
        transparent_background = true,
    },
    init = function()
        SetColorTheme()
        SetOpacity()
    end
}
