--[[ -- Bubbles config for lualine ]]
--[[ -- Author: lokesh-krishna ]]
--[[ -- MIT license, see LICENSE for more details. ]]
--[[]]
--[[ -- stylua: ignore ]]
--[[ local colors = { ]]
--[[   blue   = '#80a0ff', ]]
--[[   cyan   = '#79dac8', ]]
--[[   black  = '#080808', ]]
--[[   white  = '#c6c6c6', ]]
--[[   red    = '#ff5189', ]]
--[[   violet = '#d183e8', ]]
--[[   grey   = '#303030', ]]
--[[   charcoal = '#344960', ]]
--[[   sky = '#70A8B8', ]]
--[[ } ]]
--[[]]
--[[ local bubbles_theme = { ]]
--[[   normal = { ]]
--[[     a = { fg = colors.black, bg = colors.violet }, ]]
--[[     b = { fg = colors.white, bg = colors.charcoal }, ]]
--[[     c = { fg = colors.black, bg = colors.sky }, ]]
--[[]]
--[[   }, ]]
--[[]]
--[[   insert = { a = { fg = colors.black, bg = colors.blue } }, ]]
--[[   visual = { a = { fg = colors.black, bg = colors.cyan } }, ]]
--[[   replace = { a = { fg = colors.black, bg = colors.red } }, ]]
--[[]]
--[[   inactive = { ]]
--[[     a = { fg = colors.white, bg = colors.black }, ]]
--[[     b = { fg = colors.white, bg = colors.black }, ]]
--[[     c = { fg = colors.black, bg = colors.black }, ]]
--[[   }, ]]
--[[ } ]]
--[[]]
local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}
--[[]]
--[[ local branch = { ]]
--[[ 	"branch", ]]
--[[ 	icons_enabled = true, ]]
--[[ 	icon = "", ]]
--[[ } ]]
--[[]]
--[[ require('lualine').setup { ]]
--[[   options = { ]]
    --[[ theme = bubbles_theme, ]]
    --[[ theme = "nightfox", ]]
--[[     icons_enabled = true, ]]
    --[[ globalstatus = true, ]]
--[[     component_separators = '|', ]]
--[[     section_separators = { left = '', right = '' }, ]]
--[[     disabled_filetypes = { "dashboard", "NvimTree", "Outline" }, ]]
--[[   }, ]]
--[[   sections = { ]]
--[[     lualine_a = { ]]
--[[       { 'mode', separator = { left = '' }, right_padding = 2 }, ]]
--[[     }, ]]
--[[     lualine_b = { branch }, ]]
--[[     lualine_c = { 'filename' }, ]]
--[[     lualine_x = {}, ]]
--[[     lualine_y = { 'filetype', diagnostics }, ]]
--[[     lualine_z = { ]]
--[[       { 'location', separator = { right = '' }, left_padding = 2 }, ]]
--[[     }, ]]
--[[   }, ]]
--[[   inactive_sections = { ]]
--[[     lualine_a = { 'filename' }, ]]
--[[     lualine_b = {}, ]]
--[[     lualine_c = {}, ]]
--[[     lualine_x = {}, ]]
--[[     lualine_y = {}, ]]
--[[     lualine_z = { 'location' }, ]]
--[[   }, ]]
--[[   tabline = {}, ]]
  --[[ inactive_winbar = { ]]
  --[[   lualine_a = {"filename"} ]]
  --[[ }, ]]
--[[   extensions = {}, ]]
--[[ } ]]


-------------------------
require 'colorizer'.setup()

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    -- [[ globalstatus = true, ]]
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    -- lualine_a = {'mode'},
    lualine_a = { { 'mode', fmt = function(str) return str:sub(1,1) end } },

    --[[ lualine_b = {'branch', 'diff', 'diagnostics'}, ]]
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'diff', 'diagnostics'},
    lualine_z = {'location'}
    --[[ lualine_z = {} ]]
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
