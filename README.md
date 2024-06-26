# 🛸 nvim

This is the [`neovim`](https://github.com/neovim/neovim) configuration I use both personally 🏠 and profesionally 💼

## 🚧 Dependencies

Make sure you have installed the following:
 - git
 - [fzf](https://github.com/junegunn/fzf)
 - [ripgrep](https://github.com/BurntSushi/ripgrep)
 - [NerdFont](https://www.nerdfonts.com/)

Optionally, you can install LSPs:
 - [pyright](https://github.com/microsoft/pyright)
 - [terraform-ls](https://github.com/hashicorp/terraform-ls)
 - [helm-ls](https://github.com/emacs-lsp/helm-lsp)
 - [lua-language-server](https://github.com/LuaLS/lua-language-server)

## 🔦 Highlights

### 🦥 Plugin Manager

I use [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager.
If you cloned this repository and want to use this configuration yourself, run `:checkhealth lazy` first.
Then, run `:Lazy` to install plugins.

### 😎 Interesting Key Bindings

 - `<C-g>` opens a popup window with recursive grep search in the current directory. Blazing fast ⚡ thanks to `ripgrep`.
 - `<C-f>` does the same but with file names. Superfast thanks to `fzf` 🔥
 - `<C-t>` opens a terminal in vertical split on the right already in insert mode. Ready to type commands 👨‍💻
 - `<C-|>` (un)comments either current line, or visually selected block of code 🔎


### 📋 List of Plugins

 - [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
 - [lualine](https://github.com/nvim-lualine/lualine.nvim)
 - [nvim-comment](https://github.com/terrortylor/nvim-comment)
 - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
 - [nvim-navic](https://github.com/SmiteshP/nvim-navic)
 - [telescope](https://github.com/nvim-telescope/telescope.nvim)
 - [tokyonight](https://github.com/folke/tokyonight.nvim)
 - [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
 - [vim-helm](https://github.com/towolf/vim-helm)
