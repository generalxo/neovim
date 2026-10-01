return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- let snacks.notifier own vim.notify
			notify = { enabled = false },
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- notifications are handled by snacks.notifier (see snacks.lua)
		}
	}
}
