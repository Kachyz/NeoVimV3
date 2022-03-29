local nightfox = require('nightfox')

-- This function set the configuration of nightfox. If a value is not passed in the setup function
-- it will be taken from the default configuration above
nightfox.setup({
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
  pallets = { },
  groups = {
    GitSignsAdd = { fg = "#8EDF39" },
    GitSignsChange = { fg = "#F836B3" },
    GitSignsDelete = { fg = "#D80B06" },
    LineNr = { fg = "#b8a1e3" }
  }
})

-- Load the configuration set above and apply the colorscheme
vim.cmd("colorscheme nightfox")
