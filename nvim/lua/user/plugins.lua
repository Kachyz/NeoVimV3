local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "kyazdani42/nvim-tree.lua" -- file explorer
  use "kyazdani42/nvim-web-devicons" -- dev icons <3
  use 'ryanoasis/vim-devicons'

  -- Treesitter stuff
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Treesitter for better syntax handle
  use "p00f/nvim-ts-rainbow" -- rainbow bracket pairs
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Bufferline & Lualine
  use "akinsho/bufferline.nvim"
  use "nvim-lualine/lualine.nvim"

  -- THEMES --
  use 'folke/tokyonight.nvim'
  use "Julpikar/night-owl.nvim"  -- night-owl theme
  use 'EdenEast/nightfox.nvim'
  use 'franbach/miramare'
  use 'Mofiqul/dracula.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  use "hrsh7th/cmp-cmdline" -- cmdline completions

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use "jose-elias-alvarez/null-ls.nvim"
  use "mhartington/formatter.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Autopair
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter

  -- Comments
  use "numToStr/Comment.nvim" -- Easily comment stuff

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Colors
  use "norcalli/nvim-colorizer.lua"

  -- Sessions
  use "ahmedkhalf/project.nvim"

  -- Vertical lines
  use "lukas-reineke/indent-blankline.nvim"

  -- Prettier
  use {"prettier/vim-prettier", run = "yarn install --frozen-lockfile --production"}

  -- VIM packages, need to find a Lua option
  -- Welcome screen * check a lua option
  use "mhinz/vim-startify"

  -- Surround
  use "tpope/vim-surround"

  -- <3 Emmet
  use "mattn/emmet-vim"

  -- Rest client
  use { "NTBBloodbath/rest.nvim", requires = { "nvim-lua/plenary.nvim" } }

  -- Diff view
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Debugger
  use {'mfussenegger/nvim-dap'}
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'rcarriga/nvim-dap-ui'}
  use {'theHamsta/nvim-dap-virtual-text'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

