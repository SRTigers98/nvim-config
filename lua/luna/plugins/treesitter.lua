-- ensure these language parsers are installed
local languages = {
  -- defaults
  "vim",
  "lua",
  -- text
  "markdown",
  "json",
  "json5",
  "xml",
  "yaml",
  "toml",
  "csv",
  "kdl",
  "regex",
  -- typesetting
  "bibtex",
  "latex",
  "typst",
  -- programming
  "go",
  "zig",
  "javascript",
  "jsdoc",
  "typescript",
  "elixir",
  "rust",
  "java",
  "kotlin",
  "c",
  "cpp",
  -- web
  "html",
  "css",
  "svelte",
  "vue",
  "heex",
  -- tools
  "gomod",
  "gosum",
  "make",
  "dockerfile",
  "hurl",
  -- scripting
  "bash",
  "python",
  -- vcs
  "gitignore",
  "gitattributes",
  "gitcommit",
  "git_config",
  "git_rebase",
  -- database
  "sql",
  -- gRPC
  "proto",
  -- config
  "ssh_config",
  "gpg",
}

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    -- install all desired parsers (async, no-op if already installed)
    require("nvim-treesitter").install(languages)

    -- enable built-in treesitter highlighting per filetype
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(ev) pcall(vim.treesitter.start, ev.buf) end,
    })

    -- enable built-in folding and treesitter-based indentation per filetype
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        local ok = pcall(vim.treesitter.language.add, vim.bo.filetype)
        if ok then
          vim.opt_local.foldmethod = "expr"
          vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"
          vim.opt_local.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        else
          vim.opt_local.foldmethod = "syntax"
        end
        vim.opt_local.foldenable = false
        vim.opt_local.foldlevel = 20
      end,
    })
  end,
}
