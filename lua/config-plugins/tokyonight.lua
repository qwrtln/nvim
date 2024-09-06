return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    style = "night",
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  init = function()
    vim.cmd([[colorscheme tokyonight]])
  end,
}
