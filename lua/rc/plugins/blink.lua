return { -- TODO: configure
  'saghen/blink.cmp',
  -- dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  opts = {
    keymap = { preset = 'super-tab' },
    completion = {
      documentation = { auto_show = false },
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
  },
  opts_extend = { "sources.default" }
}
