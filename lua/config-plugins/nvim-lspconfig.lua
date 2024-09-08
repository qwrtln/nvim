return {
  "neovim/nvim-lspconfig",
  config = function()
    require("lspconfig").lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }
    require("lspconfig").pyright.setup {}
    require("lspconfig").texlab.setup {}
  end,
}
