vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#2d3f5f" })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank { higroup = "YankHighlight", timeout = 250 }
  end,
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  pattern = "*",
})
