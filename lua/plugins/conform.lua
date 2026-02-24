return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      -- Can take a while on large TS files, 500ms times out.
      timeout_ms = 5000,
      lsp_format = "fallback",
    },
    formatters = {
      -- Strip U+2028 (Line Separator) and U+2029 (Paragraph Separator)
      -- This can cause some weird behavior with TypeScript
      -- where the compiler ignores these and resultantly
      -- the line numbers gets screwed up. Best to just remove them on write.
      strip_unusual_line_terminators = {
        command = "sed",
        args = { "-e", "s/\xe2\x80\xa8//g", "-e", "s/\xe2\x80\xa9//g" },
        stdin = true,
      },
    },
    formatters_by_ft = {
      lua = { "stylua" },
      typescript = { "strip_unusual_line_terminators", "prettier" },
      typescriptreact = { "strip_unusual_line_terminators", "prettier" },
      rust = { "rustfmt" },
      toml = { "taplo" },
    },
  },
}
