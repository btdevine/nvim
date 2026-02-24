local mason_bin = vim.fn.stdpath("data") .. "/mason/bin"

-- TypeScript
vim.lsp.config("ts_ls", {
  cmd = { mason_bin .. "/typescript-language-server", "--stdio" },
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
})
vim.lsp.enable("ts_ls")

-- Rust
vim.lsp.config("rust_analyzer", {
  cmd = { mason_bin .. "/rust-analyzer" },
  filetypes = { "rust" },
  settings = {
    ["rust-analyzer"] = {
      files = {
        -- Use rust-analyzer's own file watcher instead of the LSP client's.
        -- Fixes diagnostics not updating on save on macOS (unreliable FSEvents/kqueue).
        watcher = "server",
      },
    },
  },
})
vim.lsp.enable("rust_analyzer")

-- Prisma
vim.lsp.config("prisma", {
  cmd = { mason_bin .. "/prisma-language-server", "--stdio" },
  filetypes = { "prisma" },
  settings = {
    prisma = {
      -- Was getting a crash without this
      -- https://github.com/prisma/language-tools/issues/1869
      enableDiagnostics = true,
    },
  },
})
vim.lsp.enable("prisma")
