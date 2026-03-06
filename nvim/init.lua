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
vim.o.autoread = true
vim.o.colorcolumn = "80"
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", ";", ":")

local autoread_group = vim.api.nvim_create_augroup("autoread_checktime", { clear = true })
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI", "TermLeave", "WinEnter" }, {
	group = autoread_group,
	callback = function()
		if vim.fn.mode() ~= "c" then
			vim.cmd("checktime")
		end
	end,
})

vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/christoomey/vim-tmux-navigator" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/rmagatti/auto-session" },
	{ src = "https://github.com/catgoose/nvim-colorizer.lua" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/kdheepak/lazygit.nvim" },
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com/hat0uma/csvview.nvim" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
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
		vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#1f1d2e" })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#1f1d2e", fg = "#403d52" })
		vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "#26233a" })
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "#26233a", fg = "#403d52" })
		vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "#c4a7e7", fg = "#191724" })
		vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "#1f1d2e", fg = "#908caa" })
		vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "#1f1d2e", fg = "#908caa" })
	end,
})

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

require("csvview").setup({
	view = {
		display_mode = "border",
	},
})
require("mini.indentscope").setup({
	draw = {
		delay = 0,
	},
	symbol = "│",
	options = {
		try_as_border = true,
	},
})
require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pyright",
		"intelephense",
		"vimls",
		"html",
		"clangd",
		"jdtls",
	},
})
require("mason-tool-installer").setup({
	ensure_installed = {
		"ansiblels",
		"bashls",
		"black",
		"clang-format",
		"clangd",
		"cssls",
		"debugpy",
		"html",
		"google-java-format",
		"intelephense",
		"isort",
		"lua_ls",
		"omnisharp",
		"php-cs-fixer",
		"prettier",
		"pyright",
		"shfmt",
		"stylua",
		"vimls",
		"yamlls",
		"yamllint",
		"tinymist",
		"typstyle",
	},
})

local cmp = require("cmp")
require("nvim-autopairs").setup({
	fast_wrap = {},
})

local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()

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
		["<tab>"] = cmp.mapping.select_next_item(),
		["<S-tab>"] = cmp.mapping.select_prev_item(),
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
		typst = { "typstyle" },
	},
})

local function pack_clean()
	if not (vim.pack and vim.pack.get and vim.pack.del) then
		vim.notify("vim.pack is not available.", vim.log.levels.WARN)
		return
	end

	local stale_specs = {}
	for _, plugin in ipairs(vim.pack.get()) do
		if not plugin.active then
			local spec = plugin.spec or {}
			if type(spec.src) == "string" and spec.src ~= "" then
				table.insert(stale_specs, { src = spec.src })
			elseif type(spec.name) == "string" and spec.name ~= "" then
				table.insert(stale_specs, { name = spec.name })
			end
		end
	end

	if #stale_specs == 0 then
		vim.notify("No unused plugins to clean.", vim.log.levels.INFO)
		return
	end

	local choice = vim.fn.confirm(("Remove %d unused plugin(s)?"):format(#stale_specs), "&Yes\n&No", 2)
	if choice == 1 then
		local removed = 0
		local failed = 0
		for _, spec in ipairs(stale_specs) do
			local ok = pcall(vim.pack.del, { spec })
			if ok then
				removed = removed + 1
			else
				failed = failed + 1
			end
		end
		if failed == 0 then
			vim.notify(("Removed %d unused plugin(s)."):format(removed), vim.log.levels.INFO)
		else
			vim.notify(("Removed %d plugin(s), failed to remove %d."):format(removed, failed), vim.log.levels.WARN)
		end
	end
end

vim.keymap.set("n", "<leader>tp", function()
	local cb = vim.fn.expand("%")
	local pdf = vim.fn.fnamemodify(cb, ":r") .. ".pdf"
	vim.fn.jobstart("typst watch " .. cb, { detach = true })
	vim.fn.jobstart("xdg-open " .. pdf, { detach = true })
end)

vim.cmd("colorscheme rose-pine")

vim.api.nvim_set_hl(0, "StatusLine", {
	bg = "#1C1C39",
	fg = "#81839E",
})
vim.api.nvim_set_hl(0, "StatusLineNC", {
	bg = "#141428",
	fg = "#4A4C6A",
})
vim.api.nvim_set_hl(0, "ColorColumn", {
	bg = "#1C1C39",
})
require("colorizer").setup({})

local ok_builtin, builtin = pcall(require, "telescope.builtin")
if ok_builtin then
	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
	vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Live grep" })
	vim.keymap.set("n", "<leader>h", builtin.help_tags, { desc = "Help tags" })
end

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>pc", pack_clean)
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
vim.keymap.set("n", "<leader>gh", ":GBrowse<CR>", { desc = "Open on GitHub", noremap = true, silent = true })
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
