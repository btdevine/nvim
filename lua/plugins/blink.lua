-- For autocompletion
return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  opts = {
    keymap = {
      -- accept when return is pressed
      ["<CR>"] = { "accept", "fallback" },
    },
  },
}
