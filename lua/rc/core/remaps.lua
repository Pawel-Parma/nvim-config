vim.keymap.set("n", "Q", "<nop>", {})
vim.keymap.set("n", "q:", "<nop>", {})

vim.keymap.set("n", "<leader>nf", ":e %:h/", {})
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
end, {})


vim.keymap.set("n", "<leader>h", ":bprev<CR>", {})
vim.keymap.set("n", "<leader>l", ":bnext<CR>", {})

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>")
