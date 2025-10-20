local map = vim.keymap.set

map("n", "<C-s>", "<cmd>Gitsigns preview_hunk<CR>")

return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 300,
    },
  },
}
