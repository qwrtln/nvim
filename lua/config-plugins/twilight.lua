local map = vim.api.nvim_set_keymap
local options = { noremap = true }

map("n", "T", "<cmd>Twilight<CR>", options)

return {
  "folke/twilight.nvim",
}
