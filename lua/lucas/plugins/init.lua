return {
	"APZelos/blamer.nvim",
	"sindrets/diffview.nvim",
	"tpope/vim-fugitive",
	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				background_colour = "#000000",
			})
		end,
	},

	"ThePrimeagen/vim-be-good",
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
	"sudormrfbin/cheatsheet.nvim",
	"princejoogie/dir-telescope.nvim",
	-- {
	-- 	"pwntester/octo.nvim",
	-- 	requires = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-telescope/telescope.nvim",
	-- 		-- OR 'ibhagwan/fzf-lua',
	-- 		"nvim-tree/nvim-web-devicons",
	-- 	},
	-- 	config = function()
	-- 		require("octo").setup()
	-- 	end,
	-- },
	{
		"HakonHarnes/img-clip.nvim",
		event = "VeryLazy",
		opts = {
			-- add options here
			-- or leave it empty to use the default settings
		},
		keys = {
			-- suggested keymap
			{ "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
		},
	},
}
