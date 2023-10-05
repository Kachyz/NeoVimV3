local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- General --
-- Sort inside curly brackets
keymap("n", "<leader>kso", "vi{:sort<CR>", opts)

-- JS --
-- Surrond inerpolation
keymap("n", "<leader>ki", "ciw${ <ESC>pa }", opts)
keymap("v", "<leader>ki", "c${ <ESC>pa }", opts)

-- Print variable value
keymap("n", "<leader>ll", "yiwoconsole.log('kz (<C-r>=expand(\"%:t\")<CR>) <ESC>pa ->', <ESC>pa);<ESC>k", opts)

-- Run Prettier
keymap("n", "<leader>pt", ":Prettier<CR>", opts)

-- Place a comment above line
keymap("n", "<leader>kn", "O<ESC>i// KACHYZ - ", opts)

