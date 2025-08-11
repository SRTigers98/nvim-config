return {
  "olexsmir/gopher.nvim",
  ft = "go",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  build = function() vim.cmd.GoInstallDeps() end,
  opts = {},
  config = function()
    local map = vim.keymap.set
    map("n", "<leader>gsj", "<cmd>GoTagAdd json <CR>", { desc = "Go Add JSON struct tags" })
    map("n", "<leader>gsy", "<cmd>GoTagAdd yaml <CR>", { desc = "Go Add YAML struct tags" })
    map("n", "<leader>gst", "<cmd>GoTagAdd toml <CR>", { desc = "Go Add TOML struct tags" })
  end,
}
