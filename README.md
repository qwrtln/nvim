# 🛸 nvim

This is the [`neovim`](https://github.com/neovim/neovim) configuration I use both personally 🏠 and profesionally 💼

## 🚧 Dependencies

Make sure you have installed the following:
 - git
 - [fzf](https://github.com/junegunn/fzf)
 - [ripgrep](https://github.com/BurntSushi/ripgrep)
 - [NerdFont](https://www.nerdfonts.com/)

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

 - `jk` mapped as `<Esc>` is a great time saver.
 - `<Space-g>` opens a popup window with recursive grep search in the current directory. Blazing fast ⚡ thanks to `ripgrep`.
 - `<Space-f>` does the same but with file names. Superfast thanks to `fzf` 🔥
 - `<Space-t>` opens a terminal in vertical split on the right already in insert mode. Ready to type commands 👨‍💻
 - `<Space-n>` opens neogit 
 - `<C-s>` shows git diff of the current line thanks to `gitsigns`.
 - `<C-|>` (un)comments either current line, or visually selected block of code 🔎

### 📖 Status Line

Using [lualine](https://github.com/nvim-lualine/lualine.nvim), I built a status line which also includes tabs, and shows some other goodies:

![image](.docs/lualine_normal.png) 
![image](.docs/lualine_insert.png) 
![image](.docs/lualine_visual.png) 
![image](.docs/lualine_command.png) 
![image](.docs/lualine_replace.png) 


### 📋 List of Plugins

 - [conform](https://github.com/stevearc/conform.nvim)
 - [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
 - [lualine](https://github.com/nvim-lualine/lualine.nvim)
 - [neogit](https://github.com/NeogitOrg/neogit)
 - [noice](https://github.com/folke/noice.nvim)
 - [nvim-comment](https://github.com/terrortylor/nvim-comment)
 - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
 - [telescope](https://github.com/nvim-telescope/telescope.nvim)
 - [tokyonight](https://github.com/folke/tokyonight.nvim)
 - [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

Plus some others used indirectly as dependencies.
