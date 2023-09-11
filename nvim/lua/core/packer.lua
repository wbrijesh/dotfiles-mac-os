require("packer").startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'numToStr/Comment.nvim'
	use 'EdenEast/nightfox.nvim'

	use 'nvim-lualine/lualine.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
	
	vim.cmd('colorscheme nightfox')
	require('Comment').setup()
end)
