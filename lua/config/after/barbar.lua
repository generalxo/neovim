require("barbar").setup {
	animation = true,
	auto_hide = false,
	clickable = true,
	icons = {
		buffer_index = false,
		buffer_number = false,
		button = '',
		gitsigns = {
			added = {enabled = true, icon = '+'},
			changed = {enabled = true, icon = '~'},
			deleted = {enabled = true, icon = '-'},
		},
		filetype = {
			custom_color = false,
			enabled = true,
		},
		modified = {button = '●'},
		pinned = {button = '', filename = true},
	},
}
