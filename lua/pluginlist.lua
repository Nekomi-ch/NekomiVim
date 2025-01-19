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

	--cmp/codecompletion
	{
    'hrsh7th/nvim-cmp',
    dependencies = {
    	'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
			'kdheepak/cmp-latex-symbols',
			'micangl/cmp-vimtex',
    },
  },

	--close brackets
	{
		'rstacruz/vim-closer'
	}
}
