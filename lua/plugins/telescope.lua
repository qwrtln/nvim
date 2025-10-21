local map = vim.keymap.set

map("n", "<leader>f", "<cmd>Telescope find_files<CR>")
map("n", "<leader>g", "<cmd>Telescope live_grep<CR>")
map("n", "<leader>b", "<cmd>Telescope buffers<CR>")

return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup {
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<leader>j"] = actions.close,
            ["<C-t>"] = actions.select_tab, -- Open in new tab
            ["<C-y>"] = actions.select_vertical, -- Open in vertical split
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
