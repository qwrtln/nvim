require("mappings")
require("options")
require("config.lazy")

if vim.fn.has("mac") == 1 then
  require("config.mac")
end
