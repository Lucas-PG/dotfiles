return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
    "andrew-george/telescope-themes", -- Add the telescope-themes dependency
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local transform_mod = require("telescope.actions.mt").transform_mod

    local trouble = require("trouble")
    local trouble_telescope = require("trouble.providers.telescope")

    -- Create your custom action
    local custom_actions = transform_mod({
      open_trouble_qflist = function(prompt_bufnr)
        trouble.toggle("quickfix")
      end,
    })

    -- Get the builtin schemes list
    local builtin_schemes = require("telescope._extensions.themes").builtin_schemes or {}

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- Move to prev result
            ["<C-j>"] = actions.move_selection_next, -- Move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
            ["<C-t>"] = require("trouble.sources.telescope").smart_open_with_trouble,
          },
        },
        layout_config = {
          horizontal = {
              width = 0.9, -- increase the width
              height = 0.8, -- increase the height
              preview_width = 0.6, -- increase the preview window width
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
          -- You can add regular telescope config that you want to apply on this picker only
          layout_config = {
            horizontal = {
              width = 0.8,
              height = 0.7,
            },
          },

          -- Extension-specific config
          enable_previewer = true, -- Show/hide previewer window
          enable_live_preview = true, -- Enable/disable live preview

          -- All builtin themes are ignored by default
          ignore = vim.list_extend(builtin_schemes, { "embark" }),

          persist = {
            -- Enable persisting last theme choice
            enabled = true,
            -- Override path to file that executes colorscheme command
            path = vim.fn.stdpath("config") .. "/lua/colorscheme.lua"
          },
        },
      },
    })

    -- Load the fzf extension for Telescope
    telescope.load_extension("fzf")
    -- Load the themes extension for Telescope
    telescope.load_extension("themes")
  end,
}
