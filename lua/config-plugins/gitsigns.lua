local map = vim.api.nvim_set_keymap
local options = { noremap = true }

map("n", "<C-s>", "<cmd>:Gitsigns preview_hunk<CR>", options)

return {
  "lewis6991/gitsigns.nvim",
  init = function(plugin)
    require("gitsigns").setup {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 300, -- [ms]
      },
    }
  end,
}
