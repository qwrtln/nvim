return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    init = function()
      require("nvim-treesitter").install {
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
        "perl",
        "python",
        "toml",
        "typescript",
        "yaml",
      }
    end,
  },
}
