return {
	"APZelos/blamer.nvim",
	"sindrets/diffview.nvim",
	"tpope/vim-fugitive",
	"rcarriga/nvim-notify",
	"ThePrimeagen/vim-be-good",
	"rafi/awesome-vim-colorschemes",
	"nvim-telescope/telescope.nvim",
	"nvim-lua/plenary.nvim",
	{
		"andrew-george/telescope-themes",
		config = function()
			require("telescope").load_extension("themes")
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	"sindrets/diffview.nvim",
	"nvim-pack/nvim-spectre",
	{

		"ggandor/leap.nvim",
		config = function()
			require("leap").create_default_mappings()
		end,
	},
	"RRethy/vim-illuminate",
	"eandrju/cellular-automaton.nvim",
}
