local dap = require("dap")
local dapui = require("dapui")
local overseer = require("overseer")

dapui.setup()

-- Find executable
local function find_exe()
	local cwd = vim.fn.getcwd()
	local build_dir = cwd .. "/build"

	if vim.fn.isdirectory(build_dir) == 0 then
		vim.notify("Build dir not found", vim.log.levels.ERROR)
		return nil
	end

	-- globpath with true as last param returns a table
	local exe = vim.fn.globpath(build_dir, "*.exe", false, true)

	if #exe == 0 then
		vim.notify("No exe found in " .. build_dir, vim.log.levels.ERROR)
		return nil
	end

	return exe[1]
end

-- Find CMakeLists
local function has_cmake_lists()
	local cwd = vim.fn.getcwd()
	local cmake = cwd .. "/CMakeLists.txt"
	return vim.fn.filereadable(cmake) == 1
end

-- adapters and config
dap.adapters.codelldb = {
	type = "executable",
	command = "C:/Users/Oliver/AppData/Local/nvim-data/mason/packages/codelldb/extension/adapter/codelldb",
	detached = false,
}

dap.configurations.cpp = {
	{
		name = "Launch with CMake Build",
		type = "codelldb",
		request = "launch",
		program = function()
			-- Check for CMakeLists.txt
			if not has_cmake_lists() then
				vim.notify("CMakeLists.txt not found in current directory", vim.log.levels.ERROR)
				return nil
			end

			local build_task = nil
			local task_complete = false

			-- Run your existing cmake_build template using run_task with callback
			overseer.run_task({ name = "cmake_build" }, function(task)
				if not task then
					vim.notify("Failed to create build task", vim.log.levels.ERROR)
					task_complete = true
					return
				end

				-- Store the task reference
				build_task = task

				-- Subscribe to the task completion event
				task:subscribe("on_complete", function(status, result)
					vim.notify(
						"Task completed with status: " .. vim.inspect(status) .. " result: " .. vim.inspect(result),
						vim.log.levels.DEBUG
					)
					task_complete = true
				end)
			end)

			-- Wait for task to complete
			local success = vim.wait(30000, function()
				return task_complete
			end, 500)

			if not success then
				vim.notify("Build timeout", vim.log.levels.ERROR)
				return nil
			end

			-- Check if build succeeded
			if build_task == nil or build_task.status ~= "SUCCESS" then
				vim.notify("Build failed with status: " .. tostring(build_task.status), vim.log.levels.ERROR)
				return nil
			end

			vim.notify("Build successful!", vim.log.levels.INFO)

			-- Find and return the executable
			return find_exe()
		end,
		cwd = "${workspaceFolder}",
		stopAtEntry = false,
		setupCommands = {
			{
				text = "-enable-pretty-printing",
				description = "enable pretty printing",
				ignoreFailures = false,
			},
		},
	},
}

dap.configurations.c = dap.configurations.cpp

-- dap ui config
dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

-- nvim dap virtual text
require("nvim-dap-virtual-text").setup({
	enabled = true,
	virt_text_pos = vim.fn.has("nvim-0.10") == 1 and "inline" or "eol",
	highlight_changed_variables = true,
	highlight_new_as_changed = false,
	show_stop_reason = true,
	commented = false,
})

-- Keymaps
local keymap = vim.keymap
keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
keymap.set("n", "<leader>dc", dap.continue, {})
