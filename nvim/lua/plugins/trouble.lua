return {
  "folke/trouble.nvim",
  cmd = { "TroubleToggle", "Trouble" },
  keys = {
    { "<leader>,a", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Trouble1" },
    { "<leader>,t", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Trouble2" },
    { "<leader>,q", "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble3" },
  },
  opts = {
    use_diagnotics_signs = true,
    action_keys = {
      close = { "q", "<esc>" },
      cancel = "<c-e>",
    },
  },
}
