return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
    },
    keys = {
      { "<leader>tt", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", desc = "TEST Run all tests in file" },
      { "<leader>tr", ":lua require('neotest').run.run()<CR>", desc = "TEST Run closest test" },
      { "<leader>ta", ":lua require('neotest').run.run({suite=true})<CR>", desc = "TEST Run all project tests" },
      { "<leader>ts", ":lua require('neotest').summary.toggle()<CR>", desc = "TEST Toggle summary window" },
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-jest")({
            dap = function()
              return {
                name = "Launch",
                type = "node2",
                request = "launch",
                program = "${file}",
                cwd = vim.fn.getcwd(),
                sourceMaps = true,
                protocol = "inspector",
                console = "integratedTerminal",
              }
            end,
            jestCommand = "npm test --",
            jestConfigFile = "custom.jest.config.ts",
            env = { CI = true },
            cwd = vim.fn.getcwd(),
          }),
        },
        icons = {
          child_indent = "│",
          child_prefix = "├",
          collapsed = "─",
          expanded = "╮",
          failed = "❌",
          final_child_indent = " ",
          final_child_prefix = "╰",
          non_collapsible = "─",
          passed = "✅",
          running = "⏳",
          running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
          skipped = "🚫",
          unknown = "❔",
          watching = "👀",
        },
      })
    end,
  },
  {
    "folke/neodev.nvim",
    opts = {},
    config = function()
      require("neodev").setup({
        library = { plugins = { "neotest" }, types = true },
      })
    end,
  },
}
