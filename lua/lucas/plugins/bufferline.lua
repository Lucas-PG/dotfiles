return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			close_command = "bdelete! %d",
			right_mouse_command = "bdelete! %d",
			left_mouse_command = "buffer %d",
			middle_mouse_command = nil,
			indicator_icon = "▎",
			modified_icon = "●",
			close_icon = "",
			left_trunc_marker = "",
			right_trunc_marker = "",
			name_formatter = function(buf) -- buf contains:
				-- name                | str        | the basename of the active file
				-- path                | str        | the full path of the active file
				-- bufnr (buffer only) | int        | the number of the active buffer
				-- buffers (tabs only) | table(int) | the numbers of the buffers in the tab
				-- tabnr (tabs only)   | int        | the number of the tab
			end,
			diagnostics_indicator = function(count, level, diagnostics_dict, context)
				return "(" .. count .. ")"
			end,
			custom_filter = function(buf_number)
				-- filter out filetypes you don't want to see
				if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
					return true
				end
				-- filter out by buffer name
				if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
					return true
				end
				-- filter out based on arbitrary rules
				-- e.g. filter out vimwiki buffer from tabline in your work repo
				if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
					return true
				end
			end,
			offsets = {
				{ filetype = "NvimTree", text = "File Explorer", text_align = "center", separator = true },
			},
			show_buffer_icons = true, -- disable filetype icons for buffers
			show_buffer_close_icons = true,
			show_close_icon = true,
			show_tab_indicators = true,
			persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
			separator_style = "thin", -- options: "slant", "thick", "thin"
			enforce_regular_tabs = false,
			always_show_bufferline = true,
			sort_by = "id", -- options: "id", "extension", "relative_directory", "directory", "tabs"
		},
		highlights = {},
	},
}
