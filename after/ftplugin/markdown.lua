local peek = require("peek")
vim.keymap.set("n", "<leader>m",
  function()
    if peek.is_open() then
      peek.close()
    else
      peek.open()
    end
  end
)
