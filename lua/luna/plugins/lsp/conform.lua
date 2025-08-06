local formatters = {
  -- defaults
  lua = { "stylua" },
  -- text
  markdown = { "prettier" },
  json = { "biome" },
  jsonc = { "biome" },
  toml = { "taplo" },
  yaml = { "prettier" },
  -- typesetting
  tex = { "latexindent" },
  -- programming languages
  go = { "gofmt", "goimports" },
  zig = { "zigfmt" },
  elixir = { "mix" },
  javascript = { "biome" },
  typescript = { "biome" },
  -- web
  html = { "prettier" },
  css = { "biome" },
  javascriptreact = { "biome" },
  typescriptreact = { "biome" },
  -- scripting
  sh = { "shfmt" },
  -- database
  sql = { "sql_formatter" },
  -- other
  ["*"] = { "trim_whitespace" },
}

return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require "conform"

    conform.setup {
      formatters_by_ft = formatters,
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    }
  end,
}
