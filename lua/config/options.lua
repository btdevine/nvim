-- For yank/paste in Docker container.
vim.g.clipboard = "osc52"
vim.opt.clipboard = "unnamedplus"

-- Vertical window split to the right, and focus on it.
vim.opt.splitright = true

-- Wrapping is nice for both .md files and code for resizing windows.
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.breakindentopt = { "shift:2", "min:20" }

-- 8 lines above/below cursor
vim.opt.scrolloff = 8
-- 8 lines left/right of cursor
vim.opt.sidescrolloff = 8

-- Highlight current line
vim.opt.cursorline = true

-- Add line numbers, and relative line numbers.
vim.opt.number = true
vim.opt.relativenumber = true

-- 4-space indentation globally, 2-space for TypeScript/JavaScript.
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})

-- Show inline virtual text, e.g. Rust compilation errors.
vim.diagnostic.config({
  virtual_text = true,
})
