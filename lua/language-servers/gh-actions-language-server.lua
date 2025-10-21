local github_filetype = "yaml.github"

vim.filetype.add {
  pattern = {
    [".*/%.github[%w/]+workflows[%w/]+.*%.ya?ml"] = github_filetype,
  },
}

-- TODO: Delete this once nvim-treesitter supports this by default
vim.api.nvim_create_autocmd("User", {
  pattern = "TSUpdate",
  callback = function()
    require("nvim-treesitter.parsers").ghactions = {
      install_info = {
        url = "https://github.com/rmuir/tree-sitter-ghactions",
        queries = "queries",
      },
    }
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = github_filetype,
  callback = function()
    vim.treesitter.start()
  end,
})

vim.lsp.config("gh_actions_ls", {
  filetypes = { github_filetype },
})
vim.lsp.enable("gh_actions_ls")
