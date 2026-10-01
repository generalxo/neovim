return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		quickfile = { enabled = true },
		input = { enabled = true },
		notifier = { enabled = true },
		picker = { enabled = true, ui_select = true },
		indent = {
			enabled = true,
			indent = { char = "┊" },
			scope = { char = "┊" },
		},
		words = { enabled = true },
		scratch = { enabled = true },
		zen = { enabled = true },
		gitbrowse = { enabled = true },
		bufdelete = { enabled = true },
		rename = { enabled = true },
		terminal = { enabled = true },
		lazygit = { enabled = true },
		dashboard = {
			enabled = true,
			preset = {
				header = require("config.custom.dashboard-header").header(),
				-- stylua: ignore
				keys = {
					{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.picker.files()" },
					{ icon = " ", key = "r", desc = "Recent", action = ":lua Snacks.picker.recent()" },
					{ icon = "󰉋 ", key = "d", desc = "Directory", action = ":Oil" },
					{ icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
					{ icon = "󰈆 ", key = "q", desc = "Quit", action = ":qa" },
				},
			},
			sections = {
				{ section = "header" },
				{ section = "keys", gap = 1, padding = 1 },
				{ section = "startup" },
			},
		},
	},
}
