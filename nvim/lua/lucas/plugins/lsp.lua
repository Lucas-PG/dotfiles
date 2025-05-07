return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" }, -- Load on buffer read or new file
	dependencies = {
		{ "stevearc/conform.nvim", opts = {} },
		{ "williamboman/mason.nvim", cmd = "Mason" }, -- Load Mason only on :Mason
		{
			"williamboman/mason-lspconfig.nvim",
			event = { "BufReadPre", "BufNewFile" },
		},
		{ "hrsh7th/cmp-nvim-lsp", event = "InsertEnter" }, -- Load with CMP
		{ "hrsh7th/nvim-cmp", event = "InsertEnter" },
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			event = { "BufReadPre", "BufNewFile" },
		},
	},
	config = function()
		require("mason").setup({})
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"html",
				"cssls",
				"lua_ls",
				"pyright",
				"bashls",
				"yamlls",
			},
			automatic_installation = true,

			handlers = {
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
			},
		})
		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				-- PYTHON
				"blue",
				"debugpy",
				"pyright",
				"isort",
				"python-lsp-server",
				-- LUA
				"lua-language-server",
				"stylua",
				-- SHELL
				"shfmt",
				-- YAML
				"yamllint",
			},
			auto_update = false, -- Avoid synchronous checks at startup
		})

		-- Diagnostic config
		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})

		-- LSP keybindings
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
