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
	},

	--alpha/dashboard
	{
    'goolord/alpha-nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
    	require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
	},

	--telescope
	{
    'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
		},
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		end
	},

	--treesitter
	{
		'nvim-treesitter/nvim-treesitter',
	},

	--vimtex
	{
		"lervag/vimtex",
  	lazy = false,     -- we don't want to lazy load VimTeX
  	init = function()
    	-- VimTeX configuration goes here, e.g.
    	vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_view_general_viewer = 'okular'
  	end
	},
}
