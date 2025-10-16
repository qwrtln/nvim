return {
  "ggandor/leap.nvim",
  init = function()
    vim.keymap.set({ "n", "x", "o" }, "f", "<Plug>(leap)")
    vim.keymap.set("n", "F", "<Plug>(leap-from-window)")
  end,
}
