  return {
    "folke/tokyonight.nvim",
    init = function(plugin)
      vim.g.tokyonight_style = "night"
      vim.g.tokyonight_italic_functions = true
      vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
      vim.g.tokyonight_transparent = "true"
      vim.cmd[[colorscheme tokyonight]]
      vim.cmd[[highlight Normal ctermbg=NONE guibg=NONE]]
      vim.cmd[[highlight NormalNC ctermbg=NONE guibg=NONE]]
      vim.cmd[[highlight SignColumn guibg=NONE]]
    end,
  }
