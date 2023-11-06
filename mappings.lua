local M = {}

-- Spell Checking
M.spell = {
  n = {
    ["<leader>sd"] = { ":set spell spelllang=de_de<CR>", "German Spell Check" },
    ["<leader>se"] = { ":set spell spelllang=en_us<CR>", "English Spell Check" },
    ["<leader>sx"] = { ":set nospell<CR>", "Disable Spell Check" },
  },
}

-- YAML Companion
M.yaml = {
  n = {
    ["<leader>ys"] = { ":Telescope yaml_schema<CR>", "Select YAML Schema" },
  },
}

return M
