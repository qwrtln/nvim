# 🛸 nvim

This is the [`neovim`](https://github.com/neovim/neovim) configuration I use both personally 🏠 and professionally 💼

## 🚧 Dependencies

Make sure you have installed the following:
 - git
 - [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope file/text search)
 - [NerdFont](https://www.nerdfonts.com/) (for icons)

Optionally, you can install LSPs:
 - [bash-language-server](https://github.com/bash-lsp/bash-language-server)
 - [pyright](https://github.com/microsoft/pyright)
 - [lua-language-server](https://github.com/LuaLS/lua-language-server)

And autoformatters (system-wide):
 - [stylua](https://github.com/JohnnyMorganz/stylua)
 - [ruff](https://github.com/charliermarsh/ruff) and [isort](https://github.com/PyCQA/isort)
 - [shellcheck](https://github.com/koalaman/shellcheck)

## 🔦 Highlights

### 🦥 Plugin Manager

I use [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager.
If you cloned this repository and want to use this configuration yourself, run `:checkhealth lazy` first.
Then, run `:Lazy` to install plugins.

### 😎 Interesting Key Bindings

 - `<Space>` (or `<Enter>`) is the leader key - optimized for both regular keyboards and ergonomic layouts with thumb clusters
 - `<Space>;` opens command mode (`:`) - more comfortable than Shift+;
 - `<Space>g` opens a popup window with recursive grep search in the current directory. Blazing fast ⚡ thanks to `ripgrep`
 - `<Space>f` does the same but with file names using Telescope 🔥
 - `<Space>t` opens a terminal in vertical split on the right already in insert mode. Ready to type commands 👨‍💻
 - `<Space>n` opens neogit 🌳
 - `<Space>o` opens file manager in a floating window 🛢️
 - `<C-s>` shows git diff of the current line thanks to `gitsigns`
 - `<C-\>` (un)comments either current line, or visually selected block of code 🔎
 - `m` activates leap motion for quick navigation within visible text

### 🤖 AI Assistance

Codeium suggests snippets while typing, thanks to `neocodeium` plugin.
Use the following:
 - `<A-f>` to accept the suggestion
 - `<A-r>` to cycle through the suggestions
 - `<A-e>` to cycle backwards
 - `<A-q>` to clear suggestions

### 📖 Status Line

Using [lualine](https://github.com/nvim-lualine/lualine.nvim), I built a status line which also includes tabs, and shows some other goodies:

![image](.docs/lualine_normal.png) 
![image](.docs/lualine_insert.png) 
![image](.docs/lualine_visual.png) 
![image](.docs/lualine_command.png) 
![image](.docs/lualine_replace.png) 

The colors are hardcoded to work independently of the colorscheme, and stay consistent with tmux look.

### 📋 List of Plugins

 - [cmp](https://github.com/hrsh7th/nvim-cmp) - autocompletion
 - [conform](https://github.com/stevearc/conform.nvim) - formatting
 - [gitsigns](https://github.com/lewis6991/gitsigns.nvim) - git integration
 - [leap](https://github.com/ggandor/leap.nvim) - motion plugin
 - [lualine](https://github.com/nvim-lualine/lualine.nvim) - statusline
 - [neocodeium](https://github.com/monkoose/neocodeium) - AI code suggestions
 - [neogit](https://github.com/NeogitOrg/neogit) - git interface
 - [neoscroll](https://github.com/karb94/neoscroll.nvim) - smooth scrolling
 - [noice](https://github.com/folke/noice.nvim) - better UI messages
 - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration
 - [oil](https://github.com/stevearc/oil.nvim) - file explorer
 - [smear-cursor](https://github.com/sphamba/smear-cursor.nvim) - cursor animation
 - [telescope](https://github.com/nvim-telescope/telescope.nvim) - fuzzy finder
 - [tokyonight](https://github.com/folke/tokyonight.nvim) - colorscheme
 - [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - syntax highlighting

Plus some others used indirectly as dependencies.

## 💡 Non-standard features

- **Dual leader key**: Space for regular keyboards, Enter for ergonomic keyboards with thumb clusters
- **Smooth animations**: Smear cursor and neoscroll for better visual feedback
- **Leader-based command mode**: `<Space>;` instead of Shift+; for more comfortable command entry
- **Leap on `m` key**: Quick motion navigation without overriding the commonly-used `s` (substitute)
