-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.scrolloff = 15
vim.opt.spelllang = { "en_gb" }
vim.opt.swapfile = false

vim.g.lazyvim_picker = "snacks"

vim.diagnostic.enable(false)

-- Delay between consecutive key
vim.o.timeout = true
vim.o.timeoutlen = 200

-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "basedpyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"
