require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
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

-- Vim scripts
vim.cmd('source $HOME/.config/nvim/vim/start-screen.vim')

-- Themes
require "user.themes.nightfox"
