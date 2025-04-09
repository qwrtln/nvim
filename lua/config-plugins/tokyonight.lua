local highlight = vim.api.nvim_set_hl

highlight(0, "LineNrAbove", { fg = "#5a5a5a", bold = false })
highlight(0, "LineNr", { fg = "#71797E", bold = false })
highlight(0, "LineNrBelow", { fg = "#5a5a5a", bold = false })

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
  init = function()
    vim.cmd([[colorscheme tokyonight]])
  end,
}
