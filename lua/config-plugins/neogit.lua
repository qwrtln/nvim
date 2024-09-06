local map = vim.api.nvim_set_keymap
local options = { noremap = true }

map("n", "<leader>n", "<cmd>Neogit<CR>", options)

return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
    -- "ibhagwan/fzf-lua",              -- optional
  },
  config = true,
}
