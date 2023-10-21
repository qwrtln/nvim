local map = vim.api.nvim_set_keymap

options = { noremap = true }

map("i", "jk", "<Esc>", options)
map("n", "<Left>", "<C-w>h", options)
map("n", "<Down>", "<C-w>j", options)
map("n", "<Up>", "<C-w>k", options)
map("n", "<Right>", "<C-w>l", options)

-- save and exit commands
map("n", "<C-x>", "<cmd>:x<CR>", options)
map("n", "<C-q>", "<cmd>:q!<CR>", options)

-- commenting
map("n", "<C-\\>", "<cmd>:CommentToggle<CR>", options)
map("x", "<C-\\>", "<Esc><cmd>:'<,'>CommentToggle<CR>", options)

