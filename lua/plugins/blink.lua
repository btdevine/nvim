-- For autocompletion
return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  dependencies = {
    "rafamadriz/friendly-snippets",
  },
  opts = {
    keymap = {
      preset = "default",
      -- accept when return is pressed
      ["<CR>"] = { "accept", "fallback" },
    },
    completion = {
      list = {
        selection = { preselect = true, auto_insert = false },
      },
    },
    appearance = {
      nerd_font_variant = "mono",
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}
