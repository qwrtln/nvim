-- stylua: ignore start
local options = {
  backup = false,                          -- prevent creation of backup files
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hidden = true,                           -- required to keep multiple buffers and open multiple buffers
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- required for smartcase to work
  mouse = "a",                             -- enable mouse in all modes
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- included in statusline
  showtabline = 0,                         -- hide tabs by default
  smartcase = true,                        -- case sensitive search when using uppercase letters
  smartindent = true,                      -- enable smart indenting for code 
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- disable swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 200,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  number = true,                           -- set numbered lines
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 4 {the default}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  scrolloff = 8,                           -- scroll content before reaching the edge of the screen
  sidescrolloff = 8,                       -- ditto for horizontal scrolling
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  whichwrap = "<,>,[,],h,l"                -- which "horizontal" keys should wrap to next/previous line
}

vim.opt.shortmess:append("c")              -- don't give |ins-completion-menu| messages
vim.opt.iskeyword:append("-")              -- hyphenated words recognized by searches
-- stylua: ignore end

for k, v in pairs(options) do
  vim.opt[k] = v
end
