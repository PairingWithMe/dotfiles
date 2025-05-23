return {
  { 'wbthomason/packer.nvim' },

  {
    'nvim-telescope/telescope.nvim'
  },
  { 'nvim-lua/plenary.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'hashivim/vim-terraform' },

  { 'mbbill/undotree' },
  { 'rose-pine/neovim' },
  { 'tpope/vim-fugitive' },
  {
    'VonHeikemen/lsp-zero.nvim'
  },
  { 'williamboman/mason.nvim',          build = ":MasonUpdate", config = true },
  { 'williamboman/mason-lspconfig.nvim' },
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      require("mason-null-ls").setup({
        ensure_installed = { "prettier" },
        automatic_installation = true,
      })

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier,
        },
      })
    end,
  },

  { 'neovim/nvim-lspconfig' },

  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-nvim-lua' },

  { 'L3MON4D3/LuaSnip' },
  { 'rafamadriz/friendly-snippets' },

  { 'aux4/vim' },
  { "github/copilot.vim" }
}
