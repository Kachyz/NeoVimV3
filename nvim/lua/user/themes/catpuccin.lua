vim.g.catppuccin_flavour = "mocha"
--[[ vim.g.catppuccin_flavour = "macchiato" ]]

require("catppuccin").setup({
	transparent_background = false,
	term_colors = true,
	compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
	},
	dim_inactive = {
		enabled = true,
		shade = "light",
		percentage = 0.75,
	},
	styles = {
		comments = { "italic" },
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		treesitter = true,
		cmp = true,
		gitsigns = false,
		telescope = true,
		nvimtree = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
	color_overrides = {},
	highlight_overrides = {},
})

vim.cmd("colorscheme catppuccin")
