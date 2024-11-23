function setColorScheme(s)
    vim.cmd("colorscheme " .. (s or "catppuccin"))
end    


function setBackroundOpacity(o)
    o = o or "none"

    vim.api.nvim_set_hl(0, "Normal", { bg = o })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = o })
end


setColorScheme()
setBackroundOpacity()

