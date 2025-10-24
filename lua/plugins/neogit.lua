vim.keymap.set("n", "<leader>n", "<cmd>Neogit<CR>")
vim.api.nvim_create_user_command("DV", "DiffviewOpen <args>", {
  nargs = "*",
  desc = "Open git diff view",
})

return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = true,
}
