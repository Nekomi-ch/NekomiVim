require "options"
require "pluginlist"
require "plugins"
require "alpha-config"
require "cmp-config"


print("Hello Nekomi!")

require("FujiIdol").setup()

vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
