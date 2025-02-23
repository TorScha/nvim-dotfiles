return {
  { "folke/lazy.nvim" },
  { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } },
  { "nvim-lualine/lualine.nvim" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
  { "tpope/vim-fugitive" },
  { "christoomey/vim-tmux-navigator" }
}
