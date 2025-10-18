-- Get rid of inline messages from LSP
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
    vim.diagnostic.config {
      virtual_text = false,
    }
  end,
})

-- Start treesitter on selected file types
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "css",
    "go",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "perl",
    "python",
    "sh",
    "tex",
    "toml",
    "yaml",
  },
  callback = function()
    vim.treesitter.start()
  end,
})
