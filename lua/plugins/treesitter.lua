local language_parsers = {
  "bash",
  "css",
  "comment",
  "diff",
  "dockerfile",
  "go",
  "hcl",
  "html",
  "javascript",
  "json",
  "latex",
  "lua",
  "markdown",
  "perl",
  "python",
  "tmux",
  "toml",
  "typescript",
  "yaml",
}

local function parser_to_filetype(parser)
  local mappings = {
    bash = "sh",
    latex = "tex",
  }
  return mappings[parser] or parser
end

local language_filetypes = {}
for _, parser in ipairs(language_parsers) do
  table.insert(language_filetypes, parser_to_filetype(parser))
end

-- Start treesitter on selected file types
vim.api.nvim_create_autocmd("FileType", {
  pattern = language_filetypes,
  callback = function()
    vim.treesitter.start()
  end,
})

-- custom parsers for treesitter
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

return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    init = function()
      require("nvim-treesitter").install(language_parsers)
    end,
  },
}
