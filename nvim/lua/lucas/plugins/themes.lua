return {
	{
		"craftzdog/solarized-osaka.nvim",
		config = function()
			require("solarized-osaka").setup({
				transparent = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = false },
					floats = "transparent",
				},
			})
		end,
	},
	-- "rebelot/kanagawa.nvim",
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				styles = {
					bold = false,
					italic = true,
					transparency = true,
				},
			})
		end,
	},
	-- "Mofiqul/vscode.nvim",
	"shaunsingh/nord.nvim",
	"nyoom-engineering/oxocarbon.nvim",
	-- "sonph/onehalf",
	-- "projekt0n/github-nvim-theme",
	-- "catppuccin/nvim",
	"haishanh/night-owl.vim",
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				transparent = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					sidebars = "transparent",
					floats = "transparent",
				},
			})
		end,
	},
	"vague2k/vague.nvim",
}
