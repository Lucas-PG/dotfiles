vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.termguicolors = true
vim.o.swapfile = false
vim.o.winborder = "rounded"
vim.o.splitright = true
vim.o.splitbelow = true
vim.g.mapleader = " "
vim.o.clipboard = "unnamedplus"
vim.o.timeoutlen = 500
vim.o.completeopt = "menu,menuone,noselect"
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", ";", ":")

vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/ThePrimeagen/99" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/williamboman/mason-lspconfig.nvim" },
	{ src = "https://github.com/christoomey/vim-tmux-navigator" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/rmagatti/auto-session" },
	{ src = "https://github.com/catgoose/nvim-colorizer.lua" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/kdheepak/lazygit.nvim" },
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com/nvim-mini/mini.indentscope" },
	{ src = "https://github.com/tpope/vim-fugitive" },
	{ src = "https://github.com/tpope/vim-rhubarb" },
	{ src = "https://github.com/mfussenegger/nvim-jdtls" },
	{ src = "https://github.com/iamcco/markdown-preview.nvim" },
	{ src = "https://github.com/rose-pine/neovim" },

	{ src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
	{ src = "https://github.com/hrsh7th/cmp-buffer" },
	{ src = "https://github.com/hrsh7th/cmp-path" },
	{ src = "https://github.com/hrsh7th/cmp-cmdline" },
	{ src = "https://github.com/hrsh7th/nvim-cmp" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/stevearc/vim-vscode-snippets" },
	{ src = "https://github.com/saadparwaiz1/cmp_luasnip" },
	{ src = "https://github.com/windwp/nvim-ts-autotag" },
})

local function clean_removed_packs()
	-- Remove plugins that are still on disk but no longer declared in vim.pack.add().
	if not (vim.pack and vim.pack.get and vim.pack.del) then
		return
	end

	local stale_specs = vim.iter(vim.pack.get())
		:filter(function(plugin)
			return not plugin.active
		end)
		:map(function(plugin)
			local spec = plugin.spec or {}
			if type(spec.src) == "string" and spec.src ~= "" then
				return { src = spec.src }
			end
			return nil
		end)
		:filter(function(spec)
			return spec ~= nil
		end)
		:totable()

	if #stale_specs == 0 then
		return
	end

	local hard_errors = {}
	for _, spec in ipairs(stale_specs) do
		local ok, err = pcall(vim.pack.del, { spec })
		if not ok then
			local msg = tostring(err)
			if not msg:match("is not installed") then
				table.insert(hard_errors, msg)
			end
		end
	end

	if #hard_errors > 0 then
		vim.notify("vim.pack cleanup failed: " .. hard_errors[1], vim.log.levels.WARN)
	end
end

vim.api.nvim_create_autocmd("VimEnter", {
	once = true,
	callback = clean_removed_packs,
})

-- require("vague").setup({
-- 	transparent = true,
-- })
require("tokyonight").setup({
	transparent = true,
})
require("rose-pine").setup({
	styles = {
		transparency = true,
	},
})
require("gitsigns").setup({
	current_line_blame = true,
	current_line_blame_opts = {
		delay = 300,
	},
})
require("auto-session").setup({
	auto_restore_enabled = false,
})

local ok_telescope, telescope = pcall(require, "telescope")
if ok_telescope then
	local actions = require("telescope.actions")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-k>"] = actions.move_selection_previous,
					["<C-j>"] = actions.move_selection_next,
					["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
				},
			},
			path_display = { "smart" },
			layout_config = {
				horizontal = {
					preview_width = 0.6,
				},
			},
		},
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown(),
			},
		},
	})
	pcall(telescope.load_extension, "fzf")
	pcall(telescope.load_extension, "ui-select")
end

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "TelescopeNormal",       { bg = "#1f1d2e" })
		vim.api.nvim_set_hl(0, "TelescopeBorder",       { bg = "#1f1d2e", fg = "#403d52" })
		vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "#26233a" })
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "#26233a", fg = "#403d52" })
		vim.api.nvim_set_hl(0, "TelescopePromptTitle",  { bg = "#c4a7e7", fg = "#191724" })
		vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "#1f1d2e", fg = "#908caa" })
		vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "#1f1d2e", fg = "#908caa" })
	end,
})

local ok_99, _99 = pcall(require, "99")
if ok_99 then
	_99.setup({
		provider = _99.Providers.ClaudeCodeProvider,
		logger = {
			level = _99.DEBUG,
		},
	})
end

