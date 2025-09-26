return { -- TODO: configure
  'saghen/blink.cmp',
  -- dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  opts = {
    keymap = { preset = 'super-tab' },
    completion = {
      accept = {
        auto_brackets = {
          enabled = true
        },
      },
    },
  },
  opts_extend = { "sources.default" }
}
