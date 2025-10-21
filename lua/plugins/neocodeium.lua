return {
  "monkoose/neocodeium",
  -- Don't use the plugin on macOS
  enabled = vim.fn.has("mac") == 0,
  event = "VeryLazy",
  opts = {
    silent = true,
    filetypes = {
      TelescopePrompt = false,
      ["dap-repl"] = false,
    },
  },
  config = function(_, opts)
    local neocodeium = require("neocodeium")
    neocodeium.setup(opts)
    vim.keymap.set("i", "<A-f>", neocodeium.accept)
    vim.keymap.set("i", "<A-r>", function()
      neocodeium.cycle(1)
    end)
    vim.keymap.set("i", "<A-e>", function()
      neocodeium.cycle(-1)
    end)
    vim.keymap.set("i", "<A-q>", neocodeium.clear)
  end,
}
