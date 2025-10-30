---@diagnostic disable:undefined-global
-- Snacks is available on command execution

local function run_scooter(mode)
  local base_cmd = "scooter"

  if mode == "file" then
    local file = vim.api.nvim_buf_get_name(0)
    Snacks.terminal(base_cmd .. " " .. file)
  elseif mode == "word" then
    local file = vim.api.nvim_buf_get_name(0)
    local selection = vim.fn.expand "<cword>"
    Snacks.terminal(base_cmd .. " -s '" .. selection .. "' " .. file)
  elseif mode == "workspace" then
    Snacks.terminal(base_cmd .. " --hidden")
  end
end

return {
  -- Explore & Find
  { "<leader>e", function() Snacks.picker.explorer() end, desc = "File Explorer" },
  { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
  { "<leader>fs", function() Snacks.picker.grep() end, desc = "Find String" },
  { "<leader>fw", function() Snacks.picker.grep_word() end, desc = "Find Word / Selection", mode = { "n", "x" } },
  { "<leader>fk", function() Snacks.picker.keymaps() end, desc = "Find Keys" },
  { "<leader>fn", function() Snacks.picker.notifications() end, desc = "Find Notifications" },
  { "<leader>F", function() Snacks.picker() end, desc = "Find Picker" },

  -- LSP
  { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
  { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
  { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
  { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
  { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto Type Definition" },

  -- Git
  { "<leader>gg", function() Snacks.lazygit() end, desc = "Open LazyGit" },
  { "<leader>gb", function() Snacks.git.blame_line() end, desc = "Git Blame" },
  { "<leader>gB", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
  { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
  { "<leader>gL", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },
  { "<leader>gG", function() Snacks.picker.git_status() end, desc = "Git Status" },

  -- Words
  { "<leader>wn", function() Snacks.words.jump(vim.v.count1) end, desc = "Next Reference" },
  { "<leader>wp", function() Snacks.words.jump(-vim.v.count1) end, desc = "Previous Reference" },

  -- External Terminal Tools
  {
    "<leader>rss",
    function() run_scooter "file" end,
    desc = "Run Scooter in File",
  },
  {
    "<leader>rsw",
    function() run_scooter "word" end,
    desc = "Run Scooter in File with Current Word (star)",
  },
  { "<leader>rS", function() run_scooter "workspace" end, desc = "Run Scooter in Workspace" },
}
