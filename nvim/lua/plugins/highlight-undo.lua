return {
  "tzachar/highlight-undo.nvim",
  config = function()
    require("highlight-undo").setup({
      duration = 400,
      keymaps = {
        undo = {
          desc = "undo",
          hlgroup = "HighlightUndo",
          mode = "n",
          lhs = "u",
          rhs = nil,
          opts = {
            callback = function()
              vim.cmd("undo")
              --[[ openFoldsOnUndo() ]]
            end,
          },
        },
        redo = {
          desc = "redo",
          hlgroup = "HighlightRedo",
          mode = "n",
          lhs = "<C-r>",
          rhs = nil,
          opts = {
            callback = function()
              vim.cmd("redo")
              --[[ openFoldsOnUndo() ]]
            end,
          },
        },
        paste = {
          desc = "paste",
          hlgroup = "HighlightUndo",
          mode = "n",
          lhs = "p",
          rhs = "p",
          opts = {},
        },
        Paste = {
          desc = "Paste",
          hlgroup = "HighlightUndo",
          mode = "n",
          lhs = "P",
          rhs = "P",
          opts = {},
        },
      },
    })
  end,
}
