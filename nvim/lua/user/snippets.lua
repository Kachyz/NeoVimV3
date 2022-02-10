local ls = require "luasnip"

local s = ls.s
local fmt = require("luasnip.extras.fmt").fmt
local i = ls.insert_node
local rep = require("luasnip.extras").rep

ls.snippets = {
  all = {
    -- For all filetypes
  },
  javascript = {
    -- Another way to do it
    -- ls.parser.parse_snippet("klg", "console.log('kz -> $1', $1)")
    s("klg", fmt("console.log('kz -> {}', {})", { i(1, "varName"), rep(1)}))
  }
}

ls.filetype_extend("javascriptreact", {"javascript"})
ls.filetype_extend("typescript", {"javascript"})
ls.filetype_extend("typescriptreact", {"javascript"})
