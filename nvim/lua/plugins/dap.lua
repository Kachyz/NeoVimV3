return {
	{
		"rcarriga/nvim-dap-ui",
		keys = {
			{ "<leader>da", ':lua require("dapui").toggle()<CR>', desc = "Show debbuger view" },
		},
		config = true,
	},
	{
		"mfussenegger/nvim-dap",
		keys = {
			{ "<leader>db", ":lua require('dap').toggle_breakpoint()<CR>", desc = "DAP Toggle breakpoint" },
			{ "<leader>dn", ":lua require('dap').continue()<CR>", desc = "DAP Next" },
			{ "<leader>do", ":lua require('dap').step_over()<CR>", desc = "DAP Step over" },
			{ "<leader>di", ":lua require('dap').step_into()<CR>", desc = "DAP Step into" },
			{ "<leader>dp", ":lua require('dap').step_out()<CR>", desc = "DAP Step out" },
			{ "<leader>dr", ":lua require('dap').repl.open()<CR>", desc = "DAP open repl (terminal)" },
			{ "<leader>dq", ":lua require('dap').terminate()<CR>", desc = "DAP terminate" },

			{ "<leader>dt", ':lua require"telescope".extensions.dap.commands{}<CR>', desc = "DAP See commands" },
			{ "<leader>de", ':lua require"telescope".extensions.dap.configurations{}<CR>', desc = "DAP TBD" },
			{
				"<leader>dc",
				':lua require"telescope".extensions.dap.list_breakpoints{}<CR>',
				desc = "DAP List breakpoints",
			},
			{ "<leader>dv", ':lua require"telescope".extensions.dap.variables{}<CR>', desc = "DAP TBD" },
			{ "<leader>df", ':lua require"telescope".extensions.dap.frames{}<CR>', desc = "DAP TBD" },
		},
		config = function()
			local dap = require("dap")
			dap.adapters.node2 = {
				type = "executable",
				command = "node",
				args = { os.getenv("HOME") .. "/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js" },
			}
			dap.configurations.javascript = {
				{
					name = "Launch",
					type = "node2",
					request = "launch",
					program = "${file}",
					cwd = vim.fn.getcwd(),
					sourceMaps = true,
					protocol = "inspector",
					console = "integratedTerminal",
				},
				{
					-- For this to work you need to make sure the node process is started with the `--inspect` flag.
					name = "Attach to process",
					type = "node2",
					request = "attach",
					processId = require("dap.utils").pick_process,
				},
			}
			vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
			vim.fn.sign_define("DapStopped", { text = "👉", texthl = "", linehl = "", numhl = "" })
		end,
	},
	{
		"nvim-telescope/telescope-dap.nvim",
		config = function()
			require("telescope").load_extension("dap")
		end,
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		config = {
			virt_text_win_col = 40,
			highlight_changed_variables = true,
		},
	},
}
