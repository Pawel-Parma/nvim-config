function SetOpacity(o)
    o = o or "none"
    vim.api.nvim_set_hl(0, "Normal", { bg = o })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = o })
end

function SetColorTheme(s)
    s = s or "tokyonight"
   vim.cmd("colorscheme " .. s)
end

return {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    opts = {
        transparent = true,
        styles = {
            sidebars = "transparent",
            float = "transparent",
        },
    },
    init = function() 
        SetColorTheme()
        SetOpacity()
    end
}
