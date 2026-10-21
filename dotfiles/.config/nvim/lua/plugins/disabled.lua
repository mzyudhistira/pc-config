return {
  { -- Tab UI
    "akinsho/bufferline.nvim",
    enabled = false,
  },

  { -- Inlay hints
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = { "tex", "vue" },
      },
    },
  },
  { -- Clock on the status bar
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {},
      },
    },
  },
}
