return {
  "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
  "kyazdani42/nvim-web-devicons", -- dev icons <3
  'ryanoasis/vim-devicons',

  "p00f/nvim-ts-rainbow", -- rainbow bracket pairs
  'JoosepAlviste/nvim-ts-context-commentstring',

  -- Bufferline & Lualine
  "akinsho/bufferline.nvim",
  "nvim-lualine/lualine.nvim",

  "hrsh7th/cmp-cmdline", -- cmdline completions

  {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  dependencies = {
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
  },

  "jose-elias-alvarez/null-ls.nvim",
  "mhartington/formatter.nvim",

  -- Autopair
  "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter

  -- Git
  "lewis6991/gitsigns.nvim",

  -- Colors
  { 'norcalli/nvim-colorizer.lua', config = {'*'} },

  -- Vertical lines
  "lukas-reineke/indent-blankline.nvim",

  -- Prettier
  {"prettier/vim-prettier", build = "yarn install --frozen-lockfile --production"},

  -- VIM packages, need to find a Lua option
  -- Welcome screen * check a lua option
  "mhinz/vim-startify",

  -- Surround
  "tpope/vim-surround",

  -- <3 Emmet
  "mattn/emmet-vim",

  -- Rest client
  { "NTBBloodbath/rest.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Diff view
  { 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim' },

  -- Debugger
  'mfussenegger/nvim-dap',
  'nvim-telescope/telescope-dap.nvim',
  'rcarriga/nvim-dap-ui',
  'theHamsta/nvim-dap-virtual-text',
}
