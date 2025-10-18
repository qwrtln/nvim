local map = vim.api.nvim_set_keymap
local options = { noremap = true }

map("n", "<leader>f", "<cmd>Telescope find_files<CR>", options)
map("n", "<leader>g", "<cmd>Telescope live_grep<CR>", options)
map("n", "<leader>b", "<cmd>Telescope buffers<CR>", options)
map("n", "<leader>tr", "<cmd>tab sp<CR><cmd>Telescope find_files<CR>", options)
map("n", "<leader>ty", "<cmd>vsp<CR><cmd>Telescope find_files<CR>", options)

return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
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
      pickers = {
        find_files = {
          hidden = true,
          -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
      },
    }
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
}
