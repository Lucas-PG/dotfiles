return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	cmd = "Telescope", -- Load only on :Telescope command
	dependencies = {
		{ "nvim-lua/plenary.nvim", event = "VeryLazy" }, -- Load plenary lazily
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			event = "VeryLazy",
		},
		{ "nvim-tree/nvim-web-devicons", event = "VeryLazy" },
		{ "folke/todo-comments.nvim", event = "VeryLazy" },
		{ "andrew-george/telescope-themes", event = "VeryLazy" },
		{ "folke/trouble.nvim", event = "VeryLazy" }, -- Add trouble as dependency
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local transform_mod = require("telescope.actions.mt").transform_mod

		local trouble = require("trouble")
		local trouble_telescope = require("trouble.providers.telescope")

		local custom_actions = transform_mod({
			open_trouble_qflist = function(prompt_bufnr)
				trouble.toggle("quickfix")
			end,
		})

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
						["<C-t>"] = trouble_telescope.smart_open_with_trouble,
					},
				},
				layout_config = {
					horizontal = {
						width = 0.9,
						height = 0.8,
						preview_width = 0.6,
					},
					vertical = {
						width = 0.9,
						height = 0.9,
						preview_height = 0.6,
					},
				},
			},
			pickers = {
				git_commits = {
					layout_config = {
						horizontal = {
							width = 0.9,
							height = 0.8,
							preview_width = 0.6,
						},
					},
				},
				git_status = {
					layout_config = {
						horizontal = {
							width = 0.9,
							height = 0.8,
							preview_width = 0.6,
						},
					},
				},
			},
			extensions = {
				themes = {
					layout_config = {
						horizontal = {
							width = 0.8,
							height = 0.7,
						},
					},
					enable_previewer = true,
					enable_live_preview = true,
					persist = {
						enabled = true,
						path = vim.fn.stdpath("config") .. "/lua/colorscheme.lua",
					},
				},
			},
		})

		-- Load extensions
		telescope.load_extension("fzf")
		telescope.load_extension("themes")
	end,
	keys = { -- Add keybindings to trigger Telescope
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
	},
}
