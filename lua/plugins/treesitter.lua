return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufWritePost", "BufNewFile", "VeryLazy" },
    init = function()
      require("nvim-treesitter").setup {
        -- A list of parser names, or "all" (the listed parsers MUST always be installed)
        ensure_installed = {
          "bash",
          "css",
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
          "python",
          "toml",
          "typescript",
          "yaml",
        },
        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = false,
        highlight = {
          enable = true,
          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = true,
        },
      }
    end,
  },
}
