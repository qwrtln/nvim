return {
  "L3MON4D3/LuaSnip", -- snippet completions
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "rafamadriz/friendly-snippets" },
  build = "make install_jsregexp",
  config = function()
    local ls = require("luasnip")

    local lsloader = require("luasnip.loaders.from_lua")

    require("luasnip.loaders.from_vscode").lazy_load()
    lsloader.load { paths = "~/.config/nvim/snippets" }

    local types = require("luasnip.util.types")

    ls.config.set_config {
      -- Keep last snippet to jump around
      history = true,

      -- Enable dynamic snippets
      updateevents = "TextChanged,TextChangedI",
      -- For cleaning up snippets whose text was deleted
      delete_check_events = "TextChanged",

      enable_autosnippets = true,

      ext_opts = {
        [types.choiceNode] = { active = { virt_text = { { "●", "Operator" } } } },
      },
    }

    -- Extend changelog with debchangelog
    ls.filetype_extend("changelog", { "debchangelog" })

    vim.keymap.set("i", "<c-l>", function()
      if ls.choice_active() then
        ls.change_choice(1)
      end
    end)
  end,
}
