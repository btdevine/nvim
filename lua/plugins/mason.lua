return {
  "williamboman/mason.nvim",
  opts = {},
  dependencies = {
    -- Auto-install tools on load
    -- Found from: https://github.com/mason-org/mason.nvim/issues/103
    {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      opts = {
        ensure_installed = {
          "rust-analyzer",
          "typescript-language-server",
          "prettier",
          "eslint-lsp",
        },
      },
    },
  },
}
