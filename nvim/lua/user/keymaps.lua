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
-- test colorschemes
keymap("n", "<leader>kcolo", ":lua require('telescope.builtin').colorscheme({enable_preview = true}) theme=get_cursor<cr>", opts)

-- DiffView
keymap("n", "<leader>vf", ":DiffviewFileHistory %<cr>", opts)
keymap("n", "<leader>va", ":DiffviewFileHistory<cr>", opts)
keymap("n", "<leader>vo", ":DiffviewOpen<cr>", opts)
keymap("n", "<leader>vc", ":DiffviewClose<cr>", opts)
keymap("n", "<leader>ve", ":DiffviewToggleFiles<cr>", opts)
-- para merge conflicts se usa
-- <leader>vo (OURS)
-- <leader>vt (THEIRS)
-- <leader>vb (BASE)
-- <leader>va (ALL)
-- ]x & [x (Move accross conflicts)

-- FOLDING --
keymap("n", "zx", "zf%", opts)
