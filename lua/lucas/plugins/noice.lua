return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		messages = {
			enabled = false,
		},

		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},

		presets = {
			command_palette = false, -- Disable command line alterations
		},
		-- NOTE: Uncomment below to display normal cmdline

		-- cmdline = {
		-- 	view = "cmdline",
		-- },
	},

	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
}
