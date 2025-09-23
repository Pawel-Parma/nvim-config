return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "echasnovski/mini.icons" },
  lazy = false,
  config = function()
    local oil = require("oil")
    oil.setup({
      delete_to_trash = true,
      default_file_explorer = false,
      view_options = {
        show_hidden = true,
      },
    })
    vim.keymap.set("n", "-", ":Oil<CR>", {})
    vim.keymap.set("n", "<leader>o", oil.toggle_float, {})
  end,
}
