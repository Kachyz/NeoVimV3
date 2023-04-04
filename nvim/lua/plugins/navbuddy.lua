return {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>nv", "<cmd>Navbuddy<cr>", desc = "Nav" },
  },
  config = function()
    local actions = require("nvim-navbuddy.actions")
    local navbuddy = require("nvim-navbuddy")
    navbuddy.setup({
      window = {
        border = "double",
      },
      mappings = {
        ["<esc>"] = actions.close, -- Close and cursor to original location
        ["q"] = actions.close,
        ["<enter>"] = actions.select, -- Goto selected symbol

        ["j"] = actions.next_sibling, -- down
        ["k"] = actions.previous_sibling, -- up
        ["h"] = actions.parent, -- Move to left panel
        ["l"] = actions.children, -- Move to right panel

        ["y"] = actions.yank_scope, -- Yank the scope to system clipboard "+
        ["D"] = actions.delete, -- Delete scope
        ["f"] = actions.fold_create, -- Create fold of current scope
        ["c"] = actions.comment, -- Comment out current scope
      },
      lsp = { auto_attach = true },
    })
  end,
}