require("oil").setup({
	lsp_file_methods = {
		enabled = true,
		timeout_ms = 1000,
		autosave_changes = true,
	},
	columns = {
		"icon",
	},
	float = {
		max_width = 0.7,
		max_height = 0.6,
		border = "rounded",
	},
	view_options = {
		show_hidden = true,
	},
	use_default_keymaps = false,
	keymaps = {
		["g?"] = { "actions.show_help", mode = "n" },
		["<CR>"] = "actions.select",
		["<C-s>"] = { "actions.select", opts = { vertical = true } },
		["<C-t>"] = { "actions.select", opts = { tab = true } },
		["<C-p>"] = "actions.preview",
		["<C-c>"] = { "actions.close", mode = "n" },
		["-"] = { "actions.parent", mode = "n" },
		["_"] = { "actions.open_cwd", mode = "n" },
		["`"] = { "actions.cd", mode = "n" },
		["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
		["gs"] = { "actions.change_sort", mode = "n" },
		["gx"] = "actions.open_external",
		["g."] = { "actions.toggle_hidden", mode = "n" },
		["g\\"] = { "actions.toggle_trash", mode = "n" },
	},
})

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "pyright", "intelephense", "vimls", "html", "clangd", "jdtls" },
})

local cmp = require("cmp")
require("nvim-autopairs").setup({
	fast_wrap = {},
})
require("mini.indentscope").setup({
	draw = {
		delay = 0,
		animation = nil,
	},
	symbol = "│",
	options = {
		try_as_border = true,
	},
})

local luasnip = require("luasnip")
luasnip.filetype_extend("cs", { "csharp" })
luasnip.filetype_extend("cs", { "unity" })
require("luasnip.loaders.from_vscode").lazy_load({})
-- require("luasnip.loaders.from_vscode").lazy_load({
-- 	paths = { vim.fn.expand("~/.config/nvim/snippets") },
-- })

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "path" },
		{ name = "buffer" },
	}),

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		html = { "prettier" },
		cpp = { "clang-format" },
		java = { "google-java-format" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		css = { "prettier" },
	},
})

local function jdtls_setup()
	local ok, jdtls = pcall(require, "jdtls")
	if not ok then
		return
	end

	local mason_path = vim.fn.stdpath("data") .. "/mason"
	local jdtls_path = mason_path .. "/packages/jdtls"
	local launcher = vim.fn.glob(jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")

	-- CONFIG por SO (Mac/Linux/Windows)
	local config_os
	if vim.fn.has("mac") == 1 then
		config_os = jdtls_path .. "/config_mac"
	elseif vim.fn.has("unix") == 1 then
		config_os = jdtls_path .. "/config_linux"
	else
		config_os = jdtls_path .. "/config_win"
	end

	-- workspace por projeto
	local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
	local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. project_name

	local config = {
		cmd = {
			"java",
			"-Declipse.application=org.eclipse.jdt.ls.core.id1",
			"-Dosgi.bundles.defaultStartLevel=4",
			"-Declipse.product=org.eclipse.jdt.ls.core.product",
			"-Dlog.protocol=true",
			"-Dlog.level=ALL",
			"-Xms1g",
			"--add-modules=ALL-SYSTEM",
			"--add-opens",
			"java.base/java.util=ALL-UNNAMED",
			"--add-opens",
			"java.base/java.lang=ALL-UNNAMED",
			"-jar",
			launcher,
			"-configuration",
			config_os,
			"-data",
			workspace_dir,
		},

		root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),

		settings = {
			java = {
				signatureHelp = { enabled = true },
				contentProvider = { preferred = "fernflower" },
				completion = {
					favoriteStaticMembers = {
						"org.junit.jupiter.api.Assertions.*",
						"java.util.Objects.requireNonNull",
						"java.util.Objects.requireNonNullElse",
					},
				},
			},
		},

		capabilities = require("cmp_nvim_lsp").default_capabilities(),
	}

	jdtls.start_or_attach(config)
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = jdtls_setup,
})

vim.cmd("colorscheme rose-pine")
vim.cmd("hi statusline guibg=#26233a guifg=#e0def4")
require("colorizer").setup({})

local ok_builtin, builtin = pcall(require, "telescope.builtin")
if ok_builtin then
	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
	vim.keymap.set("n", "<leader>fw", builtin.live_grep,  { desc = "Live grep" })
	vim.keymap.set("n", "<leader>h",  builtin.help_tags,  { desc = "Help tags" })
end
if ok_99 then
	vim.keymap.set("v", "<leader>9v", function() _99.visual() end,            { desc = "99: Replace visual with AI" })
	vim.keymap.set("n", "<leader>9s", function() _99.search() end,            { desc = "99: Search project with AI" })
	vim.keymap.set("n", "<leader>9o", function() _99.open() end,              { desc = "99: Open last interaction" })
	vim.keymap.set("n", "<leader>9x", function() _99.stop_all_requests() end, { desc = "99: Stop requests" })
	vim.keymap.set("n", "<leader>9l", function() _99.view_logs() end,         { desc = "99: View request logs" })
end
vim.keymap.set("n", "<leader>o", ":Oil<CR>")
vim.keymap.set("n", "<C-c>", ":%y+<CR>")
vim.keymap.set("n", "<leader>lf", function()
	require("conform").format({ lsp_fallback = true })
end)
vim.keymap.set("v", "<leader>lf", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "Formatar apenas linhas selecionadas" })
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sr", ":AutoSession restore<CR>")
vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>")
vim.keymap.set("n", "<leader>vrn", function()
	vim.lsp.buf.rename()
end, opts)
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<CR>", { desc = "Toggle Markdown Preview" })

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
})
