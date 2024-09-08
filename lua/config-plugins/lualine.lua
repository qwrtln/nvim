-- catputchin mocha palette: https://github.com/catppuccin/tmux/blob/main/themes/catppuccin_mocha.tmuxtheme
-- stylua: ignore
local colors = {
  background = "#1e1e2e",
  foreground = "#cdd6f4",
  black      = "#181825",
  blue       = "#89b4fa",
  cyan       = "#89dceb",
  grey       = "#313244",
  green      = "#a6e3a1",
  magenta    = "#cba6f7",
  orange     = "#fab387",
  pink       = "#f5c2e7",
  red        = "#f38ba8",
  white      = "#c6c6c6",
  yellow     = "#f9e2af",
  violet     = "#d183e8",
  black4     = "#585b70",
}

local lsp = {
  -- Lsp server name
  function()
    local msg = "none"
    local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = " LSP:",
  color = { gui = "bold" },
}

local theme = {
  normal = {
    a = { fg = colors.black, bg = colors.green },
    b = { fg = colors.black, bg = colors.blue },
    c = { fg = colors.white },
    x = { fg = colors.white },
    y = { fg = colors.foreground, bg = colors.black4 },
  },

  insert = {
    a = { fg = colors.black, bg = colors.pink, gui = "bold" },
    b = { fg = colors.black, bg = colors.blue },
    x = { fg = colors.white },
    y = { fg = colors.foreground, bg = colors.black4 },
    z = { fg = colors.black, bg = colors.pink, gui = "none" },
  },
  visual = {
    a = { fg = colors.black, bg = colors.violet, gui = "bold" },
    b = { fg = colors.black, bg = colors.blue },
    x = { fg = colors.white },
    y = { fg = colors.foreground, bg = colors.black4 },
    z = { fg = colors.black, bg = colors.violet, gui = "none" },
  },
  replace = {
    a = { fg = colors.black, bg = colors.orange, gui = "bold" },
    b = { fg = colors.black, bg = colors.blue },
    x = { fg = colors.white },
    y = { fg = colors.foreground, bg = colors.black4 },
    z = { fg = colors.black, bg = colors.orange, gui = "none" },
  },
  command = {
    a = { fg = colors.black, bg = colors.red, gui = "bold" },
    b = { fg = colors.black, bg = colors.blue },
    x = { fg = colors.white },
    y = { fg = colors.foreground, bg = colors.black4 },
    z = { fg = colors.black, bg = colors.red, gui = "none" },
  },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.foreground, bg = colors.background, gui = "italic" },
    c = { fg = colors.white },
  },
}

local config = {
  options = {
    globalstatus = true,
    icons_enabled = true,
    theme = theme,
    component_separators = "",
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = {
      {
        "mode",
        fmt = function(str)
          return string.format("%7s", str)
        end,
        separator = { left = "", right = "" },
        right_padding = 2,
      },
    },
    lualine_b = {
      {
        "tabs",
        mode = 1,
        path = 1,
        tab_max_length = 19,
        max_length = vim.o.columns * 0.7,
        show_modified_status = true,
        use_mode_colors = true,
        symbols = { modified = "●", readonly = "󰌾" },
        separator = { left = "", right = "" },
      },
    },
    lualine_c = {},
    lualine_x = { "location", "progress" },
    lualine_y = { lsp, "filetype" },
    lualine_z = {
      { "branch", separator = { left = "", right = "" }, left_padding = 2 },
    },
  },
  inactive_sections = {},
  extensions = {},
}

return {
  "nvim-lualine/lualine.nvim",
  init = function()
    require("lualine").setup(config)
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
