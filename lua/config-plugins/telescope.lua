local map = vim.api.nvim_set_keymap
local cmd = vim.api.nvim_create_user_command
local options = { noremap = true }

map("n", "<S-f>", "<cmd>:Telescope find_files<CR>", options)
map("n", "<C-g>", "<cmd>:Telescope live_grep<CR>", options)
cmd("Buf", "Telescope buffers", {})

return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  config = function()
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  }
}
