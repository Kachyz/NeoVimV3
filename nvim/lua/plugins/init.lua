return {
  "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
  "kyazdani42/nvim-web-devicons", -- dev icons <3
  "ryanoasis/vim-devicons",

  "p00f/nvim-ts-rainbow", -- rainbow bracket pairs
  "JoosepAlviste/nvim-ts-context-commentstring",

  -- Bufferline & Lualine
  "akinsho/bufferline.nvim",
  "nvim-lualine/lualine.nvim",

  "hrsh7th/cmp-cmdline", -- cmdline completions

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
      },
      { "rafamadriz/friendly-snippets" },
    },
  },

  "jose-elias-alvarez/null-ls.nvim",
  "mhartington/formatter.nvim",

  -- Autopair
  "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter

  -- Vertical lines
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },


  -- Prettier
  { "prettier/vim-prettier", build = "yarn install --frozen-lockfile --production" },
  -- Stylua for Lua formatting
  { "wesleimp/stylua.nvim" },

  -- VIM packages, need to find a Lua option
  -- Welcome screen * check a lua option
  "mhinz/vim-startify",

  -- <3 Emmet
  "mattn/emmet-vim",

  -- Rest client
  { "NTBBloodbath/rest.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
}
