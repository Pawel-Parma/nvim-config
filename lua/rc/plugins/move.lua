return { 
    "fedepujol/move.nvim",
    keys = {
        { "<A-j>", ":MoveLine(1)<CR>" },
        { "<A-k>", ":MoveLine(-1)<CR>" },
        { "<A-h>", ":MoveWord(-1)<CR>" },
        { "<A-l>", ":MoveWord(1)<CR>" },
        { "<A-j>", ":MoveBlock(1)<CR>", mode = { "x" } },
        { "<A-k>", ":MoveBlock(-1)<CR>", mode = { "x" } },
        { "<A-h>", ":MoveHBlock(-1)<CR>", mode = { "x" } },
        { "<A-l>", ":MoveHBlock(1)<CR>", mode = { "x" } },
    },
    opts = {
        char = {
            enable = true,
        }
    },
}
