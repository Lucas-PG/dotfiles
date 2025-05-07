return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"stevearc/conform.nvim",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"html",
				"cssls",
				"lua_ls",
				"pyright",
				"bashls",
				"yamlls",
			},
		})
		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				-- PYTHON
				"blue", -- less uncompromising python formatter than black
				"debugpy", -- implementation of the debug adapter protocol for python
				"pyright", -- static type checker for python
				"isort", -- organize imports alphabetically
				"python-lsp-server", -- fork of the python-language-server,
				-- LUA
				"lua-language-server", -- language server with Lua suport
				"stylua", -- Lua formatter
				-- SHELL
				"shfmt", -- Shell formatter
				-- YAML
				"yamllint", -- YAML formatter
			},
		})

		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})

		-- LSP keybindings
		-- Only applies those keybindings to files which have an LSP
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(ev)
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "<leader>ds", vim.lsp.buf.document_symbol, opts)
				vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
			end,
		})
	end,
}
