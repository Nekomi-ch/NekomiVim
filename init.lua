require "options"
require "pluginlist"
require "plugins"
require "alpha-config"


print("Hello Nekomi!")

require("FujiIdol").setup()

vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
