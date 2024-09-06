local map = vim.api.nvim_set_keymap
local options = { noremap = true }

map("n", "<leader>f", "<cmd>Telescope find_files<CR>", options)
map("n", "<leader>g", "<cmd>Telescope live_grep<CR>", options)
map("n", "<leader>b", "<cmd>Telescope buffers<CR>", options)

return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  config = function() end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
}
