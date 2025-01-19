return {
	{
		--comment
  	'numToStr/Comment.nvim',
    config = function()
			require("Comment").setup()
		end
	},

	--theme
	{
  	'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    	require('nordic').load()
			vim.cmd.colorscheme('nordic')
    end
	},

	--lualine
	{
	  'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
    	require("lualine").setup({
      	icons_enabled = true,
        theme = 'nordic',
      })
    end,
	},

	--language server
	"williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

	"folke/neodev.nvim",
	
}
