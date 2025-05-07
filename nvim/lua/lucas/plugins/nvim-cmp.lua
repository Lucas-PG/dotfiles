return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp", event = "InsertEnter" },
		{ "hrsh7th/cmp-buffer", event = "InsertEnter" },
		{ "hrsh7th/cmp-path", event = "InsertEnter" },
		{
			"garymjr/nvim-snippets",
			event = "InsertEnter",
			opts = {
				friendly_snippets = true,
			},
			dependencies = { "rafamadriz/friendly-snippets" },
		},
		{ "windwp/nvim-autopairs", event = "InsertEnter" }, -- Add autopairs as dependency
	},
	config = function()
		local cmp = require("cmp")
		local kind_icons = {
			Array = "",
			Boolean = "󰨙",
			Class = "󰠱",
			Color = "󰏘",
			Control = "",
			Collapsed = "",
			Constant = "󰏿",
			Constructor = "",
			Copilot = "",
			Enum = "⌘",
			EnumMember = "⌘",
			Event = "",
			Field = "",
			File = "",
			Folder = "",
			Function = "󰊕",
			Interface = "",
			Keyword = "",
			Method = "󰊕",
			Module = "󰆧",
			Package = " ",
			Namespace = "󰦮",
			Null = "",
			Number = "󰎠",
			Operator = "󰆕",
			Object = "󰘦",
			Property = "",
			Reference = "󰈇",
			Snippet = "",
			Struct = "󰆼",
			Text = "",
			String = "",
			TypeParameter = "󰅲",
			Value = "󰎠",
			Unit = "",
			Variable = "𝑣",
		}

		cmp.setup({
			window = {
				completion = {
					border = {
						{ "󱐋", "WarningMsg" },
						{ "─", "Comment" },
						{ "╮", "Comment" },
						{ "│", "Comment" },
						{ "╯", "Comment" },
						{ "─", "Comment" },
						{ "╰", "Comment" },
						{ "│", "Comment" },
					},
					scrollbar = false,
				},
				documentation = {
					border = {
						{ "i", "DiagnosticHint" },
						{ "─", "Comment" },
						{ "╮", "Comment" },
						{ "│", "Comment" },
						{ "╯", "Comment" },
						{ "─", "Comment" },
						{ "╰", "Comment" },
						{ "│", "Comment" },
					},
					scrollbar = false,
				},
			},
			completion = {
				completeopt = "menu,menuone,preview,noinsert",
			},
			mapping = cmp.mapping.preset.insert({
				["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
				["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
				["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
				["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
				["<cr>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true }),
				["<C-e>"] = cmp.mapping.abort(),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "snippets" },
				{ name = "buffer", max_item_count = 5 }, -- Limit buffer items
				{ name = "path" },
			}),
			formatting = {
				format = function(_, vim_item)
					vim_item.kind = string.format(" %s", kind_icons[vim_item.kind])
					return vim_item
				end,
			},
			experimental = {
				ghost_text = true,
			},
			view = {
				entries = {
					name = "custom",
					selection_order = "top_down",
					follow_cursor = false,
				},
				docs = {
					auto_open = true,
				},
			},
		})

		-- Setup autopairs integration after CMP is loaded
		require("nvim-autopairs").setup({})
		cmp.event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())
	end,
	keys = {
		{
			"<S-Tab>",
			function()
				return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<Tab>"
			end,
			expr = true,
			silent = true,
			mode = { "i", "s" },
		},
	},
}
