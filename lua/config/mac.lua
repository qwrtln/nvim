-- macOS specific settings to support Fastlane and Swift
local file_types = { "ruby", "swift" }

require("nvim-treesitter").install(file_types)

vim.filetype.add {
  pattern = {
    [".*/fastlane/.+file"] = "ruby",
  },
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = file_types,
  callback = function()
    vim.treesitter.start()
  end,
})
