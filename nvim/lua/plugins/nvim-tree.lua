return {
  "kyazdani42/nvim-tree.lua", -- file explorer
  keys = {
    { "<leader>e", ":NvimTreeToggle<cr>", desc="Open NvimTree" },
  },
  config = {
    disable_netrw = true,
    hijack_netrw = true,
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    hijack_directories = {
      enable = true,
      auto_open = true,
    },
    diagnostics = {
      enable = true,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      },
    },
    update_focused_file = {
      enable = true,
      update_cwd = true,
      ignore_list = {},
    },
    git = {
      enable = true,
      ignore = true,
      timeout = 500,
    },
    view = {
      width = 40,
      --[[ height = 30, ]]
      hide_root_folder = false,
      side = "left",
      mappings = {
        custom_only = false,
        list = {
          { key = { "l", "<CR>", "o" }, action = "edit" },
          { key = "h", action = "close_node" },
          { key = "v", action = "vsplit" },
          { key = "z", action = "split" },
        },
      },
      number = false,
      relativenumber = false,
    },
    actions = {
      open_file = {
        resize_window = true,
        quit_on_open = false,
        window_picker = {
          enable = true,
        },
      },
    },
    renderer = {
      highlight_git = true,
      root_folder_modifier = ":t",
      icons = {
        show = {
          git = true,
          folder = true,
          file = true,
          folder_arrow = true,
          -- tree_width = 30,
        },
        glyphs = {
          default = "",
          symlink = "",
          git = {
            unstaged = "",
            staged = "S",
            unmerged = "",
            renamed = "➜",
            deleted = "",
            untracked = "U",
            ignored = "◌",
          },
          folder = {
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
          },
        }
      },
    },
  }
}
