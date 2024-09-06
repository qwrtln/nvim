local map = vim.api.nvim_set_keymap
local options = { noremap = true }

map("n", "<leader>f", "<cmd>Telescope git_files<CR>", options)
map("n", "<leader>g", "<cmd>Telescope live_grep<CR>", options)
map("n", "<leader>b", "<cmd>Telescope buffers<CR>", options)

return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup {
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["jk"] = actions.close,
          },
        },
      },
    }
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
}
