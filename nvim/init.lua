require "user.options"
require "user.keymaps"
require "user.keymapsCoding"
require "user.plugins"
require "user.colorscheme"
require "user.lsp"
require "user.cmp"
require "user.treesitter"
require "user.telescope"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.colorizer"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
-- require "user.project"
require "user.indentline"
require "user.snippets"
require "user.rest"
require "user.dap"
require "user.formatter"
require "user.diffview"

-- Vim scripts
vim.cmd('source $HOME/.config/nvim/vim/start-screen.vim')
vim.cmd('source $HOME/.config/nvim/vim/surround.vim')
vim.cmd('source $HOME/.config/nvim/vim/emmet.vim')

-- Themes
--[[ require "user.themes.nightfox" ]]
require "user.themes.catpuccin"
