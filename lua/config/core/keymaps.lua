-- keymap.set('', '', '', {desc = ""})
local keymap = vim.keymap
--local opts = { noremap = true, silent = true }

-- Directory
--keymap.set('n', '<leader>fd', vim.cmd.Ex, {desc = "opens directory explorere"})
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Window Management
keymap.set("n", "<leader>ss", "<C-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sd", "<C-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make windows euqal size" })
keymap.set("n", "<leader>sq", "<cmd>close<CR>", { desc = "close current window" })

-- Tabs
keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "cloes tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to previous" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })

-- Remove search
keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "remove search highlight" })

-- Picker (snacks.picker)
keymap.set("n", "<leader>findf", function()
	Snacks.picker.files()
end, { desc = "find files cwd" })
keymap.set("n", "<leader>findr", function()
	Snacks.picker.recent()
end, { desc = "find recent file" })
keymap.set("n", "<leader>findb", function()
	Snacks.picker.lines()
end, { desc = "find in current buffer" })
keymap.set("n", "<leader>finds", function()
	Snacks.picker.grep()
end, { desc = "find string in cwd" })
keymap.set({ "n", "x" }, "<leader>findw", function()
	Snacks.picker.grep_word()
end, { desc = "find word under cursor / selection" })
keymap.set("n", "<leader>findh", function()
	Snacks.picker.help()
end, { desc = "find help pages" })
keymap.set("n", "<leader>findk", function()
	Snacks.picker.keymaps()
end, { desc = "find keymaps" })
keymap.set("n", "<leader>findd", function()
	Snacks.picker.diagnostics()
end, { desc = "find diagnostics" })
keymap.set("n", "<leader>findn", function()
	Snacks.picker.notifications()
end, { desc = "find notification history" })

-- Docs (cheat sheets in docs/)
keymap.set("n", "<leader>docs", function()
	Snacks.picker.files({ cwd = vim.fn.stdpath("config") .. "/docs", title = "Docs" })
end, { desc = "open nvim config docs" })

-- Terminal (snacks.terminal / snacks.lazygit)
keymap.set("n", "<leader>termgit", function()
	Snacks.lazygit()
end, { desc = "Toggle lazygit" })
keymap.set("n", "<leader>termn", "<cmd>tabnew | terminal<CR>", { desc = "Create new terminal in new tab" })
keymap.set("n", "<leader>termss", function()
	Snacks.terminal.toggle(nil, { count = 2, win = { position = "right" } })
end, { desc = "Toggle terminal vertical" })
keymap.set("n", "<leader>termf", function()
	Snacks.terminal.toggle(nil, { count = 1, win = { position = "float" } })
end, { desc = "Toggle floating terminal" })

vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "term://*",
	callback = function(args)
		-- lazygit needs <esc> itself
		if vim.api.nvim_buf_get_name(args.buf):match("lazygit") then
			return
		end
		keymap.set("t", "<esc>", [[<C-\><C-n>]], { buffer = args.buf })
	end,
})

-- Git (diffview / snacks.gitbrowse)
keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Diffview: open (working tree changes)" })
keymap.set("n", "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", { desc = "Diffview: current file history" })
keymap.set("n", "<leader>gH", "<cmd>DiffviewFileHistory<CR>", { desc = "Diffview: branch history" })
keymap.set("n", "<leader>gq", "<cmd>DiffviewClose<CR>", { desc = "Diffview: close" })
keymap.set({ "n", "x" }, "<leader>gB", function()
	Snacks.gitbrowse()
end, { desc = "Open file/line in browser (GitHub)" })

-- Snacks misc
keymap.set("n", "]]", function()
	Snacks.words.jump(vim.v.count1)
end, { desc = "Next reference" })
keymap.set("n", "[[", function()
	Snacks.words.jump(-vim.v.count1)
end, { desc = "Prev reference" })
keymap.set("n", "<leader>bd", function()
	Snacks.bufdelete()
end, { desc = "Delete buffer (keep window)" })
keymap.set("n", "<leader>z", function()
	Snacks.zen()
end, { desc = "Toggle zen mode" })
keymap.set("n", "<leader>.", function()
	Snacks.scratch()
end, { desc = "Toggle scratch buffer" })
keymap.set("n", "<leader>un", function()
	Snacks.notifier.hide()
end, { desc = "Dismiss notifications" })

-- Markdown
keymap.set("n", "<leader>mr", "<cmd>RenderMarkdown toggle<CR>", { desc = "Toggle markdown rendering" })

-- LuaSnip
keymap.set({ "i" }, "<C-k>", function()
	require("luasnip").expand()
end, { silent = true })
keymap.set({ "i", "s" }, "<C-L>", function()
	require("luasnip").jump(1)
end, { silent = true })
keymap.set({ "i", "s" }, "<C-J>", function()
	require("luasnip").jump(-1)
end, { silent = true })
keymap.set({ "i", "s" }, "<C-E>", function()
	local ls = require("luasnip")
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })

-- Format
keymap.set("n", "<leader>fg", "<cmd>FormatGitChanges<CR>", { desc = "Format only Git-changed lines" })

-- Blade-nav
keymap.set("n", "<leader>bv", function()
	require("blade-nav.features.annotations").toggle_show()
end, { desc = "BladeNav: toggle annotations" })
keymap.set("n", "<leader>bcc", function()
	require("blade-nav.features.annotations").clear_cache()
end, { desc = "BladeNav: clear cache" })

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "blade", "php" },
	callback = function(args)
		keymap.set("n", "gf", function()
			require("blade-nav.integrations.gf").gf()
		end, { buffer = args.buf, desc = "BladeNav: goto file" })
		keymap.set("n", "K", function()
			require("blade-nav.features.annotations").on_K()
		end, { buffer = args.buf, desc = "BladeNav: show value / LSP hover" })
	end,
})

-- LSP (buffer-local, on attach)
-- Defaults already provided by nvim: grn, gra, grr, gri, gO, K, [d, ]d
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("user-lsp-attach", { clear = true }),
	callback = function(args)
		local map = function(lhs, rhs, desc)
			keymap.set("n", lhs, rhs, { buffer = args.buf, desc = "LSP: " .. desc })
		end

		map("gd", vim.lsp.buf.definition, "Goto definition")
		map("gD", vim.lsp.buf.declaration, "Goto declaration")
		map("gy", vim.lsp.buf.type_definition, "Goto type definition")
		map("<leader>ld", vim.diagnostic.open_float, "Line diagnostics")
		map("<leader>lh", function()
			vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = args.buf }), { bufnr = args.buf })
		end, "Toggle inlay hints")
		map("<leader>lr", "<cmd>LspRestart<cr>", "Restart LSP")
	end,
})
