local map = vim.api.nvim_set_keymap
local options = { noremap = true }

map("n", "<C-\\>", "<cmd>:CommentToggle<CR>", options)
map("x", "<C-\\>", "<Esc><cmd>:'<,'>CommentToggle<CR>", options)

return {
  "terrortylor/nvim-comment",
  init = function(plugin)
    require('nvim_comment').setup()
  end
}
