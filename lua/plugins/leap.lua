return {
  "ggandor/leap.nvim",
  init = function()
    vim.keymap.set({ "n", "x", "o" }, "m", "<Plug>(leap)")
    vim.keymap.set("n", "M", "<Plug>(leap-from-window)")
  end,
}
