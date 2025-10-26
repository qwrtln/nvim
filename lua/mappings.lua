local map = vim.keymap.set

-- remap leader to space and enter
vim.g.mapleader = " "
map("", "<CR>", "<Leader>", { remap = true })

-- more accessible command
map("n", "<leader>;", ":")
map("v", "<leader>;", ":")

-- easier than reaching for escape
map("i", "<A-n>", "<Esc>")
map("v", "<A-n>", "<Esc>")

-- navigate tabs
map("n", "<C-h>", "gT")
map("n", "<C-l>", "gt")

-- save and exit commands
map("n", "<C-x>", "<cmd>x<CR>")
map("n", "<C-q>", "<cmd>q!<CR>")

-- terminal
map("t", "<A-n>", "<C-\\><C-n>")
map("t", "<Esc>", "<C-\\><C-n>")
map("n", "<A-n>", "<cmd>vsp<CR><cmd>terminal<CR>i")

-- commenting out
map("n", "<C-\\>", "gcc", { remap = true })
map("x", "<C-\\>", "gc", { remap = true })

-- clearing highlights
map("n", "<leader>h", "<cmd>nohlsearch<CR>")

-- toggle diff mode
local function toggle_diff()
  if vim.wo.diff then
    vim.cmd("windo diffoff")
  else
    vim.cmd("windo diffthis")
  end
end
vim.keymap.set("n", "<leader>d", toggle_diff)
