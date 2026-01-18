return {
	name = "cmake_build",
	builder = function()
		-- Check if CMakeLists.txt exists in cwd
		local cwd = vim.fn.getcwd()
		local cmake_file = cwd .. "/CMakeLists.txt"

		if vim.fn.filereadable(cmake_file) == 0 then
			vim.notify("CMakeLists.txt not found in current directory", vim.log.levels.ERROR)
			return nil
		end

		return {
			cmd = { "cmake" },
			args = { "--build", "build" },
			components = {
				{ "on_output_quickfix", open_on_exit = "failure" },
				"on_result_diagnostics",
				"default",
			},
		}
	end,
	condition = {
		filetype = { "cpp", "c" },
	},
}
