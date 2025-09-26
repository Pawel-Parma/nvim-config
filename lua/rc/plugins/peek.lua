return {
  "toppair/peek.nvim",
  event = { "VeryLazy" },
  build = "deno task --quiet build:fast",
  config = function()
    local peek = require("peek")
    peek.setup({
      app = 'browser',
    })
  end,
}
