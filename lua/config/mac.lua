-- macOS specific settings to support Fastlane and Swift
vim.filetype.add {
  pattern = {
    [".*/[Ff]astfile$"] = "ruby",
    [".*/[Aa]ppfile$"] = "ruby",
    [".*/[Pp]lugfile$"] = "ruby",
    [".*/[Mm]atchfile$"] = "ruby",
    [".*/[Ss]canfile$"] = "ruby",
    [".*/[Ss]napfile$"] = "ruby",
    [".*/[Gg]ymfile$"] = "ruby",
  },
}

vim.lsp.enable("ruby_lsp")
vim.lsp.enable("sourcekit")
