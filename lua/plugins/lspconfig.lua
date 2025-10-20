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

local signs = { Error = "", Warn = "", Hint = "💡", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

return {
  "neovim/nvim-lspconfig",
  config = function()
    local path = vim.fn.stdpath("config") .. "/lua/language-servers"
    local files = vim.fn.readdir(path)

    for _, file in ipairs(files) do
      require("language-servers." .. file:gsub("%.lua$", ""))
    end
  end,
}
