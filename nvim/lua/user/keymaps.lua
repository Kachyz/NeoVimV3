local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resize with arrows
keymap("n", "˚", ":resize +2<CR>", opts)
keymap("n", "∆", ":resize -2<CR>", opts)
keymap("n", "˙", ":vertical resize -2<CR>", opts)
keymap("n", "¬", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)
keymap("n", "<leader>qq", ":bd!<CR>", opts)

-- Alternative ways to save
keymap("n", "<C-s>", ":w<CR>", opts)

-- Split windows
keymap("n", "<C-\\>", ":vsplit<CR>", opts)

-- Go to file in split window
keymap("n", "<leader>kl", "<C-w>vgf", opts)
keymap("n", "<leader>km", "<C-w>f", opts)

-- PageUp & PageDown
keymap("n", "zk", "<PageUp>", opts)
keymap("n", "zj", "<PageDown>", opts)

-- System clipboard
keymap("n", "<leader>kc", '"*y', opts)
keymap("n", "<leader>kv", '"*p', opts)

-- Insert --
-- Press jj fast to enter
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "∆", ":m .+1<CR>==", opts)
keymap("v", "˚", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "∆", ":move '>+1<CR>gv-gv", opts)
keymap("x", "˚", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope --
-- Find a file by name
keymap("n", "<leader>p", ":Telescope find_files<cr>", opts)
-- ripgrep - find text inside files
keymap("n", "<leader>gp", ":Telescope live_grep<cr>", opts)
-- List open buffers
keymap("n", "<leader>b", ":Telescope buffers<cr>", opts)
-- git log
keymap("n", "<leader>gl", ":Telescope git_commits<cr>", opts)
-- git status
keymap("n", "<leader>gg", ":Telescope git_status<cr>", opts)
-- git blame current file
keymap("n", "<leader>gf", ":Telescope git_bcommits<cr>", opts)
-- search word under cursos
keymap("n", "<leader>ksw", ":Telescope grep_string<cr>", opts)
-- test colorschemes
keymap("n", "<leader>kcolo", ":lua require('telescope.builtin').colorscheme({enable_preview = true}) theme=get_cursor<cr>", opts)

