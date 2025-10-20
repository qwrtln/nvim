local gitlab_filetype = "yaml.gitlab"

vim.filetype.add {
  pattern = {
    ["%.gitlab%-ci%.ya?ml"] = gitlab_filetype,
  },
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = gitlab_filetype,
  callback = function()
    vim.treesitter.start()
  end,
})

vim.lsp.enable("gitlab_ci_ls")
