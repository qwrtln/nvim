local map = vim.keymap.set

-- remap leader to space and enter
vim.g.mapleader = " "
vim.keymap.set("", "<CR>", "<Leader>", { remap = true })

-- more accessible command
map("n", "<leader>;", ":")
map("v", "<leader>;", ":")

-- navigate tabs
map("n", "<C-h>", "gT")
map("n", "<C-l>", "gt")

-- save and exit commands
map("n", "<C-x>", "<cmd>x<CR>")
map("n", "<C-q>", "<cmd>q!<CR>")

-- terminal
map("t", "jk", "<C-\\><C-n>")
map("t", "<Esc>", "<C-\\><C-n>")
map("n", "<leader>t", "<cmd>vsp<CR><cmd>terminal<CR>i")

-- commenting out
map("n", "<C-\\>", "gcc", { noremap = false })
map("x", "<C-\\>", "gc", { noremap = false })

-- toggle diff mode
local function toggle_diff()
  if vim.wo.diff then
    vim.cmd("windo diffoff")
  else
    vim.cmd("windo diffthis")
  end
end
vim.keymap.set("n", "<leader>d", toggle_diff)
