return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
  },
  opts = {
    dashboard = require "luna.plugins.snacks.dashboard",
    explorer = { enabled = true },
    input = { enabled = true },
    lazygit = { enabled = true },
    notifier = { enabled = true },
    picker = require "luna.plugins.snacks.picker",
  },
  keys = require "luna.plugins.snacks.keymaps",
}
