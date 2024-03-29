-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Test change

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  require("rose-pine").setup()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
  use( 'nvim-treesitter/playground' )
  use( 'nvim-lua/plenary.nvim' )
  use( 'ThePrimeagen/harpoon' )
  use( 'mbbill/undotree' )
  use( 'adalessa/laravel.nvim' )
  use( 'scrooloose/nerdtree' )
  use( 'ryanoasis/vim-devicons' )
  use({
	  "aserowy/tmux.nvim",
	  config = function() return require("tmux").setup() end
  })
  use({
	  "Pocco81/auto-save.nvim",
	  config = function()
		  require("auto-save").setup {
			  -- your config goes here
			  -- or just leave it empty :)
			  enabled = true
		  }
	  end,
  })
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }

end)
