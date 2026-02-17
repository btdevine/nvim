-- Replaces a bunch of default nvim UI components
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    -- put the command line at the top of the screen
    cmdline = {
      view = "cmdline_popup",
      opts = {
        position = {
          row = "10%",
          col = "50%",
        },
      },
    },
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
      },
    },
    presets = {
      lsp_doc_border = true,
    },
  },
}
