return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = function()
		local custom_header = require("lucas.core.headers")

		-- logo = string.rep("\n", 8) .. logo .. "\n\n"
		custom_header = string.rep("\n", 5) .. custom_header .. "\n\n"

		local opts = {
			theme = "doom",
			hide = {
				-- this is taken care of by lualine
				-- enabling this messes up the actual laststatus setting after loading a file
				statusline = false,
			},
			config = {
				header = vim.split(custom_header, "\n"),
        -- stylua: ignore
        -- header = headers.hydra,
				center = {
					-- { action = "ene | startinsert", desc = " new file", icon = " ", key = "e" },
					{ action = "Telescope find_files", desc = " Find File", icon = " ", key = "f" },
          { action = "Telescope oldfiles", desc = " Recent Files", icon = " ", key = "r" },
					-- { action = "Telescope live_grep", desc = " find text",       icon = " ", key = "<space>g" },
          {
            icon = '  ',
            desc = 'Oil ',
            key = 'o',
            action = ':Oil',
          },
					-- { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " config",          icon = " ", key = "<space>c" },
					{
						action = "SessionRestore",
						desc = " Restore Session",
						icon = " ",
						key = "s",
					},
					-- { action = "LazyExtras", desc = " lazy extras", icon = " ", key = "<space>x" },
					{ action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
					{ action = "qa", desc = " Quit", icon = " ", key = "q" },
				},
				footer = function()
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					return { "⚡ neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
				end,
			},
		}

		for _, button in ipairs(opts.config.center) do
			button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
			button.key_format = "  %s"
			button.key_format = string.gsub(button.key, "<space>", "   SPC ")
		end

		-- close Lazy and re-open when the dashboard is ready
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				pattern = "DashboardLoaded",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		return opts
	end,
}