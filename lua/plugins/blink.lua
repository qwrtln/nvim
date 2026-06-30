local kind_icons = {
  Text = "󰉿",
  Method = "󰆧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰜢",
  Variable = "󰀫",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "󰑭",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "󰈇",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "󰙅",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "",
}

local filetypes_without_autocomplete = {
  NeogitCommitMessage = true,
  TelescopePrompt = true,
  gitcommit = true,
  markdown = true,
}

return {
  "saghen/blink.cmp",
  version = "*",
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = {
    "L3MON4D3/LuaSnip",
    "ribru17/blink-cmp-spell",
  },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    enabled = function()
      return not filetypes_without_autocomplete[vim.bo.filetype]
    end,

    snippets = { preset = "luasnip" },

    appearance = {
      kind_icons = kind_icons,
    },

    keymap = {
      preset = "none",
      ["<CR>"] = { "accept", "fallback" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    },

    completion = {
      list = {
        -- do not select first item (mimics preselect=false, noselect)
        selection = { preselect = false, auto_insert = false },
      },
      menu = {
        border = "rounded",
        draw = {
          columns = {
            { "kind_icon" },
            { "label", "label_description", gap = 1 },
            { "source_name" },
          },
          components = {
            source_name = {
              text = function(ctx)
                return "[" .. ctx.source_name .. "]"
              end,
            },
          },
        },
      },
      documentation = {
        auto_show = true,
        window = { border = "rounded" },
      },
    },

    signature = {
      enabled = true,
      window = { border = "rounded" },
    },

    sources = {
      default = { "lsp", "snippets", "buffer", "path", "spell" },
      providers = {
        lsp = { min_keyword_length = 3, max_items = 5 },
        snippets = { min_keyword_length = 3, max_items = 3 },
        buffer = { min_keyword_length = 3, max_items = 5 },
        spell = {
          name = "Spell",
          module = "blink-cmp-spell",
          min_keyword_length = 3,
          max_items = 5,
          opts = {
            enable_in_context = function()
              return true
            end,
          },
        },
        cmdline = {
          module = "blink.cmp.sources.cmdline",
          min_keyword_length = 3,
        },
      },
    },

    -- cmdline: blink defaults handle `:` `/` `?` (path + cmdline sources)
    cmdline = {
      keymap = { preset = "cmdline" },
      sources = { "cmdline" },
      completion = {
        menu = { auto_show = true },
      },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
