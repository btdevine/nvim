vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear grep highlight" })

vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Next window" })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Previous window" })

-- Navigate by display lines when wrap is on
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Stay in visual mode after indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
