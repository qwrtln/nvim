local map = vim.keymap.set

map("n", "<leader>f", "<cmd>Telescope find_files<CR>")
map("n", "<leader>g", "<cmd>Telescope live_grep<CR>")
map("n", "<leader>b", "<cmd>Telescope buffers<CR>")
map("n", "<leader>F", function()
  local path = "~/Workspace"
  vim.notify("Searching in " .. path, vim.log.levels.WARN, {
    title = "Multi-project search 🔎",
  })
  require("telescope.builtin").find_files {
    cwd = vim.fn.expand(path),
    hidden = true,
    find_command = {
      "fd",
      "--type",
      "f",
      "--hidden",
      "--exclude",
      "/archive",
      "--exclude",
      ".git",
      "--exclude",
      "*.{png,jpg,jpeg,gif,ico,svg,webp,psd,xcf,pdf,zip,tar,gz,rar,7z,so}",
    },
  }
end)

return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup {
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<leader>j"] = actions.close,
            ["<C-t>"] = actions.select_tab, -- Open in new tab
            ["<C-y>"] = actions.select_vertical, -- Open in vertical split
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true,
          find_command = { "rg", "--files", "--hidden" },
        },
      },
    }
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
}
