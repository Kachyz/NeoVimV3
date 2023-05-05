require "user.options"
require "user.keymaps"
require "user.keymapsCoding"
require "user.plugins" -- Loads lazy
require "user.lsp-zero"
require "user.cmp"
require "user.autopairs"
require "user.bufferline"
require "user.lualine"
require "user.indentline"
require "user.snippets"
require "user.rest"
require "user.formatter"

-- Vim scripts
vim.cmd('source $HOME/.config/nvim/vim/start-screen.vim')
vim.cmd('source $HOME/.config/nvim/vim/emmet.vim')

