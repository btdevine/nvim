-- For yank/paste in Docker container
vim.g.clipboard = "osc52"
vim.opt.clipboard = "unnamedplus"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Wrapping is nice for both .md files and code for resizing windows.
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.breakindentopt = { "shift:2", "min:20" }
