local map = vim.api.nvim_set_keymap
local options = { noremap = true }

vim.g.mapleader = vim.api.nvim_replace_termcodes("<Enter>", false, false, true)
vim.keymap.set(
  "",
  "<Space>",
  vim.api.nvim_replace_termcodes("<Leader>", false, false, true),
  { remap = true }
)

map("n", ";", ":", options)
map("v", ";", ":", options)
map("i", "jk", "<Esc>", options)
map("n", "jk", "<Esc>", options)
map("v", "jk", "<Esc>", options)
map("c", "jk", "<Esc>", options)
map("n", "<Left>", "<C-w>h", options)
map("n", "<Down>", "<C-w>j", options)
map("n", "<Up>", "<C-w>k", options)
map("n", "<Right>", "<C-w>l", options)
map("n", "<C-h>", "gT", options)
map("n", "<C-l>", "gt", options)

-- save and exit commands
map("n", "<C-x>", "<cmd>x<CR>", options)
map("n", "<C-q>", "<cmd>q!<CR>", options)

-- terminal
map("t", "jk", "<C-\\><C-n>", options)
map("t", "<Esc>", "<C-\\><C-n>", options)
map("n", "<leader>t", "<cmd>vsp<CR><cmd>terminal<CR>i", options)
