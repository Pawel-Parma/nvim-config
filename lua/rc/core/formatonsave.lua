vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    local clients = vim.lsp.get_clients({ bufnr = 0 })
    local has_formatter = false

    for _, client in pairs(clients) do
      if client.supports_method("textDocument/formatting") then
        has_formatter = true
        break
      end
    end

    if has_formatter then
      vim.lsp.buf.format({ async = false })
    end
  end,
})
