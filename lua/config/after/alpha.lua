local startify = require("alpha.themes.startify")
startify.file_icons.provider = "devicons"
require("alpha").setup(startify.config)

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local quotes = {
	{
		[[ Thinking: the talking of the soul with itself ]],
		[[ ⠶ Plato ⠶ ]],
	},
	{
		[[It is impossible for a man to learn ]],
		[[ what he thinks he already knows ]],
		[[ ⠶ Epictetus ⠶ ]],
	},
	{
		[[ Any fool can know ]],
		[[ The point is to understand ]],
		[[ ⠶ Albert Einstein ⠶ ]],
	},
	{
		[[ Know that you don't know ]],
		[[ That is superior ]],
		[[ ⠶ Lao Tzu ⠶ ]],
	},
	{
		[[ The beginning of knowledge is the discovery ]],
		[[ of something we do not understand ]],
		[[ ⠶ Frank Herbert ⠶ ]],
	},
	{
		[[ Real knowledge is to know the ]],
		[[ extent of one's ignorance ]],
		[[ ⠶ Confucius ⠶ ]],
	},
	{
		[[ Any fool can know ]],
		[[ The point is to understand ]],
		[[ ⠶ Albert Einstein ⠶ ]],
	},
}

local test = {
	[[⣿⣿⢁⣆⡀⠀⠨⢯⣠⣶⢿⣿⠿⣿⣿⠿⣟⣮⣾⣷⣾⣿⣿⣘⣿⠿⡿⢿⣿⣿⣲⣶⣦⣤⣌⣙⠳⣼⢞⣾⣿⢇⡿⣿⣀⡛⠲⣮⡻⢿⠁⢸⠋⡿⡿⠙⢿⣿⡿⣦⠀⡈⣿⡆⢸⠏⠣⣐⠖⠀⠀⠄⠀⠀⢀⠀⢠⣳⣟⠃]],
	[[⣷⡏⠘⢿⣿⣦⠀⠀⡨⣿⣾⣿⢿⣯⣿⣿⣿⣿⣿⡿⠿⠿⡛⠛⠉⠙⠩⡉⠛⠛⠭⡛⣉⠿⣿⣿⣟⡟⡗⣿⣛⢞⣿⣿⡋⠀⠉⣸⢿⣼⣴⡟⠀⣷⡏⢣⠈⠻⣿⣞⣯⡏⠻⣿⠏⠀⠀⠀⠀⠀⠌⠀⠀⠀⠀⣠⣿⠇⢩⣾]],
	[[⡧⠀⠀⢌⣻⣿⣷⡬⣿⡿⣫⣷⣿⣿⢟⣛⡛⠻⢤⣂⠀⡀⠈⠀⢄⠀⠄⠀⠀⠀⠀⠰⠶⠀⢼⣿⣿⡿⣷⣯⣯⢻⣿⣿⣿⣷⣦⢯⣿⣿⣿⣡⣦⣻⠇⣾⠈⠀⠻⡷⣿⣗⠠⣸⡄⠀⢄⠀⠀⠌⠀⠀⠀⠀⢰⣷⡣⣠⣾⣿]],
	[[⡇⠀⠀⢀⣶⣽⣿⢻⣟⣵⣿⣿⠟⢩⡏⠊⠉⠢⡀⠈⠑⢌⠠⡀⠀⠑⢄⠢⠂⠈⠄⠀⢀⠀⠀⣹⠛⣷⡼⣻⠟⡻⠿⡿⣟⡏⣿⣿⣏⣿⣿⣿⣿⢯⣼⣟⡀⢀⣶⣿⣏⣿⣦⣹⡇⠀⠈⠀⡈⠀⠀⠀⠀⣰⣳⡇⣺⣍⡛⢿]],
	[[⡇⠀⢀⣾⣿⣿⣷⣾⣿⣯⢟⠇⡰⠏⠀⠀⡀⠀⠑⡄⠀⠀⠐⠱⡄⠀⠑⣂⠀⢔⠌⠄⠀⠑⠄⢋⠌⢍⡴⠃⠀⠐⡐⢳⡗⣿⣾⠻⣿⣿⣽⣿⣟⢦⣽⡹⣇⠨⣅⣿⡟⣹⣿⣿⡇⠀⠀⡰⠀⠀⠀⠀⣰⣻⠃⢈⡍⢹⣿⣿]],
	[[⡇⠀⢸⣿⣿⣾⣯⣿⠟⠁⡌⠠⠁⠀⠀⠀⢃⠂⠀⠹⡠⠀⠀⠡⣻⡀⠀⠐⠆⠈⣧⡘⡀⠀⢨⢣⡶⠛⠀⠀⠀⠀⠸⡀⢷⡼⣧⣀⠨⠻⣿⣿⣿⣦⣿⣷⣈⣿⢮⣿⣽⣽⣿⣿⡇⠀⠰⠃⠓⠀⠀⣼⣿⠃⠀⠀⢀⣾⣿⣿]],
	[[⣷⢸⢺⣿⣿⣿⡞⠡⠁⡈⡇⠀⢠⠀⠀⠀⢸⡀⢀⠀⢃⠡⠀⡀⢡⣃⠀⠀⢣⠀⠀⢻⣀⢔⣵⠿⠳⡀⠠⠈⡄⠀⠀⢣⣸⣇⣿⣓⣧⠐⡙⢿⣿⣿⣿⣯⢻⣧⠈⣿⣿⢽⣿⣿⣕⣴⠃⠀⠀⠀⣰⡾⠇⢰⡖⢤⣾⣿⣿⣿]],
	[[⣿⣦⡸⡿⣿⡟⠠⠀⢠⠀⠸⠀⠘⡀⠀⠀⠀⣧⠀⠠⠸⡄⢱⡰⠀⢛⡀⠀⠀⠃⠀⢈⢗⢵⠿⡈⠄⢻⡄⠂⠨⠀⠀⠈⣿⣯⢿⣇⠀⠀⠡⢊⢿⣿⣿⣿⣿⣿⡌⢿⣿⣼⣿⠘⣯⠋⠀⠀⢀⢴⡿⠁⢠⡗⡜⡀⠐⢿⠏⢭]],
	[[⡿⢿⣷⣿⡟⣀⢁⠀⠀⡇⠀⠣⡀⣇⠀⢣⠀⢹⡆⠀⠐⢹⡘⣷⢂⠀⡇⠆⠀⡠⡲⠗⡙⡁⠀⠨⠢⡠⢱⠀⠀⠂⠀⠈⠸⡉⡨⢿⡄⠀⠀⠂⠞⣹⣿⣿⣿⣿⣱⣿⣿⢯⣿⠆⢻⣷⣒⠤⣎⡻⠁⣴⡟⠰⠓⡹⡀⢄⠀⢸]],
	[[⡇⠥⡭⢹⢡⠈⠈⠀⠅⡇⠀⡀⢡⡙⣆⠈⣧⡀⢳⡔⠄⠀⢣⢻⢻⡀⣡⣴⠌⡊⠀⠀⡇⢧⠀⠀⠈⠸⣅⢣⠀⠀⠀⠀⠀⢳⡾⠼⣷⡀⠀⡘⠈⢵⣻⡿⣼⣿⣻⣿⣻⣿⠏⠀⢸⣏⣸⣻⣿⢱⢯⠿⠁⠣⠀⠀⡱⡈⢷⣞]],
	[[⡏⡄⢳⡯⡄⠐⠀⠀⠰⢻⠀⢁⠀⢿⠮⠅⢜⡍⠢⣎⣢⡴⠤⢸⡗⢳⠹⠉⡆⠇⠀⠀⡇⢸⡑⢦⣀⠀⠈⠺⣇⠀⠁⠀⠀⠈⣏⡎⡜⣧⠀⠁⠆⠘⣿⣻⣿⣿⢿⣿⣿⠇⠀⡆⢸⣿⣾⣽⢣⢣⡏⢹⠃⢀⢎⣆⠀⡱⡀⠘]],
	[[⠈⠘⣼⠱⢃⡇⠀⠀⠀⠻⣇⢘⢆⠊⠧⣤⡶⠛⠉⠁⠀⠀⠀⠀⠀⠀⡇⢠⢰⠀⠀⠀⠁⢼⡷⡢⠈⠛⠦⢤⣺⡆⠀⠀⠀⠀⠸⡗⢰⡹⣯⠀⠀⠀⠸⣿⣿⣯⣞⣽⣿⠀⣠⠁⣾⣷⣿⣿⢣⣿⡷⠁⣠⢋⣾⢧⢂⠐⠡⡀]],
	[[⣆⡠⡜⣆⠸⣵⡸⣄⠠⡀⠹⡛⠀⠤⠟⢻⣟⡁⢄⣀⣠⣀⣠⣄⣀⠄⡇⠘⡌⠀⠀⠀⠰⢸⠑⠀⡅⣀⣀⣈⡻⠟⠂⠢⡀⠀⠀⣽⡊⣧⡹⣧⠀⠀⠀⣸⣟⣾⣿⣿⣇⠀⣻⣼⢿⣿⡿⢷⣿⣿⢃⡼⣡⣿⣧⢻⣎⡄⢃⠐]],
	[[⣿⡄⣇⢁⢸⠀⢱⣻⣆⡙⠕⠚⠁⠀⠀⠘⠋⣾⠟⣟⠛⢻⢉⠽⠁⠀⡇⢿⠀⠀⠄⢂⠃⣼⠀⡇⢨⣋⡲⠉⢠⢾⠏⢿⣖⣀⠀⠈⣇⠹⣏⢿⣇⠠⠀⢀⢻⣿⡿⠉⢿⣷⣎⡏⣸⣟⣧⡾⠋⣛⡞⣰⣿⣿⣟⣦⣿⣔⠔⠠]],
	[[⣿⣞⣿⠰⠘⣗⣌⢷⣬⢄⠀⠀⠀⠀⠀⠀⠀⠊⠱⣈⠂⠈⠀⠀⠀⠀⡟⠆⠀⠰⢀⠎⣼⠣⠀⠀⠀⠀⠀⣀⣻⣠⡤⡈⢿⢻⣌⠀⢻⣆⠙⣮⢿⣆⠀⠈⡸⡏⠀⠀⠨⢁⡜⣰⣿⣷⣿⠥⠀⢻⣼⣇⢸⠿⣷⣿⣿⠋⠘⡘]],
	[[⣿⣿⣿⡄⢃⢿⣎⠹⣦⡈⠳⠄⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⣸⡎⢀⠃⣀⢢⡾⠋⢀⠀⢸⠀⠀⠀⣬⡍⠙⢪⡡⠘⢫⠈⠀⡈⣷⣆⠈⡇⡟⠀⢡⢠⢻⠀⣰⣛⢟⡴⣿⣏⣿⣿⡀⣰⢫⣾⣿⣧⣿⣿⡟⣡⠧⣄⠀]],
	[[⡇⡏⡏⡽⡈⢎⣻⣷⣾⣷⠶⡾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⢃⢃⠆⡘⣡⡾⢃⡃⢠⠀⢸⠀⠀⠀⣹⣁⠆⢊⠠⢠⣿⠀⠀⠁⣌⢧⠁⠙⢧⡈⢀⢳⡈⣶⢟⣥⣏⢰⣿⣿⣿⣏⣷⣻⡿⠃⣿⢧⣿⢟⠔⠉⠳⣿⡆]],
	[[⡇⢹⢣⢳⡿⣦⣿⡿⣟⠟⠂⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⢀⡬⣪⢞⡽⠁⠸⠀⢸⠀⢸⠀⠀⠀⠉⠤⠀⣀⣴⡟⠸⣶⢆⡈⡡⠻⣆⠀⠀⠐⢄⠀⠱⣽⣿⣿⢃⣼⣿⡘⣿⡿⣹⡟⡁⠀⠸⡞⣧⣎⢠⠰⣆⢸⡏]],
	[[⣇⠀⢻⣷⣝⣻⡾⣿⠹⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠗⢁⢿⡊⢀⠀⠠⠀⢸⠀⢸⠀⣠⢴⣥⣤⣾⣿⢻⠀⠈⢣⢆⡀⠠⠁⢡⢯⢀⡀⠈⠚⠢⡹⡘⣌⣀⠿⣿⣯⣾⣿⣟⡔⡁⢮⢀⢹⡴⡸⡿⢄⢹⠉⠆]],
	[[⡻⣷⢸⣏⢻⣿⣷⡿⣀⣿⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠊⢸⠀⢰⠀⠀⠀⠐⠀⢸⡰⠋⠘⠻⢿⣣⣿⢸⠀⠀⠈⢊⡖⡀⠁⢀⡇⢢⢙⢄⠀⠀⢈⢿⣌⢧⣰⣿⢟⣿⣿⡟⢴⣿⡿⡆⢆⢷⣣⠹⣆⡻⡣⠊]],
	[[⠈⢺⡿⡏⡀⣼⣿⢣⡽⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⢸⠀⠀⠀⠀⠀⡀⠀⣸⠁⠀⠀⠈⠁⠘⣿⡾⡀⢂⠀⠀⠹⡤⠀⠀⢠⠀⠇⢺⣖⡂⠀⠁⠙⢦⡑⠭⣿⣿⣿⣷⠈⠉⠛⠳⠈⠜⣏⡆⢏⡼⢁⠀]],
	[[⡄⢻⡧⣳⠸⣤⣷⡻⢁⠊⢆⠀⠐⡿⠉⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⣟⠀⡆⠀⢺⠀⡽⠀⠀⠀⠀⠀⢀⣿⣧⢧⡈⢢⠀⠀⠈⢖⢄⢸⠀⡠⠀⢿⣼⢦⠢⠀⠀⠻⡦⣈⠻⣿⣿⢧⠀⠀⡀⢰⠈⣜⣿⣿⠓⠂⢀]],
	[[⣷⠀⣟⢿⣦⣹⣳⠃⠸⢸⠈⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢸⠃⠀⠀⡔⢾⢰⠇⠀⠀⠀⠀⠀⠀⢺⣿⣯⡻⣆⠈⠢⡀⠀⠱⢯⣒⠧⢀⢸⠉⢻⢷⡑⡀⠰⡘⢞⢳⣌⠻⣇⢇⢀⡇⠀⢻⣨⣿⣿⣣⠾⡡]],
	[[⣿⢟⡇⢶⣿⢃⡏⠀⡇⣿⠀⣾⣗⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣸⢸⠃⠀⠠⠆⢸⠏⠀⠀⡀⠀⠀⠀⠀⠈⠋⢹⣷⣝⠹⡢⢌⠳⢶⣼⡈⠉⠀⠀⣉⠛⠺⣷⠃⢀⡇⢉⢳⣜⠷⣽⣎⢞⢡⣦⣼⢾⣿⣴⣧⠀⢸]],
	[[⣷⢊⡄⠀⢿⢸⠃⣴⣰⢻⠀⢸⣯⠩⢣⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⣿⣿⡸⠀⠀⡞⠀⠈⡆⠀⠀⠀⠀⠀⣀⣠⣤⣄⣖⣿⣾⣷⣌⡳⣮⣥⣌⡋⠹⠀⠐⠀⠈⠉⡽⣤⠞⠠⢸⠘⣿⢾⣮⢻⣮⣢⣿⣿⣫⡏⣾⡺⣠⣾]],
	[[⡏⣼⢻⣶⣾⠸⢣⣿⡟⣼⠀⢸⡇⠫⠜⢇⠀⠀⠀⣀⣤⣖⣿⢿⣿⣿⣿⡟⡇⠀⣸⢠⠀⠀⡇⣀⣤⢴⢚⣷⣿⠿⠿⠛⢛⣛⣋⣻⣻⣿⣦⣝⡳⢖⣲⠖⣒⣲⡶⠿⠎⠁⣠⣔⡟⢀⡿⢸⣿⣧⢻⢷⡽⡵⣿⣿⢻⡍⠿⢺]],
	[[⣎⣿⡇⣿⣿⠘⠀⢸⣅⠈⡇⢸⣇⠀⠠⢉⡗⢖⣞⣿⣫⣿⡷⣿⣿⣿⣷⡿⠀⣰⣷⡏⠀⠀⣯⡷⠞⠻⣉⣤⣴⣶⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣯⣷⣦⣥⣒⣀⠀⡀⣠⠾⣿⣉⣬⢾⣶⡿⣿⣿⡎⣦⣿⣿⣿⣿⡾⡂⢰⣿]],
	[[⡏⢿⣷⣼⣿⡇⡀⢸⣿⢸⡇⠸⣗⢠⡄⢸⣧⠀⣻⣿⡁⠸⡷⣿⣻⡿⣷⠃⣴⣥⣽⡄⠀⣰⣭⣶⣞⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⢻⣿⣿⣿⣿⢿⠿⣿⣿⣻⣿⣿⣿⣯⣿⣿⣶⣿⣷⡝⣾⣿⢇⢏⡼⡿⢧⢿⣷⢃⡘⣱]],
	[[⢹⠼⢿⣿⣿⣿⢄⠸⣯⣻⣇⠌⣞⠈⠁⢸⡟⡆⢸⢿⡀⣈⡏⢿⠈⡩⢣⣾⣿⣿⢾⠠⠀⣧⣿⡟⣿⣛⣿⣿⣇⣸⣿⣟⢿⣟⡻⢿⡿⠟⣻⣻⣗⣿⣿⣷⣿⡿⠿⢛⠛⠛⢿⡿⣿⣿⣿⡿⠟⠭⠥⠮⣿⣧⠄⢙⣿⣾⡾⣫]],
	[[⣾⣿⣷⣮⣝⡏⣿⣷⣿⣿⣿⠸⢿⢸⡀⢸⡇⠀⠸⢸⢠⣿⣇⣿⣪⠶⣻⣿⣿⣻⣾⠀⢰⣷⣽⣾⣿⣿⣻⣾⣽⣿⣻⠿⣽⣿⠈⣅⣢⣱⣾⣮⣿⡿⢏⣙⡴⠖⠱⠞⠛⢉⡭⠛⢉⡡⠐⠀⠁⠀⠀⠀⠈⠙⠷⣾⡻⣟⢹⣿]],
	[[⣇⠾⡯⡷⣿⣿⣙⠿⢿⣿⣿⢸⣸⡞⠀⢸⣿⠀⡇⠸⢸⡞⣧⢸⠃⣀⣼⣿⣿⣵⣿⢀⣿⡪⣺⣿⣿⣿⣿⣿⢋⠧⠾⣟⣭⣶⣾⣿⣿⠛⢽⡟⣅⣶⠿⢟⠸⡋⠑⠀⣀⢤⡶⣶⠇⠀⠀⠀⠀⠀⠀⠀⠀⠠⡄⠈⠙⢿⣄⣿]],
	[[⠛⠃⢳⠸⣿⣟⣱⣭⡶⣭⣽⢸⠻⡇⠀⢸⣿⠀⡧⡏⢸⠐⣾⢸⡀⢀⡟⣿⣿⣿⢣⡾⠛⣳⣶⣟⣏⠿⣛⣉⣠⡲⣦⣻⣿⡛⣍⢙⣺⣿⣿⣾⠋⡊⠐⠅⠀⣠⠔⠉⠀⣸⠟⠑⡠⢄⠀⠀⠀⠀⠀⢠⢚⡟⠓⣦⡀⠀⢳⣿]],
}
-- quote is { a, b, c, ... }
-- we want to take art width - quote item string length = new number -> check if odd or even. if even add (new number / 2) to each side else add +1 on one side
local function centerText(quote, width)
	local response = {}
	for _, text in ipairs(quote) do
		local whitespaceMax = (width - string.len(text))
		local spaces = whitespaceMax / 2
		local sentence = ""
		if whitespaceMax % 2 == 0 then
			sentence = string.rep(" ", spaces) .. text .. string.rep(" ", spaces)
		else
			sentence = string.rep(" ", spaces + 1) .. text .. string.rep(" ", spaces)
		end
		table.insert(response, sentence)
		spaces = 0
		sentence = ""
		whitespaceMax = 0
	end
	return response
end

local function createHeader(quote, art)
	local data = centerText(quote, 80)
	--local data = {}
	--	for _, val in ipairs(quote) do
	--		table.insert(data, val)
	--	end
	for _, val in ipairs(art) do
		table.insert(data, val)
	end

	return data
end

local header = createHeader(quotes[math.random(#quotes)], test)

dashboard.section.header.val = header

dashboard.section.buttons.val = {
	dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("d", "󰉋  > Directory", ":DirMenu<CR>"),
	dashboard.button("q", "󰈆  > Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.opts)
