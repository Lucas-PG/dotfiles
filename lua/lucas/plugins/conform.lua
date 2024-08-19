return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				css = { "prettier" },
				html = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier_yaml" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				python = { "isort", "black" },
				bash = { "shfmt" },
				jinja2 = { "djlint" },
				sh = { "shfmt" },
				htmldjango = { "prettier" },
				java = { "google-java-format" },
				cpp = { "clang-format" },
				php = { "php-cs-fixer" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		-- vim.keymap.set({ "n", "v" }, "<leader>mp", function()
		-- 	conform.format({
		-- 		lsp_fallback = true,
		-- 		async = false,
		-- 		timeout_ms = 1000,
		-- 	})
		-- end, { desc = "Format file or range (in visual mode)" })

		-- Custom Prettier configuration for YAML files
		conform.formatters.prettier_yaml = {
			command = "prettier",
			args = { "--parser", "yaml", "--single-quote", "false" },
		}

		conform.formatters.shfmt = {
			append_args = { "-i", "4" },
		}

		conform.formatters = {
			["php-cs-fixer"] = {
				command = "php-cs-fixer",
				args = {
					"fix",
					"--rules=@PSR12", -- Formatting preset. Other presets are available, see the php-cs-fixer docs.
					"$FILENAME",
				},
				stdin = false,
			},
		}
	end,
}
