-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Comment
-- Some terminal use C-_ as C-/, thus both are written here
vim.keymap.set("n", "<C-_>", ":normal gcc<CR>", { desc = "Toggle comment line", remap = true, silent = true })
vim.keymap.set("v", "<C-_>", "<Esc>:normal gvgc<CR>", { desc = "Toggle comment block", remap = true, silent = true })
vim.keymap.set("n", "<C-/>", ":normal gcc<CR>", { desc = "Toggle comment line", remap = true, silent = true })
vim.keymap.set("v", "<C-/>", "<Esc>:normal gvgc<CR>", { desc = "Toggle comment block", remap = true, silent = true })

-- JJ to esc
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
