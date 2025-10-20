local github_filetype = "yaml.github"

vim.filetype.add {
  pattern = {
    [".*/%.github[%w/]+workflows[%w/]+.*%.ya?ml"] = github_filetype,
  },
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = github_filetype,
  callback = function()
    vim.treesitter.start()
  end,
})

vim.lsp.enable("gh_actions_ls")
