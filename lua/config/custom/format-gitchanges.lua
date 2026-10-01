local conform = require("conform")
local gitsigns = require("gitsigns")

local function format_git_changes()
	local bufnr = vim.api.nvim_get_current_buf()

	local ok, hunks = pcall(gitsigns.get_hunks, bufnr)
	if not ok or not hunks then
		vim.notify("No Git hunks found or Gitsigns not attached", vim.log.levels.WARN)
		return
	end

	for _, hunk in ipairs(hunks) do
		local added = hunk.added
		if added and added.count > 0 then
			local start_line = added.start
			local end_line = start_line + added.count

			print("Formatting range: " .. start_line .. " to " .. end_line)
			conform.format({
				bufnr = bufnr,
				lsp_fallback = true,
				range = {
					start = { start_line, 0 },
					["end"] = { end_line, 0 },
				},
			})
		end
	end
end

vim.api.nvim_create_user_command("FormatGitChanges", format_git_changes, {})

--vim.api.nvim_create_autocmd("BufWritePre", {
--  callback = function()
--    FormatGitChanges()
--  end,
--})

