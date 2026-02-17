return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file tree" },
  },
  config = function()
    require("nvim-tree").setup({
      filters = {
        -- hide .files by default
        dotfiles = true,
        -- hide .gitignored files by default
        git_ignored = true,
      },
    })
  end,
}
