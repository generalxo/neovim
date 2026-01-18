return {
	name = "cmake_make",
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
			args = {
				"-B",
				"build",
				"-G",
				"Ninja",
				"-DCMAKE_CXX_COMPILER=g++",
				"-DCMAKE_C_COMPILER=gcc",
				"-DCMAKE_EXPORT_COMPILE_COMMANDS=ON",
				"-DCMAKE_BUILD_TYPE=Debug",
			},
			components = {
				{ "on_output_quickfix", open = true },
				"on_result_diagnostics",
				"default",
			},
		}
	end,
	condition = {
		filetype = { "cpp", "c" },
	},
}
