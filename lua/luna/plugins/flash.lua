return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    label = {
      rainbow = {
        enabled = true,
      },
    },
    modes = {
      search = {
        enabled = true,
      },
      char = {
        jump_labels = true,
      },
    },
  },
  keys = {
    { "<leader>js", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<leader>jS", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "<leader>jr", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    {
      "<leader>jR",
      mode = { "o", "x" },
      function() require("flash").treesitter_search() end,
      desc = "Treesitter Search",
    },
  },
}
