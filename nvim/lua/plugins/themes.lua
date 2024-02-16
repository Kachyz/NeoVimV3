return {
-- NIGHTFOX
   {
     'EdenEast/nightfox.nvim',
     opts = {
      -- fox = "nightfox", -- duskfox is another good option
      options = {
        styles = {
          comments = "italic", -- change style of comments to be italic
          keywords = "bold", -- change style of keywords to be bold
          functions = "italic,bold" -- styles can be a comma separated list
        },
        inverse = {
          match_paren = true, -- inverse the highlighting of match_parens
        },
      },
      palettes = {
        nightfox = {
          sel0= "#404C50",
        }
      },
      groups = {
        all = {
          GitSignsAdd = { fg = "#8EDF39" },
          GitSignsChange = { fg = "#F836B3" },
          GitSignsDelete = { fg = "#D80B06" },
          LineNr = { fg = "#b8a1e3" },
          CursorLine = { bg = "#404C50" },
        },
      }
    }
  },

-- TOKYONIGHT
  { 'folke/tokyonight.nvim',
    lazy = true,
    opts = {
      style = 'night',
      styles = {
        functions = { italic = true },
      },
      sidebars = {  "qf", "vista_kind", "terminal" }
    }
  },

-- CATPPUCIN
  {
    "catppuccin/nvim",
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup({
        flavour = 'mocha', -- macchiato
        transparent_background = true,
        term_colors = true,
        compile = {
          enabled = false,
          path = vim.fn.stdpath("cache") .. "/catppuccin",
        },
        dim_inactive = {
          enabled = true,
          shade = "light",
          percentage = 0.75,
        },
        styles = {
          comments = { "italic" },
          conditionals = {},
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        integrations = {
          treesitter = true,
          cmp = true,
          gitsigns = false,
          telescope = true,
          nvimtree = true,
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
        color_overrides = {},
        highlight_overrides = {
          all = function(colors)
              return {
                  LineNr = { fg = colors.mauve },
              }
          end,
        },
      })
      vim.cmd([[colorscheme catppuccin]])
    end
  },

-- OTHERS
  { 'EdenEast/nightfox.nvim', lazy = true },
  { 'franbach/miramare', lazy = true },
  { 'Mofiqul/dracula.nvim', lazy = true },

-- night-owl
  { "oxfist/night-owl.nvim", lazy = false, }, -- New version 
}
