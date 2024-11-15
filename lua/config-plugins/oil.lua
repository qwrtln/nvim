return {
  "stevearc/oil.nvim",
  opts = {
    view_options = {
      show_hidden = true,
    },
    float = {
      padding = 10,
    },
  },
  config = function(_, opts)
    local oil = require("oil")
    oil.setup(opts)
    vim.keymap.set("n", "<leader>o", oil.toggle_float)
  end,

  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
