vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Color theme
  use { "catppuccin/nvim", as = "catppuccin" }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'lewis6991/gitsigns.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })()
    end,
  }
  
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }

  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  }

  -- LSP-related plugins
  use 'neovim/nvim-lspconfig' -- Core LSP configurations
  use 'hrsh7th/cmp-nvim-lsp'  -- For autocompletion integration with LSP
  use 'hrsh7th/nvim-cmp'      -- General autocompletion framework

  -- Mason
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }

  use { "hrsh7th/nvim-cmp" }
  use { "L3MON4D3/LuaSnip" }
  use { "saadparwaiz1/cmp_luasnip" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-cmdline" }
  use { "hrsh7th/cmp-nvim-lsp" }

  -- Languages
  use {'fatih/vim-go', run = ':GoUpdateBinaries'}
end)
