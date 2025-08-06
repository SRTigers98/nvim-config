local formatters = {
  -- defaults
  lua = { "stylua" },
  -- text
  markdown = { "prettier" },
  json = { "biomejs" },
  jsonc = { "biomejs" },
  toml = { "taplo" },
  yaml = { "prettier" },
  -- typesetting
  tex = { "latexindent" },
  -- programming languages
  go = { "gofmt", "goimports" },
  zig = { "zigfmt" },
  elixir = { "mix" },
  javascript = { "biomejs" },
  typescript = { "biomejs" },
  -- web
  html = { "prettier" },
  css = { "biomejs" },
  javascriptreact = { "biomejs" },
  typescriptreact = { "biomejs" },
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
