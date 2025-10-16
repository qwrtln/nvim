return {
  "karb94/neoscroll.nvim",
  config = function()
    require("neoscroll").setup {
      easing = "sine",
      ignored_events = {},
    }
  end,
}
