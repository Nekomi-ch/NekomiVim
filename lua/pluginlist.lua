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
  	'neko-night/nvim',
    lazy = false,
    priority = 1000,
		config = function()
			require('nekonight').setup({style = "nord"})
			require('nekonight').load()
		end
	},

	{
		'EdenEast/nightfox.nvim',
		lazy = false,
    priority = 1000,
	},

	--lualine
	{
	  'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
    	require("lualine").setup({
				options = {
      		icons_enabled = true,
        	theme = 'nordfox',
					section_separators = { left = '', right = '' },
  				component_separators = { left = '|', right = '|' }
				},
				sections = {
					lualine_a = {'mode'},
    			lualine_b = {'branch', 'diff', 'diagnostics'},
    			lualine_c = {'filename'},
    			lualine_x = {'encoding', 'filetype'},
    			lualine_y = {'location'},
    			lualine_z = {
						function()
            	return " " .. os.date("%R")
          	end,
					},
				},
				inactive_sections = {
    			lualine_a = {},
    			lualine_b = {},
    			lualine_c = {'filename'},
    			lualine_x = {'location'},
    			lualine_y = {},
    			lualine_z = {}
  			},
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
		'nvim-treesitter/playground',
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

	--which-key
	{
  	"folke/which-key.nvim",
  	event = "VeryLazy",
  	opts = {
  	  -- your configuration comes here
  	  -- or leave it empty to use the default settings
  	  -- refer to the configuration section below
  	},
	  keys = {
	    {
	      "<leader>?",
	      function()
	        require("which-key").show({ global = false })
	      end,
	      desc = "Buffer Local Keymaps (which-key)",
	    },
	  },
	},

	--yanky
	{
  	"gbprod/yanky.nvim",
  	opts = {
  		highlight = { timer = 300},
  	},
	},

	--colorizer.lua
	{
		'norcalli/nvim-colorizer.lua',
		config = function()
			require 'colorizer'.setup{
			  '*'; -- Highlight all files, but customize some others.
			  css = { rgb_fn = true; }; -- Enable parsing rgb(...) functions in css.
			  html = { names = false; } -- Disable parsing "names" like Blue or Gray
			}
		end
	},

	--markdown preview
	{
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
	},

	--My own theme test 
	{
		dir = "~/FujiIdol.nvim"
	},


}

