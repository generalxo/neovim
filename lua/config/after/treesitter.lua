---@diagnostic disable: missing-fields
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline",
		"c_sharp",
		"html",
		"php",
	},

	sync_install = false,
	auto_install = false,
	ignore_install = { "javascript" },

	highlight = {
		enable = true,

		disable = { "javascript" },
		additional_vim_regex_highlighting = false,
	},
})
require("nvim-treesitter.install").compilers = { "clang" }
