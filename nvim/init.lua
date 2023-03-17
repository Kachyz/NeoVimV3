require "user.options"
require "user.keymaps"
require "user.keymapsCoding"
require "user.plugins" -- Loads lazy
require "user.lsp"
require "user.cmp"
require "user.autopairs"
require "user.gitsigns"
require "user.bufferline"
require "user.lualine"
require "user.indentline"
require "user.snippets"
require "user.rest"
require "user.formatter"
require "user.diffview"

-- Vim scripts
vim.cmd('source $HOME/.config/nvim/vim/start-screen.vim')
vim.cmd('source $HOME/.config/nvim/vim/surround.vim')
vim.cmd('source $HOME/.config/nvim/vim/emmet.vim')

