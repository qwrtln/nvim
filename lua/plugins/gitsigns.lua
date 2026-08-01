local map = vim.keymap.set

map("n", "<C-s>", "<cmd>Gitsigns preview_hunk<CR>")
vim.api.nvim_create_user_command("Rh", "Gitsigns reset_hunk", {
  desc = "Reset hunk",
})

return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 300,
    },
  },
  config = function(_, opts)
    local plugin = require("gitsigns")
    plugin.setup(opts)

    map("n", "]h", function()
      plugin.nav_hunk("next")
    end, { desc = "Next Git hunk" })
    map("n", "[h", function()
      plugin.nav_hunk("prev")
    end, { desc = "Previous Git hunk" })
  end,
}
