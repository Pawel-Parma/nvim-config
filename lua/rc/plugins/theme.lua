return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    term_colors = true,
    flavour = "mocha",
    transparent_background = true,
    float = {
      transparent = true,
    },
    show_end_of_buffer = true,
    custom_highlights = function(colors)
      return {
        MyHeaderHighlight = { fg = colors.blue, bg = "none" },
      }
    end,
  },
  init = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
