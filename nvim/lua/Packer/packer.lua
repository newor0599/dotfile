vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer manager
	use 'wbthomason/packer.nvim'
	-- Linter
	use "nvim-tree/nvim-tree.lua"

	-- Icons
	use "nvim-tree/nvim-web-devicons"
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- Colorscheme
	use "ribru17/bamboo.nvim"

	use "ThePrimeagen/harpoon"


	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- File Explorer
	use "nvim-treesitter/nvim-treesitter"

	-- Ui improvement
	use 'stevearc/dressing.nvim'

	-- Autocompletes
	use "neovim/nvim-lspconfig"
	use {'hrsh7th/cmp-buffer'}
	use {'hrsh7th/cmp-path'}
	use {'hrsh7th/cmp-cmdline'}
	use {'hrsh7th/nvim-cmp'}
	use {'hrsh7th/cmp-vsnip'}
	use {'hrsh7th/vim-vsnip'}
	use {'rafamadriz/friendly-snippets'}
	
	-- Auto bracket placer
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end

	}
	use "barrett-ruth/live-server.nvim"
	use "romgrk/barbar.nvim"
end)
