return {
	"ThePrimeagen/harpoon",
	keys = {
		{
			"<leader>a",
			function()
				require("harpoon.mark").add_file()
			end,
			{ desc = "add file to harpoon" },
		},
		{
			"<leader>e",
			function()
				require("harpoon.ui").toggle_quick_menu()
			end,
			{ desc = "harpoon toggle quick menu" },
		},
		{
			"<leader>1",
			function()
				require("harpoon.ui").nav_file(1)
			end,
			{ desc = "harpoon go to file 1" },
		},
		{
			"<leader>2",
			function()
				require("harpoon.ui").nav_file(2)
			end,
			{ desc = "harpoon go to file 2" },
		},
		{
			"<leader>3",
			function()
				require("harpoon.ui").nav_file(3)
			end,
			{ desc = "harpoon go to file 3" },
		},
		{
			"<leader>4",
			function()
				require("harpoon.ui").nav_file(4)
			end,
			{ desc = "harpoon go to file 4" },
		},
	},
}
