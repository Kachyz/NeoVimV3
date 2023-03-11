return {
 'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = {
    ensure_installed = {
      "html", "javascript", "lua", "typescript", "tsx", "css", "json", "http"
    }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true
    },
    rainbow = {
      enable = true,
      extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
    },
    -- KACHYZ - Use this when `nvim-ts-rainbow2` is fixed for TSX files
    --[[ rainbow = { ]]
    --[[   enable = true, ]]
    --[[   -- list of languages you want to disable the plugin for ]]
    --[[   disable = {}, ]]
    --[[   -- Which query to use for finding delimiters ]]
    --[[   query = 'rainbow-parens', ]]
    --[[   -- Highlight the entire buffer all at once ]]
    --[[   strategy = require 'ts-rainbow.strategy.global', ]]
    --[[ }, ]]
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  }
}
