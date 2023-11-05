require("helm_ls_config")
require("mappings")
require("options")
require("plugins")

-- enable filetypee.lua
-- This feature is currently opt-in
-- as it does not yet completely match all of the filetypes covered by filetype.vim
vim.g.do_filetype_lua = true
-- disable filetype.vim
vim.g.did_load_filetypes = false

