local dap = require('dap')
local dapui = require('dapui')

-- Keymaps
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
vim.keymap.set('n', '<leader>gb', dap.run_to_cursor)
vim.keymap.set('n', '<F1>', dap.continue)
vim.keymap.set('n', '<F2>', dap.step_into)
vim.keymap.set('n', '<F3>', dap.step_over)
vim.keymap.set('n', '<s-F1>', dap.terminate)

-- Debugges / adapters
-- Csharp
dap.adapters.coreclr = {
	type = 'executable',
	command = 'C:\\Users\\Oliver\\AppData\\Local\\nvim-data\\mason\\packages\\netcoredbg\\netcoredbg\\netcoredbg.exe',
	args = {'--interpreter=vscode'}
}

-- Configurations
dap.configurations.cs = {
	{
		type = "coreclr", --this should correspond to dap.adapters.{name} <--
		name = "launch - netcoredbg",
		request = "launch", -- action taken.
		--program = function() -- the path to the application dll.
		--	return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/net8.0/', 'file')
		--end,
		program = [[C:\code\personal\flash-card-webbapp\flash-card-webbapp.Server\bin\Debug\net8.0\flash-card-webbapp.Server.dll]],
		env = {
			-- enviorment variables/options
			ASPNETCORE_URLS = function()
				return "https://localhost:7163"
			end
		},
	},
}

dapui.setup()

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
