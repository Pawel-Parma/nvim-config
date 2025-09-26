vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
  pattern = "*.zig",
  callback = function()
    if vim.bo.modifiable then
      vim.cmd("silent write")
    end
  end
})
