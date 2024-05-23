-- [[ { "norcalli/nvim-colorizer.lua", config = { "*" } }, --config = true (another way to run it after load it) ]]
return {
  "NvChad/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup()
  end,
}
