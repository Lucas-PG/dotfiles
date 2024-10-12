return {
	"stevearc/oil.nvim",
	opts = {
		view_options = {
			show_hidden = true, -- This will make sure dot files are displayed
		},
		skip_confirm_for_simple_edits = true,
	},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
