return {
  "alexghergh/nvim-tmux-navigation",
  config = {
    disable_when_zoomed = true, -- defaults to false
    keybindings = {
      left = "<C-h>",
      down = "<C-j>",
      up = "<C-k>",
      right = "<C-l>",
      last_active = "<M-\\>",
    },
  },
}
