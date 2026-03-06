-- For autocompletion
return {
  "saghen/blink.cmp",
  version = "1.*",
  event = "InsertEnter",
  opts = {
    keymap = {
      -- accept when return is pressed
      ["<CR>"] = { "accept", "fallback" },
    },
  },
}
