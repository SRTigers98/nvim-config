return {
  filter = function(buf)
    local filetype = vim.bo[buf].filetype
    return filetype ~= "markdown"
  end,
}
