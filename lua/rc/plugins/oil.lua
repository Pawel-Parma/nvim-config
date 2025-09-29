return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    local oil = require("oil")
    oil.setup({
      default_file_explorer = false,
      delete_to_trash = true,
      view_options = {
        show_hidden = true,
      },
    })
    vim.keymap.set("n", "-", ":Oil<CR>", {})
    vim.keymap.set("n", "<leader>o", oil.toggle_float, {})
  end,
}
