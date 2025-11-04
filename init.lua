require("mappings")
require("options")
require("autocommands")
require("config.lazy")
require("health")

if vim.fn.has("mac") == 1 then
  require("config.mac")
end
