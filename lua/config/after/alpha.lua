local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
--local dirMenu = require("setdirectory")
--local dirMenu = require("config.custom.setdirectory")
--[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]]


local quotes = {
	{	[[⣿⣿ Thinking: the talking of the soul with itself ⣿]],
		[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ Plato ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	},
	{
		[[⣿⣿⣿⣿⣿⣿⣿ It is impossible for a man to learn ⣿⣿⣿⣿⣿⣿]],
		[[⣿⣿⣿⣿⣿⣿⣿⣿⣿ what he thinks he already knows ⣿⣿⣿⣿⣿⣿⣿⣿]],
		[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ Epictetus ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	},
	{
		[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ Any fool can know ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
		[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ The point is to understand ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
		[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ Albert Einstein ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	},
}
--header width 50,
local asciiArt = {
	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⡿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⢿⡟⠉⡠⣀⣼⣿⠿⠇⠠⠾⠋⢡⣶⣶⣿⡿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⡟⣡⡄⠚⡀⠀⢴⣿⣿⣴⣀⣨⠀⠀⣀⠀⠀⠠⠁⡐⠳⢀⣈⣭⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣯⡠⠜⢁⡄⠀⣠⢠⣷⣾⣿⣿⣿⠟⡡⢠⣾⣿⣿⣿⣷⡶⠀⠈⠁⠠⠉⠩⣅⠉⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⣿⢋⣿⣧⡀⠋⠀⢠⡘⢋⣰⡏⣼⣿⣿⣿⣿⡥⢊⡔⢿⣿⣿⣿⣿⣿⣿⣦⣴⣿⣦⣄⡀⠉⠹⠍⠩⠿⢿⣿⣿⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⡇⣾⡿⠋⠐⠸⡌⣿⣿⣿⣿⢱⣿⣿⣿⣿⣿⣶⣦⡄⣠⣿⣿⣿⣿⣿⣿⣿⡿⢟⣛⣩⣤⣤⣀⠀⠓⢤⣶⣿⣿⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⣇⠛⠀⣄⢸⡇⡇⣿⣿⣿⣇⣼⣿⠿⣿⣿⣿⡟⠟⠀⠉⠟⣿⣿⣿⡿⢿⣿⣿⣛⣛⣛⣛⣋⣉⣤⣥⠈⢻⣿⣿⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⠋⠀⣠⣿⡆⡇⠀⣿⣿⣿⣿⣿⣥⠀⣨⣿⣿⣇⣀⠀⢀⣀⣿⣿⣯⡀⢨⣽⣿⣿⣿⣿⣷⠾⠭⠭⠭⠄⠀⠙⢻⣿⣿⣿⣿]],
	[[⣿⣿⡛⢻⠃⠄⣠⠹⣿⣧⣸⣆⣹⠏⠈⣿⣿⣿⣿⣿⣿⡏⢿⡍⢿⠏⣼⠋⣿⣿⣿⣿⣿⡿⠟⠙⢿⣟⣛⡻⠿⠿⠷⡀⠀⠀⢬⣿⣿⣿]],
	[[⣿⣿⣷⡼⢀⢀⡙⣇⢹⣿⣿⣿⣿⣷⣴⣿⣿⣿⡟⢿⡏⢵⠀⢬⠀⢰⠀⢠⠈⣿⠟⣿⣿⣿⣷⣴⣿⣿⣿⣿⣿⣿⣶⣶⡀⠀⠛⠛⣿⣿]],
	[[⣿⡘⣿⠂⠀⣿⣷⡘⣆⢻⣛⠁⢙⣻⣿⠿⣿⡛⢿⡄⠟⢰⡤⠆⠀⢀⠦⣴⠐⠃⣼⡟⣻⡿⢻⣿⣟⠁⠙⣻⣿⣿⣿⡿⢛⠂⠑⣦⣿⣿]],
	[[⣿⠁⢈⠀⠀⣿⣿⣷⣼⣦⣿⣷⣿⣿⣿⣷⠘⢁⣌⡄⣄⠛⠄⣦⠀⢀⣖⠜⢃⡀⣁⣄⠉⢸⣿⣿⣿⣷⣾⣿⣿⣿⣿⡇⠟⠻⠀⡝⢿⣿]],
	[[⣿⣿⣦⣐⣠⡙⢿⣿⣿⣿⣿⣿⣿⣿⣿⡝⢧⣈⠛⠀⠼⠿⠲⠄⠀⠀⠴⠺⠿⠔⠘⢋⣠⠟⣽⣿⣿⣿⣿⣿⡿⣿⣿⣿⣦⣤⡄⠏⠀⢻]],
	[[⣿⣿⣿⣿⣿⣿⣶⣍⠻⣿⣿⣿⣿⣿⡏⠇⠠⠽⠏⣠⡶⢚⠁⣀⠀⢀⣀⢉⠲⣦⡈⠻⠧⠘⠏⣿⣿⣿⣿⣿⣷⣌⢿⣿⣿⣿⣿⣿⣶⣿]],
	[[⣿⠿⡟⢿⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣤⣴⣦⡐⣾⠟⣁⣉⣀⣿⠀⢸⣇⣎⣀⠹⢻⣖⣠⣶⣦⣼⣿⣿⣿⣿⣿⣿⣦⠹⣿⣿⣿⣿⣿⣿]],
	[[⣷⡀⢸⠀⡟⢙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠉⠀⠈⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣷⡈⠰⠹⠿⣿⣿]],
	[[⣿⣿⣦⣄⠑⠺⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⡸⣿⢹⣿⣿⠁⠀⠁⣀⣿⣿]],
	[[⣿⣿⣧⢈⡀⠌⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⢻⡄⢿⢃⠀⣼⣧⢹⣿⣿]],
	[[⣿⣿⣿⣿⢅⠀⠠⠐⢶⣶⣶⣶⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⡈⡿⠀⠀⠌⠛⣷⣿⣿⣿]],
	[[⣿⣿⣿⣿⣶⣦⡀⠐⢈⠛⠛⠉⠉⠉⢉⣛⣛⠁⠈⢙⣛⣉⡉⠀⠀⠀⢈⣉⣙⡛⠉⠀⢙⡏⣽⡏⣿⣿⣿⣷⠀⠀⠈⣼⣧⣼⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⣿⣿⣧⡐⠂⠘⢿⠿⠿⣛⣉⣭⣶⠾⣿⣿⣿⣿⠀⡄⢀⢸⣿⣿⣿⣿⣶⣿⢳⣿⡇⣿⡿⠟⠃⠄⣠⣾⣿⣿⣿⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣀⠀⠀⠻⠟⣉⣥⣶⣾⣿⣿⠿⣋⠁⡇⢸⢸⣿⣿⣿⣿⣿⡏⣸⣿⠇⠏⠁⢀⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠤⠌⡀⠉⠛⠿⠿⠟⣁⣶⣿⠀⡟⠸⢸⡿⢛⣉⢻⠿⠇⢋⠁⢂⡡⠔⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣴⣷⣶⡤⠀⠀⠀⠈⢻⣿⣄⡇⠀⠘⡡⠀⠋⠀⠀⣠⣤⣶⣿⣀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
}

local function createHeader(quote, asciiart)
	local response = {[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],}
	for _, val in ipairs(quote) do
		table.insert(response, val)
	end
	for _, val in ipairs(asciiart) do
		table.insert(response, val)
	end

	return response
end

local header = createHeader(quotes[math.random(#quotes)], asciiArt)

dashboard.section.header.val = header

dashboard.section.buttons.val = {
	dashboard.button( "r", "  > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button( "d", "󰉋  > Directory", ":DirMenu<CR>"),
	dashboard.button( "q", "󰈆  > Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.opts)