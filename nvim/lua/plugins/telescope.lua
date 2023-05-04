return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>p", ":Telescope find_files<cr>", desc = "Find files" }, -- Find a file by name
      { "<leader>gp", ":Telescope live_grep<cr>", desc = "GREP" }, -- ripgrep - find text inside files
      { "<leader>b", ":Telescope buffers<cr>", desc = "Find buffer" }, -- List open buffers
      { "<leader>gl", ":Telescope git_commits<cr>", desc = "Git Commits" }, -- git log
      { "<leader>gg", ":Telescope git_status<cr>", desc = "Git Status" }, -- git status
      { "<leader>gf", ":Telescope git_bcommits<cr>", desc = "Git buffer commits" }, -- git blame current file
      { "<leader>ksw", ":Telescope grep_string<cr>", desc = "Find word" }, -- search word under cursos
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          layout_config = {
            width = 0.75,
            prompt_position = "top",
            preview_cutoff = 120,
            horizontal = { mirror = false },
            vertical = { mirror = false },
          },
          find_command = { "rg", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case" },
          prompt_prefix = "🔎  ",
          selection_caret = "👉  ",
          entry_prefix = "  ",
          initial_mode = "insert",
          selection_strategy = "reset",
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
          file_sorter = require("telescope.sorters").get_fuzzy_file,
          file_ignore_patterns = { "package-lock.json" },
          generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
          path_display = {},
          winblend = 0,
          border = {},
          borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
          color_devicons = true,
          use_less = true,
          set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
          file_previewer = require("telescope.previewers").vim_buffer_cat.new,
          grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
          qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
          buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
        },
        pickers = {
          live_grep = {
            mappings = {
              i = { ["<c-f>"] = require("telescope.actions").to_fuzzy_refine },
            },
          },
        },
      })
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
    keys = {
      { "<leader>tf", ":Telescope file_browser<cr>", desc = "File explorer for telescope" }, -- Find a file by name
    },
  },
}
