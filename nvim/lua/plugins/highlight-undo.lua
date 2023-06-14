return {
  "tzachar/highlight-undo.nvim",
  config = function()
    require("highlight-undo").setup({
      hlgroup = "HighlightUndo",
      duration = 400,
      keymaps = {
        { "n", "u", "undo", {} },
        { "n", "<C-r>", "redo", {} },
      },
    })
  end,
}
