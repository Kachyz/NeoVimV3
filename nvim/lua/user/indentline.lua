require("ibl").setup({
  whitespace = {
    remove_blankline_trail = true,
  },
  indent = { char = "│" },
  exclude = {
    filetypes = {
      "help",
      "startify",
      "dashboard",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
    },
    buftypes = { "terminal", "nofile" },
  },
  scope = { enabled = true },
})
