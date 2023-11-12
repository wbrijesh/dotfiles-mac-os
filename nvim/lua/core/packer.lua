require("packer").startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'numToStr/Comment.nvim'
	-- use 'EdenEast/nightfox.nvim'

	use 'nvim-lualine/lualine.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'

	use "folke/which-key.nvim"

	use 'projekt0n/github-nvim-theme'
	use 'dasupradyumna/midnight.nvim'

	vim.cmd('colorscheme github_dark_high_contrast')
	require('Comment').setup()

	use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
	}
	
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "L3MON4D3/LuaSnip"
	use "saadparwaiz1/cmp_luasnip"
	use "rafamadriz/friendly-snippets"
end)

-- todo: add plugins for autocomplete
-- todo: find plugin or write function to do multiple tab indents with single key press when needed
-- todo: format on save documents by running cargo fmt or go fmt or prettier etc
-- todo: figure out if quote and brackets autocompletion is possible
-- todo: hrsh7th/cmp-path
-- todo: treesitter
