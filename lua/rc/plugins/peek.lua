return {
  "toppair/peek.nvim",
  event = { "VeryLazy" },
  build = "deno task --quiet build:fast",
  config = function()
    local peek = require("peek")
    peek.setup({
      app = 'browser',
    })
    PeekToggle = function()
      if peek.is_open() then
        peek.close()
      else
        peek.open()
      end
    end
  end,
}
