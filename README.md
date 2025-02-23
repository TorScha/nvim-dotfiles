# 📝 Neovim Dotfiles

A personal and highly customizable Neovim configuration designed for productivity and efficiency. Built on top of [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) and extended with modern plugins like [Lazy.nvim](https://github.com/folke/lazy.nvim), it’s fully optimized for PHP, Laravel, and web development workflows.

## 🚀 Features

- ⚡ **Lazy-loaded plugins** using `lazy.nvim` for faster startup
- 🧠 **LSP (Language Server Protocol)** integration with custom settings
- 🔥 **Autocomplete** powered by `nvim-cmp` and `luasnip`
- 🎨 **Syntax highlighting** with `nvim-treesitter`
- 🖥️ **tmux integration** for seamless navigation between panes
- 📁 **File explorer** with `nvim-tree.lua`
- 🔍 Fuzzy file finder with `telescope.nvim`
- 🗂️ Custom key mappings for faster and more efficient coding
- 🎯 Optimized for PHP and Laravel development (with `intelephense`)

## 📦 Plugins

Here’s a list of some key plugins used in this configuration:

- [Lazy.nvim](https://github.com/folke/lazy.nvim) – Plugin manager
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) – Autocompletion engine
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) – Snippet engine
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) – Language Server integration
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) – Advanced syntax highlighting
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) – Fuzzy finder and file navigation
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) – File explorer
- [vim-fugitive](https://github.com/tpope/vim-fugitive) – Git integration
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) – Seamless tmux navigation

## ⚙️ Installation

### 1️⃣ Clone the Repository

First, remove any existing Neovim configuration (optional, if applicable):

```bash
rm -rf ~/.config/nvim
```

Then, clone this repository:

```bash
git clone https://github.com/your-username/nvim-dotfiles.git ~/.config/nvim
```

### 2️⃣ Install Plugins

Launch Neovim and run:

```vim
:Lazy sync
```

This will automatically install all plugins and dependencies.

### 3️⃣ Install LSP for PHP (Laravel)

If you're working with PHP and Laravel, install the `intelephense` language server:

```bash
npm install -g intelephense
```

Generate Laravel IDE helpers (optional for Laravel developers):

```bash
composer require barryvdh/laravel-ide-helper --dev
php artisan ide-helper:generate
php artisan ide-helper:models -M
```

## 🗝️ Key Mappings

| Shortcut                | Action                             |
| ----------------------- | ---------------------------------- |
| `<Ctrl + p>`            | Open file finder (Telescope)       |
| `<Leader>e`             | Toggle file explorer (`nvim-tree`) |
| `<Leader>ff`            | Fuzzy find files                   |
| `<Ctrl + h/j/k/l>`      | Navigate between tmux splits       |
| `<Leader>g`             | Git commands (Fugitive)            |
| `<Tab>` / `<Shift+Tab>` | Navigate autocomplete suggestions  |
| `<CR>` (Enter)          | Confirm autocomplete suggestion    |
| `<Esc>`                 | Close autocomplete suggestions     |

> 🔑 Customize key mappings in `lua/keymaps.lua`

## 💡 Customization

You can customize your settings by editing these files:

- `lua/options.lua`: General Neovim options (line numbers, indentation, etc.)
- `lua/keymaps.lua`: Key mappings
- `lua/plugins/*.lua`: Plugin-specific configurations
- `lua/lsp.lua`: LSP configuration and language server settings

## 🐛 Troubleshooting

- Run `:checkhealth` inside Neovim to verify that all dependencies are correctly installed.
- If you encounter plugin issues, run:

```vim
:Lazy sync
:Lazy update
```

- Check for errors in the Neovim log:

```bash
nvim --log
```

## 📄 License

This project is licensed under the [MIT License](LICENSE).

## 🙏 Acknowledgments

- Inspired by [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- Built with [Lazy.nvim](https://github.com/folke/lazy.nvim)

**Happy coding! 🚀**
