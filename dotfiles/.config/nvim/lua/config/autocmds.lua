-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)

-- Wrap and linebreak on certain file types
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "tex", "plaintex" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})

-- Activate Otter on Markdown and Quarto
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.qmd", "*.md" },
  callback = function()
    vim.bo.filetype = "markdown"
    if vim.fn.exists(":OtterActivate") == 2 then
      vim.cmd("OtterActivate")
    else
      local ok, otter = pcall(require, "otter")
      if ok and type(otter.activate) == "function" then pcall(otter.activate) end
    end
  end,
})
