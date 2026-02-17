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

-- Add line numbers, and relative line numbers.
vim.opt.number = true
vim.opt.relativenumber = true

-- Show inline virtual text, e.g. Rust compilation errors.
vim.diagnostic.config({
  virtual_text = true,
})
