return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-mini/mini.icons",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local icons = require("mini.icons")
    telescope.setup({
      defaults = {
        hidden = true,
      },
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git" },
        },
      },
      extensions = {
        fzf = {},
      },
      devicons = {
        get = icons.mock_nvim_web_devicons()
      }
    })

    telescope.load_extension('fzf')

    vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
    vim.keymap.set("n", "<leader>fe", builtin.find_files, {})
    vim.keymap.set("n", "<leader>ef", builtin.find_files, {})
  end,
}
