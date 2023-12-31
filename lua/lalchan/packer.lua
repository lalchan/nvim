vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use "nvim-lua/plenary.nvim"
	use "mbbill/undotree"
	use { "nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'}}
	use { "catppuccin/nvim", as = "catppuccin",
		config = function()
			vim.cmd('colorscheme catppuccin')
		end
	}
	use {
		"numToStr/Comment.nvim",
		config = function()
			require('Comment').setup()
		end
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { 'nvim-lua/plenary.nvim'}
	}
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { "nvim-lua/plenary.nvim" }
	}
	use{
		"kdheepak/lazygit.nvim",
		requires = {"nvim-lua/plenary.nvim"},
	}
	use { 'echasnovski/mini.nvim', branch = 'stable' }
	use { 'echasnovski/mini.surround', branch = 'stable' }
	use {
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end,
	}
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'}
		}
	}
end)
