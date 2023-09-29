require("packer").startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'numToStr/Comment.nvim'
	use 'EdenEast/nightfox.nvim'

	use 'nvim-lualine/lualine.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'

	use 'projekt0n/github-nvim-theme'
	use { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 }

	vim.cmd('colorscheme github_dark_high_contrast')
	require('Comment').setup()

	use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
	}
end)
