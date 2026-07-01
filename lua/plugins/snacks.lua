local map = vim.keymap.set
local projects_root_path = vim.g.projects_root or "~/Workspace"

map("n", "<leader>f", function()
  Snacks.picker.files { hidden = true }
end)
map("n", "<leader>g", function()
  Snacks.picker.grep()
end)
map({ "n", "x" }, "<A-w>", function()
  Snacks.picker.grep_word()
end)
map("n", "<leader>b", function()
  Snacks.picker.git_branches()
end)
map("n", "<leader>,", function()
  Snacks.picker.buffers()
end)
map("n", "<leader>R", function()
  Snacks.picker.resume()
end)
map("n", "<leader><leader>", function()
  Snacks.picker.smart()
end)
map("n", "<leader>F", function()
  vim.notify("Searching in " .. projects_root_path, vim.log.levels.WARN, {
    title = "Multi-project search 🔎",
  })
  Snacks.picker.files {
    cwd = vim.fn.expand(projects_root_path),
    hidden = true,
    cmd = "fd",
    args = {
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
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    picker = {
      enabled = true,
      sources = {
        files = {
          hidden = true,
          layout = { preset = "telescope" },
        },
        grep = {
          hidden = true,
          layout = { preset = "ivy" },
        },
        grep_word = {
          hidden = true,
          layout = { preset = "ivy" },
        },
        git_branches = {
          layout = {
            preset = "vscode",
            layout = { border = "double" },
          },
        },
        buffers = {
          layout = {
            preset = "vscode",
            layout = { border = "rounded" },
          },
        },
      },
      win = {
        input = {
          keys = {
            ["<Esc>"] = { "close", mode = { "n", "i" } },
            ["<C-q>"] = { "close", mode = { "n", "i" } },
            ["<A-n>"] = { "close", mode = { "n", "i" } },
            ["<C-t>"] = { "tab", mode = { "n", "i" } },
            ["<C-y>"] = { "edit_vsplit", mode = { "n", "i" } },
          },
        },
      },
    },
  },
}
