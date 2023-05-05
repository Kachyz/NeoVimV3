return {
  "folke/trouble.nvim",
  cmd = { "TroubleToggle", "Trouble" },
  keys = {
    { "<leader>ta", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Trouble1" },
    { "<leader>tt", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Trouble2" },
    { "<leader>tq", "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble3" },
  },
  opts = {
    use_diagnotics_signs = true,
    action_keys = {
      close = { "q", "<esc>" },
      cancel = "<c-e>",
    },
  },
}
