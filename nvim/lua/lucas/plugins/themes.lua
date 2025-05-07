return {
	{
		"craftzdog/solarized-osaka.nvim",
		config = function()
			require("solarized-osaka").setup({
				transparent = false,
				styles = {
					comments = { italic = true },
					keywords = { italic = false },
					floats = "transparent",
				},
			})
		end,
	},
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	config = function()
	-- 		require("kanagawa").setup({
	-- 			transparent = true,
	-- 		})
	-- 	end,
	-- },
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				styles = {
					bold = false,
					italic = true,
					transparency = true,
				},
				highlight_groups = {
					StatusLine = { bg = "#28263e", fg = "#e0def4" },
					StatusLineNC = { bg = "#28263e", fg = "#908caa" },
				},
			})
		end,
	},
	-- "Mofiqul/vscode.nvim",
	"shaunsingh/nord.nvim",
	-- "nyoom-engineering/oxocarbon.nvim",
	-- "sonph/onehalf",
	-- "mikesmithgh/gruvsquirrel.nvim",
	-- {
	-- 	"projekt0n/github-nvim-theme",
	-- 	config = function()
	-- 		require("github-theme").setup({
	-- 			options = {
	-- 				transparent = true,
	-- 			},
	-- 		})
	-- 	end,
	-- },
	"haishanh/night-owl.vim",
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				transparent = false,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					sidebars = "transparent",
					floats = "transparent",
				},
			})
		end,
	},
	-- "vague2k/vague.nvim",
	-- "EdenEast/nightfox.nvim",
	-- "joshdick/onedark.vim",
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			no_italic = true,
			term_colors = true,
			transparent_background = false,
			styles = {
				comments = {},
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
			},
			custom_highlights = function(colors)
				return {
					StatusLine = { fg = colors.text, bg = colors.mantle },
					StatusLineNC = { fg = colors.overlay0, bg = colors.base },
				}
			end,
			color_overrides = {
				mocha = {
					base = "#1d1f20",
					mantle = "#1d1f20",
					crust = "#1d1f20",
				},
			},
			integrations = {
				telescope = {
					enabled = true,
					style = "nvchad",
				},
				dropbar = {
					enabled = true,
					color_mode = true,
				},
			},
		},
	},
	-- {
	-- 	"eldritch-theme/eldritch.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		transparent = true,
	-- 	},
	-- },
	"morhetz/gruvbox",
}
