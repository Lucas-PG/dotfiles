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
	-- "nyngwang/nvimgelion",
	-- "EdenEast/nightfox.nvim",
	-- "bluz71/vim-nightfly-colors",
	-- "olivercederborg/poimandres.nvim",
	-- "tiagovla/tokyodark.nvim",
	-- "tanvirtin/monokai.nvim",
	-- "maxmx03/fluoromachine.nvim",
	-- "sekke276/dark_flat.nvim",
	-- "fenetikm/falcon",
	-- "rebelot/kanagawa.nvim",
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				styles = {
					bold = true,
					italic = true,
					transparency = true,
				},
			})
		end,
	},
	-- "Mofiqul/vscode.nvim",
	"shaunsingh/nord.nvim",
	-- "shaunsingh/moonlight.nvim",
	-- "kdheepak/monochrome.nvim",
	"nyoom-engineering/oxocarbon.nvim",
	-- {
	-- 	"AlexvZyl/nordic.nvim",
	-- 	config = function()
	-- 		require("nordic").setup({
	-- 			transparent = {
	-- 				-- Enable transparent background.
	-- 				bg = false,
	-- 				-- Enable transparent background for floating windows.
	-- 				float = false,
	-- 			},
	-- 		})
	-- 	end,
	-- },
	-- "patstockwell/vim-monokai-tasty",
	-- "NLKNguyen/papercolor-theme",
	-- "sonph/onehalf",
	-- "sjl/badwolf",
	-- "jacoborus/tender.vim",
	-- "srcery-colors/srcery-vim",
	"projekt0n/github-nvim-theme",
	-- "pineapplegiant/spaceduck",
	"catppuccin/nvim",
	"haishanh/night-owl.vim",
	-- "sainnhe/everforest",
	-- "thedenisnikulin/vim-cyberpunk",
	-- "flazz/vim-colorschemes",
	-- "itchyny/landscape.vim",
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				transparent = true,
			})
		end,
	},
	-- "Mofiqul/dracula.nvim",
	-- "Mofiqul/adwaita.nvim",
	-- "franbach/miramare",
	-- "Badacadabra/vim-archery",
	-- "xero/evangelion.nvim",
}
