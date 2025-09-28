vim.keymap.set({ "n", "v" }, "<leader>", "<nop>")
vim.keymap.set({ "i", "n", "v" }, "<Down>", "<nop>")
vim.keymap.set({ "i", "n", "v" }, "<Up>", "<nop>")
vim.keymap.set({ "i", "n", "v" }, "<Left>", "<nop>")
vim.keymap.set({ "i", "n", "v" }, "<Right>", "<nop>")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q:", "<nop>")

vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>b", ":buffer #<CR>")

vim.keymap.set({ "n", "x" }, "gy", '"+y')
vim.keymap.set({ "n", "x" }, "gp", '"+p')

vim.keymap.set("n", "<leader>so", ":on<CR>")
vim.keymap.set("n", "<leader>sw", ":close<CR>")
vim.keymap.set("n", "<leader>sh", ":leftabove vsplit<CR>")
vim.keymap.set("n", "<leader>sj", ":rightbelow split<CR>")
vim.keymap.set("n", "<leader>sk", ":leftabove split<CR>")
vim.keymap.set("n", "<leader>sl", ":rightbelow vsplit<CR>")
vim.keymap.set("n", "<leader>sme", "<C-w>=")
vim.keymap.set("n", "<leader>smh", "5<C-w><")
vim.keymap.set("n", "<leader>smj", "2<C-w>-")
vim.keymap.set("n", "<leader>smk", "2<C-w>+")
vim.keymap.set("n", "<leader>sml", "5<C-w>>")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

vim.keymap.set("n", "<leader>h", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = 0 }, { bufnr = 0 })
end)

vim.keymap.set("n", "<leader>nf", function()
  local filename = vim.fn.input("New filename: ")
  if filename == "" then
    return
  end

  local dir = vim.fn.expand("%:h")
  local newpath = dir .. "/" .. filename
  local newdir = vim.fn.fnamemodify(newpath, ":h")
  if vim.fn.isdirectory(newdir) == 0 then
    vim.fn.mkdir(newdir, "p")
  end

  vim.cmd("edit " .. newpath)
  vim.cmd("write")
end)
