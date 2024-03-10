-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
	  'folke/tokyonight.nvim',
	  as = 'tokyonight',
		config = function ()
			require( 'tokyonight' ).setup( {
				transparent = true
			} )
		end
  }

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  use('nvim-treesitter/playground')

  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  { 'neovim/nvim-lspconfig' },
		  { 'williamboman/mason.nvim' },
		  { 'williamboman/mason-lspconfig.nvim' },

		  { 'hrsh7th/nvim-cmp' },
		  { 'hrsh7th/cmp-buffer' },
		  { 'hrsh7th/cmp-path' },
		  { 'saadparwaiz1/cmp_luasnip' },
		  { 'hrsh7th/cmp-nvim-lsp' },
		  { 'hrsh7th/cmp-nvim-lua' },

		  { 'L3MON4D3/LuaSnip' },
		  { 'rafamadriz/friendly-snippets' },
	  }
  }

  use {
	  'windwp/nvim-autopairs',
	  config = function()
		  require( 'nvim-autopairs' ).setup( {} )
	  end
  }

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  }

  use( 'lewis6991/gitsigns.nvim' )

  use{
	  'utilyre/barbecue.nvim',
	  config = function ()
	  	require('barbecue').setup()
	  end,
	  requires = {
		  'SmiteshP/nvim-navic',
		  'nvim-tree/nvim-web-devicons'
	  }
  }

  use {
	  'Pocco81/auto-save.nvim',
	  config = function ()
		  require('auto-save').setup()
	  end
  }

  use {
	  'epwalsh/obsidian.nvim',
	  requires = {
		  'nvim-lua/plenary.nvim'
	  }
  }
end)

