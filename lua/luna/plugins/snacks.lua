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
    indent = require "luna.plugins.snacks.indent",
    input = { enabled = true },
    lazygit = { enabled = true },
    notifier = { enabled = true },
    picker = require "luna.plugins.snacks.picker",
    quickfile = { enabled = true },
    words = { enabled = true },
  },
  keys = require "luna.plugins.snacks.keymaps",
}
