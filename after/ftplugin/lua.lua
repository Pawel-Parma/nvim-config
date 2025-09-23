vim.opt_local.shiftwidth = 2

vim.keymap.set("n", "<leader>x", ":.lua<CR>", {})
vim.keymap.set("x", "<leader>x", ":lua<CR>", {})
vim.keymap.set("n", "<leader><leader>x", ":source %<CR>", {})
