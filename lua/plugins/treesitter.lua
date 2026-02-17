return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  opts = {
    ensure_installed = {
      "lua",
      "rust",
      "typescript",
      "tsx",
      "javascript",
      "html",
      "css",
      "json",
      "toml",
      "yaml",
      "markdown",
      "markdown_inline",
    },
    highlight = {
      enable = true,
    },
  },
}
