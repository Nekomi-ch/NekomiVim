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
	[[Every journey has its final day. Don't rush. 
	-ZhongLi]],
	[[You have to see the world for yourself to appreciate how beautiful it is. 
	-Nahida]],
	[[Life is like the theater you can never tell when the twist will come. 
	-Furina]],
	[[Traveler, as you set off on a journey once again, you must remember that the journey itself has meaning. 
	-Venti]],
	[[Winning a battle takes a concentrated effort from everyone involved. Victory never belongs to a single person. 
	-Kokomi]],
	[[Every course of action has its risks. Be careful. 
	-Diluc]],
	[[The past cannot be changed, and the future cannot be foretold. As a result, I make sure to always cherish the here and now. 
	-Cyno]],
	[[Don’t be afraid to make mistakes. It’s all part of the learning process. 
	-Tighnari]],
	[[Only once you know and respect death can you truly understand the value of life. 
	-Hu Tao]],
	[[If you can change something, change it. If you can’t, don’t waste time thinking about it. 
	-BeiDou]],
	[[Having one terrible day doesn't mean things will stay that way. 
	-Mualani]],
	[[It's up to me to decide who I want to be and to cut my own path, no one can tell me what to do. 
	-Chiori]],
	[[To exsist in the first place is a beautiful thing and that's enough isn't it? 
	Ganyu]],
	[[If you make a promise you keep it, if you make a mistake you apologise, and if you give someone a dream you defend it to the end. 
	-Childe]],
	[[Fireworks are for now bur friends are forever. 
	Yoimiya]],
	[[Don't put off until tommorow, what can you do today? 
	-YaoYao]],

	--Programming/Linux
	[[Software is like sex : It's better when it's free. 
	-Linus Torvalds]],
	[[Nvidia, fuck you! 
	-Linus Torvalds]],
	[[Talk is cheap, show me the code. 
	-Linus Torvalds]],
	[[People are scared to say stuff, but I'm not. That's why everybody wants to kill me or have sex with me. 
	-Linus Torvalds]],
	[[Sharing knowledge is the most fundamental act of friendship. Because it is a way you can give something without loosing something. 
	-Richard Stallman]],
	[[Proprietary software is an injustice. 
	-Richard Stallman]],
	[[There is nothing wrong with wanting pay for work, or seeking to maximize one's income, as long as one does not use means that are destructive.
	-Richard Stallman]]

	--will add more
}

local function footer()
 return quotetabl[math.random(#quotetabl)]
end

dashboard.section.footer.val = footer()

