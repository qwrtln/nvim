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
