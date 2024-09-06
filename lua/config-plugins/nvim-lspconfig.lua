return {
  "neovim/nvim-lspconfig",
  config = function()
    -- require("vscode-html-languageserver").setup()
    require("lspconfig").lua_ls.setup {}
    require("lspconfig").pyright.setup {}
    require("lspconfig").texlab.setup {}
  end,
}
