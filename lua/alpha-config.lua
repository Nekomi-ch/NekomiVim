local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local headerrand = math.random(3)
local dashboard = require("alpha.themes.dashboard")



if headerrand == 1 then
	dashboard.section.header.val = {
		[[███╗   ██╗███████╗██╗  ██╗ ██████╗ ███╗   ███╗██╗██╗   ██╗██╗███╗   ███╗]],
		[[████╗  ██║██╔════╝██║ ██╔╝██╔═══██╗████╗ ████║██║██║   ██║██║████╗ ████║]],
		[[██╔██╗ ██║█████╗  █████╔╝ ██║   ██║██╔████╔██║██║██║   ██║██║██╔████╔██║]],
		[[██║╚██╗██║██╔══╝  ██╔═██╗ ██║   ██║██║╚██╔╝██║██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
		[[██║ ╚████║███████╗██║  ██╗╚██████╔╝██║ ╚═╝ ██║██║ ╚████╔╝ ██║██║ ╚═╝ ██║]],
		[[╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝]],
	}
elseif headerrand == 2 then
	dashboard.section.header.val = {
		[[	　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　██　　　　　　　　　　　　　　　　　　　　　　]],
		[[　　████　　　　　　　　　　　　　　　　　　　　　　████████　　　　　　　　　　██　　　  　██　　　　　　　　　　　　　　　　　██　　　　　]],
		[[　　████　　████　　　　　　████████████　　　　　　　　　██　　　　　　　████████████████　　　　　　　　　　　　　　　　　　　██　　　　　]],
		[[██████████　　　██　　　　　　　　　　　　　　　　　　　██　　　　　　　██████████████████　　　　　　　　　　██　　　　　　　██　　　　　　]],
		[[　　████　　　　██　　　　　　　　　　　　　　　　　　　██　　　██　　　██　　　　　　　██　　　　　　　　　██　　　　　　　　██　　　　　　]],
		[[　　██　　　　　████　　　　　　　　　　　　　　　████████████████　　　██　　　　　　　██　　　　　　　████　　　　　　　　　██　　　██　　]],
		[[　████　　　　　████　　　██　　　　　　　　　　██　　██　　　██████　　　　　　　　　██　　　　　　████████　　　　　　　　██　　　　██　　]],
		[[██　██　　██████████　　　██　　　　　　　　　　██　　██　　　██████　　　　　　　　████　　　　　██　　　██　　　　　　　　██　　　　　██　]],
		[[██　██　　██　　████　　　██　　　　　　　　　　██████　　　　██　　　　　　　　　████　　　　　　　　　　██　　　　　　　██████████████████]],
		[[　　██　　████████　　　　　██████████████　　　　██　　　　██　　　　　　　　██████　　　　　　　　　　　██　　　　　　██████　　　　　　██]],
		[[　　　　　　　　　　　　　　　　　　　　　　　　　　　　　██　　　　　　　　　██　　　　　　　　　　　　　██　　　　　　　　　　　　　　　　]],
	}
else
	dashboard.section.header.val = {
		[[		　　　████　　██　　██　　　　██　　██　　　　　　　　　　　　　　　　　　　　　　　　　　　]],
		[[　██████　　██████　██████　████　████████████████████　　　　　██　　████　　████　　　　　██　]],
		[[　██　██████　██　　████　　██　　██　██　　██　　██████　　　　██　　████　　████　　　　██████]],
		[[　████████　　██　　██　　　　████　　██　　██　　██　██　　　　██　　████　　██████　　　██████]],
		[[　　████　　　██　　██　　　　██　████████████　　██　██　　　████　　████　　██████　　　██████]],
		[[　██　████　████████████　　████　　　██　　██　　██　████　　██　　　████　　██████　　████████]],
		[[　　██████　██　　██　██　██　██　██　██　　██　　██　　██　　██　　　████　　████　██　██　████]],
		[[　██　　██　████████████　　　██　██　████　██　　██　　██　████　　　████　　████　██　██　████]],
		[[　　　████　██　████　██　　　██　██　██　　██　　██　　██████　　　　████　　████　████　　████]],
		[[　████　██　██　　██　██　　　██　██　██　　██　██　　　　████　　　　████　　████　　██　　████]],
		[[　　　　██　████████████　　　██　████████████　　　　　　████　　　　████　　████　　　　　████]],
		[[　　████　　██　　　　██　　　██　　　　　　██　　　　　　　　　　　　　　　　　　　　　　　　　]],
	}
end

dashboard.section.buttons.val = {
	dashboard.button("f"," " .. " Find File", "<cmd>Telescope find_files <cr>"),
	dashboard.button("r", "󰃨 " .. " Recent Files", "<cmd>Telescope oldfiles <cr>"),
	dashboard.button("t", "󰺯 " .. " Find Text", "<cmd>Telescope live_grep <cr>"),
	dashboard.button("l", "󰒲 " .. " Lazy", "<cmd>Lazy <cr>"),
	dashboard.button("m", " " .. " Mason", "<cmd>Mason <cr>"),
	dashboard.button("q"," " .. " Exit","<cmd>qa<cr>"),
}

local quotetabl = {
	--Gaming
	[[I'll have two number 9s, a number 9 large, a number 6 with extra dip, a number 7, two number 45s, one with cheese, and a large soda. 
	-Big Smoke]],
	[[Every journey has its final day. Don't rush. 
	-ZhongLi]],
	[[You have to see the world for yourself to appreciate how beautiful it is. 
	-Nahida]],
	[[Life is like the theater you can never tell when the twist will come. 
	-Furina]],

	--will add more
}

local function footer()
 return quotetabl[math.random(#quotetabl)]
end

dashboard.section.footer.val = footer()

