return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim", },
  lazy = false,
  config = function()
    local neotree = require("neo-tree")
    neotree.setup({
      filesystem = {
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = "open_current",
        group_empty_dirs = true,
      }
    })
    vim.keymap.set("n", "<leader>i", ":Neotree toggle<CR>", {})
  end,
}
