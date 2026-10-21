return {
  'folke/snacks.nvim',
  keys = {
    { "<leader>o",       LazyVim.pick("files"),                  desc = "Find Files (Root Dir)" },
    { "<leader><space>", function() Snacks.picker.buffers() end, desc = "Buffers" },
  },
  opts = {
    picker = {
      hidden = true,
      win = {
        input = {
          keys = {
            -- to close the picker on ESC instead of going to normal mode,
            ["<Esc>"] = { "close", mode = { "n", "i" } },
            ["J"] = { "preview_scroll_down", mode = { "i", "n" } },
            ["K"] = { "preview_scroll_up", mode = { "i", "n" } },
            ["H"] = { "preview_scroll_left", mode = { "i", "n" } },
            ["L"] = { "preview_scroll_right", mode = { "i", "n" } },
          },
        },
      },
      matcher = {
        frecency = true,
      },

    },
  }
}
