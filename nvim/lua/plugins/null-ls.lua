return {
  'jose-elias-alvarez/null-ls.nvim',
  dependencies = { 'mason.nvim' },
  opts = function()
    local nls = require('null-ls')
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    local formatting = nls.builtins.formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    local diagnostics = nls.builtins.diagnostics
    return {
      debug = false,
      sources = {
        formatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } },
        formatting.stylua
      },
    }
  end,
  keys = {
    {'<leader>fm', ':Format<CR>', desc = 'Apply formatting'},
  }
}
