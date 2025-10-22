return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  dependencies = { "folke/tokyonight.nvim" }, -- to ensure custom highlight group exists
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    scope = {
      highlight = "IndentBlanklineScpe",
    },
  },
}
