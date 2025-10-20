-- List of parsres to be installed by nvim-treesitter
local language_parsers = {
  "bash",
  "comment",
  "css",
  "diff",
  "dockerfile",
  "ghactions",
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

-- Parser names don't always correspond to their file types
local function parser_to_filetype(parser)
  local mappings = {
    bash = "sh",
    latex = "tex",
  }
  return mappings[parser] or parser
end

-- Construct list of filetypes to avoid repetition
local language_filetypes = {}
for _, parser in ipairs(language_parsers) do
  table.insert(language_filetypes, parser_to_filetype(parser))
end

-- Start treesitter automatically for listed file types
vim.api.nvim_create_autocmd("FileType", {
  pattern = language_filetypes,
  callback = function()
    vim.treesitter.start()
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
