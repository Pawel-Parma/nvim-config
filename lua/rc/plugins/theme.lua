function SetOpacity(o)
    o = o or "none"
    vim.api.nvim_set_hl(0, "Normal", { bg = o })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = o })
end

function SetColorTheme(s)
    s = s or "catppuccin"
    local theme_flavour = "mocha"
    vim.myg.theme_flavour = theme_flavour
    vim.cmd.colorscheme(s .. "-" .. theme_flavour)
end

return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
        transparent_background = true,
        term_colors = true,
        custom_highlights = function(colors)
            return {
                MyHeaderHighlight = { fg = colors.blue, bg = "NONE" },
            }
        end,
    },
    init = function()
        SetColorTheme()
        SetOpacity()
    end,
}
