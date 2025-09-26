local positions = {}

vim.api.nvim_create_autocmd("BufLeave", {
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    positions[buf] = vim.api.nvim_win_get_cursor(0)
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    local pos = positions[buf]
    if pos then
      local line_count = vim.api.nvim_buf_line_count(buf)
      local line = math.min(pos[1], line_count)
      local line_len = #vim.api.nvim_buf_get_lines(buf, line - 1, line, false)[1]
      local col = math.min(pos[2], line_len)
      vim.api.nvim_win_set_cursor(0, { line, col })
    end
  end,
})

vim.api.nvim_create_autocmd("BufWipeout", {
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    positions[buf] = nil
  end,
})
