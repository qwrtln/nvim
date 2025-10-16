local highlight = vim.api.nvim_set_hl

return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    style = "night",
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    plugins = {
      auto = true,
    },
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd([[colorscheme tokyonight]])
    highlight(0, "LineNrAbove", { fg = "#5a5a5a", bold = false })
    highlight(0, "LineNr", { fg = "#71797E", bold = true })
    highlight(0, "LineNrBelow", { fg = "#5a5a5a", bold = false })
  end,
}
