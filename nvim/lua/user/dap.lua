local dap = require('dap')
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}

-- telescope-dap
require("telescope").load_extension "dap"

vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "👉", texthl = "", linehl = "", numhl = "" })

require("dapui").setup()

-- mapping
local opts = { noremap = true, silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>db", ":lua require('dap').toggle_breakpoint()<CR>", opts)
keymap("n", "<leader>dn", ":lua require('dap').continue()<CR>", opts)
keymap("n", "<leader>do", ":lua require('dap').step_over()<CR>", opts)
keymap("n", "<leader>di", ":lua require('dap').step_into()<CR>", opts)
keymap("n", "<leader>dp", ":lua require('dap').step_out()<CR>", opts)
keymap("n", "<leader>da", ":lua require('dapui').toggle()<CR>", opts)
keymap("n", "<leader>dr", ":lua require('dap').repl.open()<CR>", opts)
keymap("n", "<leader>dq", ":lua require('dap').terminate()<CR>", opts)

keymap("n", "<leader>dt", ':lua require"telescope".extensions.dap.commands{}<CR>', opts)
keymap("n", "<leader>de", ':lua require"telescope".extensions.dap.configurations{}<CR>', opts)
keymap("n", "<leader>dc", ':lua require"telescope".extensions.dap.list_breakpoints{}<CR>', opts)
keymap("n", "<leader>dv", ':lua require"telescope".extensions.dap.variables{}<CR>', opts)
keymap("n", "<leader>df", ':lua require"telescope".extensions.dap.frames{}<CR>', opts)

require("nvim-dap-virtual-text").setup{
  virt_text_win_col = 40,
  highlight_changed_variables = true
}

