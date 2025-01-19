require('nvim-treesitter.configs').setup {
  ensure_installed = { 'vim', 'vimdoc', 'lua', 'cpp', 'markdown', 'matlab', 'julia', 'python', 'nix' },

  auto_install = false,
	ignore_install = {},
	sync_install = false,

  highlight = { enable = true },

  indent = { enable = true },
}


