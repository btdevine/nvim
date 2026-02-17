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
      sync_root_with_cwd = true,
      update_focused_file = {
        enable = true,
      },
      filters = {
        -- hide .files by default
        dotfiles = true,
        -- hide .gitignored files by default
        git_ignored = true,
      },
    })
  end,
}
