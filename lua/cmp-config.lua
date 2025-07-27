local cmp = require("cmp")

local icons = {
	Text = "󰉿 ",
	Variable = " ",
	Function = "󰡱 ",
	Keyword = " ",
	Class = " ",
	Constructor = "󰡢 ",
	Method = " ",
	Module = " ",
	Snippet = " ",
	Field = "󱪲 ",
	Enum = " ",
	Property = " ",
}

cmp.setup({
	window = {
		completion = cmp.config.window.bordered({
			winhighlight = "Normal:Pmenu,floatBorder:Pmenu,CursorLine:PmenuSel,Search:None"
		}),
	},

	formatting = {
		format = function (_, vim_item)
			vim_item.kind = (icons[vim_item.kind] or " ") .. " " .. vim_item.kind
			return vim_item
		end
	},

	sources = {
  	{
    	name = "spell",
      option = {
      	keep_all_entries = false,
        enable_in_context = function()
        	return true
        end,
        preselect_correct_word = true,
    	},
    },
  },
})
