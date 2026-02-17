local mason_bin = vim.fn.stdpath("data") .. "/mason/bin"

vim.lsp.config("ts_ls", {
  cmd = { mason_bin .. "/typescript-language-server", "--stdio" },
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
})
vim.lsp.enable("ts_ls")

vim.lsp.config("rust_analyzer", {
  cmd = { mason_bin .. "/rust-analyzer" },
  filetypes = { "rust" },
})
vim.lsp.enable("rust_analyzer")
